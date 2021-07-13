package com.khoaluantotnghiep.controller.admin;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.khoaluantotnghiep.dto.PaginateDTO;
import com.khoaluantotnghiep.entity.SlideEntity;
import com.khoaluantotnghiep.entity.UserEntity;
import com.khoaluantotnghiep.service.impl.PaginatesServiceImpl;
import com.khoaluantotnghiep.service.impl.SlideServiceImpl;

@Controller(value = "slideControllerOfAdmin")
public class SlideController extends BaseController {
	@Autowired
	SlideServiceImpl slideService;
	@Autowired
	PaginatesServiceImpl paginateService;
	private int totalDataPage = 5;

	@RequestMapping(value = "/quan-tri/trinh-chieu", method = RequestMethod.GET)
	public ModelAndView Slide() {
		int totalData = slideService.findAllSlide().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("slidePaginate", slideService.GetDataSlidePaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/slide/slide");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/trinh-chieu/{currentPage}", method = RequestMethod.GET)
	public ModelAndView Slide(@PathVariable String currentPage) {
		int totalData = slideService.findAllSlide().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("slidePaginate", slideService.GetDataSlidePaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/slide/slide");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/trinh-chieu/add", method = RequestMethod.GET)
	public ModelAndView addSlide(@ModelAttribute("slide") SlideEntity slide) {
		_mvShare.setViewName("admin/slide/addslide");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/trinh-chieu/save", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String saveSlide(@ModelAttribute("slide") SlideEntity slide, HttpSession session, ModelMap modelMap,
			@RequestParam(value = "image", required = false) MultipartFile photo,
			final RedirectAttributes redirectAttributes) {
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		boolean check = true;
		if (slideService.isNameExists(slide.getSlide_caption())) {
			redirectAttributes.addFlashAttribute("msgName", "Tên trang trình chiếu đã tồn tại");
			check = false;
		}
		if (!check) {
			redirectAttributes.addFlashAttribute("oldvalue", slide);
			return "redirect:/quan-tri/trinh-chieu/add";
		}
		try {
			slide.setSlide_img(saveFile(photo));
			slide.setCreated_by(loginInfo.getUser_id());
			slide.setUpdated_by(loginInfo.getUser_id());
			slide.setCreated_at(new Date());
			slide.setUpdated_at(new Date());
			slideService.addSlide(slide);
			redirectAttributes.addFlashAttribute("msg", "Thêm trang trình chiếu thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thêm trang trình chiếu không thành công");
		}
		return "redirect:/quan-tri/trinh-chieu";
	}

	@RequestMapping(value = "/quan-tri/trinh-chieu/edit/{slide_id}", method = RequestMethod.GET)
	public ModelAndView editSlide(@ModelAttribute("slide") SlideEntity slide, @PathVariable int slide_id) {
		SlideEntity slideitem = slideService.findSlideById(slide);
		_mvShare.addObject("slideitem", slideitem);
		_mvShare.setViewName("admin/slide/editslide");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/trinh-chieu/thung-rac", method = RequestMethod.GET)
	public ModelAndView trashSlide() {
		int totalData = slideService.findTrashSlide().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("slideTrashPaginate",
				slideService.GetDataSlideTrashPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/slide/trashslide");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/trinh-chieu/thung-rac/{currentPage}", method = RequestMethod.GET)
	public ModelAndView trashSlide(@PathVariable String currentPage) {
		int totalData = slideService.findTrashSlide().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("slideTrashPaginate",
				slideService.GetDataSlideTrashPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/slide/trashslide");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/trinh-chieu/editsave", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String editsaveSlide(@ModelAttribute("slide") SlideEntity slide, HttpSession session, ModelMap modelMap,
			@RequestParam(value = "image", required = false) MultipartFile photo,
			final RedirectAttributes redirectAttributes) {
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		boolean check = true;
		if (slideService.isNameExists(slide.getSlide_caption(), slide.getSlide_id())) {
			redirectAttributes.addFlashAttribute("msgName", "Tên trang trình chiếu đã tồn tại");
			check = false;
		}
		if (!check) {
			redirectAttributes.addFlashAttribute("oldvalue", slide);
			return "redirect:/quan-tri/trinh-chieu/edit/" + slide.getSlide_id();
		}
		try {
			slide.setSlide_img(saveFile(photo));
			slide.setUpdated_at(new Date());
			slide.setUpdated_by(loginInfo.getUser_id());
			slideService.updateSlide(slide);
			redirectAttributes.addFlashAttribute("msg", "Cập nhật thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Cập nhật không thành công");
		}
		return "redirect:/quan-tri/trinh-chieu";
	}

	@RequestMapping(value = "/quan-tri/trinh-chieu/deleteslide/{id}", method = RequestMethod.GET)
	public String deleteSlide(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		try {
			slideService.deleteSlide(id);
			redirectAttributes.addFlashAttribute("msg", "Xóa thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Xóa không thành công");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/trinh-chieu/trash/{id}", method = RequestMethod.GET)
	public String delSlide(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		try {
			slideService.deltrash(id);
			redirectAttributes.addFlashAttribute("msg", "Thao tác thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/trinh-chieu/retrash/{id}", method = RequestMethod.GET)
	public String retrashSlide(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		try {
			slideService.retrash(id);
			redirectAttributes.addFlashAttribute("msg", "Thao tác thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/trinh-chieu/status/{id}", method = RequestMethod.GET)
	public String onOffSlide(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		try {
			slideService.onOffSlide(id);
			redirectAttributes.addFlashAttribute("msg", "Thao tác thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}
}
