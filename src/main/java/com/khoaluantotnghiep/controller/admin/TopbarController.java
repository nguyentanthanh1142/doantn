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
import com.khoaluantotnghiep.entity.TopbarEntity;
import com.khoaluantotnghiep.entity.UserEntity;
import com.khoaluantotnghiep.service.impl.PaginatesServiceImpl;
import com.khoaluantotnghiep.service.impl.TopbarServiceImpl;

@Controller(value = "topbarControllerOfAdmin")
public class TopbarController extends BaseController {

	@Autowired
	TopbarServiceImpl topbarService;
	@Autowired
	PaginatesServiceImpl paginateService;
	private int totalDataPage = 5;

	@RequestMapping(value = "/quan-tri/thanh-tren", method = RequestMethod.GET)
	public ModelAndView Topbar() {
		int totalData = topbarService.findAllTopbar().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("topbarPaginate",
				topbarService.GetDataTopbarPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/topbar/topbar");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/thanh-tren/{currentPage}", method = RequestMethod.GET)
	public ModelAndView Topbar(@PathVariable String currentPage) {
		int totalData = topbarService.findAllTopbar().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("topbarPaginate",
				topbarService.GetDataTopbarPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/topbar/topbar");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/thanh-tren/add", method = RequestMethod.GET)
	public ModelAndView addTopbar(@ModelAttribute("topbar") TopbarEntity topbar) {
		_mvShare.setViewName("admin/topbar/addtopbar");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/thanh-tren/save", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String saveTopbar(@ModelAttribute("topbar") TopbarEntity topbar, HttpSession session, ModelMap modelMap,
			@RequestParam(value = "image", required = false) MultipartFile photo,
			final RedirectAttributes redirectAttributes) {
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		boolean check = true;
		if (topbarService.isNameExists(topbar.getName())) {
			redirectAttributes.addFlashAttribute("msgName", "Tên thanh trên đã tồn tại");
			check = false;
		}
		if (!check) {
			redirectAttributes.addFlashAttribute("oldvalue", topbar);
			return "redirect:/quan-tri/thanh-tren/add";
		}
		try {
			topbar.setImg(saveFile(photo));
			topbar.setCreated_by(loginInfo.getUser_id());
			topbar.setUpdated_by(loginInfo.getUser_id());
			topbar.setCreated_at(new Date());
			topbar.setUpdated_at(new Date());
			topbarService.addTopbar(topbar);
			redirectAttributes.addFlashAttribute("msg", "Thêm thanh trên thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thêm thanh trên không thành công");
		}
		return "redirect:/quan-tri/thanh-tren";
	}

	@RequestMapping(value = "/quan-tri/thanh-tren/edit/{id}", method = RequestMethod.GET)
	public ModelAndView editTopbar(@ModelAttribute("topbar") TopbarEntity topbar, @PathVariable int id) {
		TopbarEntity topbaritem = topbarService.findTopbarrById(topbar);
		_mvShare.addObject("topbaritem", topbaritem);
		_mvShare.setViewName("admin/topbar/edittopbar");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/thanh-tren/thung-rac", method = RequestMethod.GET)
	public ModelAndView trashTopbar() {
		int totalData = topbarService.findTrashTopbar().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("topbarTrashPaginate",
				topbarService.GetDataTopbarTrashPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/topbar/trashtopbar");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/thanh-tren/thung-rac/{currentPage}", method = RequestMethod.GET)
	public ModelAndView trashTopbar(@PathVariable String currentPage) {
		int totalData = topbarService.findTrashTopbar().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("topbarTrashPaginate",
				topbarService.GetDataTopbarTrashPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/topbar/trashtopbar");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/thanh-tren/editsave", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String editsaveTopbar(@ModelAttribute("topbar") TopbarEntity topbar, HttpSession session, ModelMap modelMap,
			@RequestParam(value = "image", required = false) MultipartFile photo,
			final RedirectAttributes redirectAttributes) {
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		boolean check = true;
		if (topbarService.isNameExists(topbar.getName(), topbar.getId())) {
			redirectAttributes.addFlashAttribute("msgName", "Tên trang trình chiếu đã tồn tại");
			check = false;
		}
		if (!check) {
			redirectAttributes.addFlashAttribute("oldvalue", topbar);
			return "redirect:/quan-tri/thanh-tren/edit/" + topbar.getId();
		}
		try {
			topbar.setImg(saveFile(photo));
			topbar.setUpdated_at(new Date());
			topbar.setUpdated_by(loginInfo.getUser_id());
			topbarService.updateTopbar(topbar);
			redirectAttributes.addFlashAttribute("msg", "Cập nhật thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Cập nhật không thành công");
		}
		return "redirect:/quan-tri/thanh-tren";
	}

	@RequestMapping(value = "/quan-tri/thanh-tren/deleteslide/{id}", method = RequestMethod.GET)
	public String deleteTopbar(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,HttpServletRequest request) {
		try {
			topbarService.deleteTopbar(id);
			redirectAttributes.addFlashAttribute("msg", "Xóa thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Xóa không thành công");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/thanh-tren/trash/{id}", method = RequestMethod.GET)
	public String delTopbar(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,HttpServletRequest request) {
		try {
			topbarService.deltrash(id);
			redirectAttributes.addFlashAttribute("msg", "Thao tác thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/thanh-tren/retrash/{id}", method = RequestMethod.GET)
	public String retrashTopbar(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,HttpServletRequest request) {
		try {
			topbarService.retrash(id);
			redirectAttributes.addFlashAttribute("msg", "Thao tác thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/thanh-tren/status/{id}", method = RequestMethod.GET)
	public String onOffTopbar(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,HttpServletRequest request) {
		try {
			topbarService.onOffTopbar(id);
			redirectAttributes.addFlashAttribute("msg", "Thao tác thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

}