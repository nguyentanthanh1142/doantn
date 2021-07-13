package com.khoaluantotnghiep.controller.admin;

import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.khoaluantotnghiep.dto.PaginateDTO;
import com.khoaluantotnghiep.entity.CouponEntity;
import com.khoaluantotnghiep.entity.UserEntity;
import com.khoaluantotnghiep.service.impl.CouponServiceImpl;
import com.khoaluantotnghiep.service.impl.PaginatesServiceImpl;

@Controller(value = "couponControllerOfAdmin")
public class CouponController extends BaseController {
	@Autowired
	CouponServiceImpl couponService;
	@Autowired
	PaginatesServiceImpl paginateService;
	private int totalDataPage = 5;

	@RequestMapping(value = "/quan-tri/ma-khuyen-mai", method = RequestMethod.GET)
	public ModelAndView Coupon(ModelMap modelMap) {
		int totalData = couponService.findAllCoupon().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("couponPaginate",
				couponService.GetDataCouponPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/coupon/coupon");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/ma-khuyen-mai/{currentPage}", method = RequestMethod.GET)
	public ModelAndView Coupon(@PathVariable String currentPage, ModelMap modelMap) {
		int totalData = couponService.findAllCoupon().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("couponPaginate",
				couponService.GetDataCouponPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/coupon/coupon");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/ma-khuyen-mai/thung-rac", method = RequestMethod.GET)
	public ModelAndView trashCoupon(@ModelAttribute("topic") CouponEntity topic) {
		int totalData = couponService.findTrashCoupon().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("couponPaginate",
				couponService.GetDataCouponTrashPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/coupon/trashcoupon");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/ma-khuyen-mai/thung-rac/{currentPage}", method = RequestMethod.GET)
	public ModelAndView trashCoupon(@PathVariable String currentPage, @ModelAttribute("topic") CouponEntity topic) {
		int totalData = couponService.findTrashCoupon().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("couponPaginate",
				couponService.GetDataCouponTrashPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/coupon/trashcoupon");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/ma-khuyen-mai/add", method = RequestMethod.GET)
	public ModelAndView addCoupon(@ModelAttribute("coupon") CouponEntity coupon) {
		_mvShare.setViewName("admin/coupon/addcoupon");
		return _mvShare;
	}

	@InitBinder
	public void intDate(WebDataBinder dataBinder) {
		dataBinder.addCustomFormatter(new DateFormatter("yyyy-MM-dd"));
	}

	@PostMapping(value = "/quan-tri/ma-khuyen-mai/save", produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String saveCoupon(HttpSession session, HttpServletRequest request,
			@ModelAttribute("coupon") CouponEntity coupon, ModelMap modelMap,
			final RedirectAttributes redirectAttributes) {
		TimeZone.setDefault(TimeZone.getTimeZone("UTC"));
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		boolean check = true;
		if (couponService.isNameExists(coupon.getCode())) {
			redirectAttributes.addFlashAttribute("msgTitle", "Mã code đã tồn tại");
			check = false;
		}
		if (!check) {
			redirectAttributes.addFlashAttribute("oldvalue", coupon);
			return "redirect:/quan-tri/ma-khuyen-mai/add";
		}
		try {
			coupon.setCreated_at(new Date());
			coupon.setUpdated_at(new Date());
			coupon.setUpdated_by(loginInfo.getUser_id());
			coupon.setCreated_by(loginInfo.getUser_id());
			couponService.add(coupon);
			redirectAttributes.addFlashAttribute("msg", "Thêm thành công!");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thêm không thành công");
		}

		return "redirect:/quan-tri/ma-khuyen-mai";
	}

	@RequestMapping(value = "/quan-tri/ma-khuyen-mai/delete/{id}", method = RequestMethod.GET)
	public String deleteCoupon(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		try {
			couponService.delete(id);
			redirectAttributes.addFlashAttribute("msg", "Xóa thành công!");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/ma-khuyen-mai/trash/{topic_id}", method = RequestMethod.GET)
	public String delCoupon(@PathVariable int topic_id, ModelMap modelMap, final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		try {
			couponService.deltrash(topic_id);
			redirectAttributes.addFlashAttribute("msg", "Thao tácthành công!");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/ma-khuyen-mai/retrash/{topic_id}", method = RequestMethod.GET)
	public String retrashCoupon(@PathVariable int topic_id, ModelMap modelMap,
			final RedirectAttributes redirectAttributes, HttpServletRequest request) {
		try {
			couponService.retrash(topic_id);
			redirectAttributes.addFlashAttribute("msg", "Thao tác thành công!");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/ma-khuyen-mai/status/{topic_id}", method = RequestMethod.GET)
	public String onOffCoupon(@PathVariable int topic_id, ModelMap modelMap,
			final RedirectAttributes redirectAttributes, HttpServletRequest request) {
		try {
			couponService.onOffCoupon(topic_id);
			redirectAttributes.addFlashAttribute("msg", "Thao tác thành công!");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}
	
	
	@RequestMapping(value = "/quan-tri/ma-khuyen-mai/check/{coupon_code}", method = RequestMethod.GET)
	public @ResponseBody List<CouponEntity> findCouponByCode(@PathVariable String coupon_code) {
	    return couponService.findCouponByCode(coupon_code);
	}
}
