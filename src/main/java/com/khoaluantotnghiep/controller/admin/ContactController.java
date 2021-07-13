package com.khoaluantotnghiep.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.khoaluantotnghiep.dto.PaginateDTO;
import com.khoaluantotnghiep.service.impl.ContactServiceImpl;
import com.khoaluantotnghiep.service.impl.PaginatesServiceImpl;

@Controller(value = "contactControllerOfAdmin")
public class ContactController extends BaseController {
	@Autowired
	ContactServiceImpl contactService;
	@Autowired
	PaginatesServiceImpl paginateService;
	private int totalProductPage = 10;

	@RequestMapping(value = "/quan-tri/lien-he", method = RequestMethod.GET)
	public ModelAndView ContactAdmin() {

		int totalData = contactService.findAllContact().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("contactPaginate",
				contactService.GetDataContactsPaginate(paginateInfo.getStart(), totalProductPage));
		_mvShare.setViewName("admin/contact/contact");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/lien-he/{currentPage}", method = RequestMethod.GET)
	public ModelAndView ContactAdmin(@PathVariable String currentPage) {
		int totalData = contactService.findAllContact().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("contactPaginate",
				contactService.GetDataContactsPaginate(paginateInfo.getStart(), totalProductPage));
		_mvShare.setViewName("admin/contact/contact");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/lien-he/chi-tiet/{id}", method = RequestMethod.GET)
	public ModelAndView ContactDetailAdmin(@PathVariable int id) {
		_mvShare.addObject("itemcontact", contactService.findContactById(id));
		_mvShare.setViewName("admin/contact/contactdetail");
		return _mvShare;
	}

	@GetMapping(value = "/quan-tri/lien-he/status/{id}")
	public String onOffBanner(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		try {
			contactService.onOffContact(id);
			redirectAttributes.addFlashAttribute("msg", "Thao tác thành công!");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@GetMapping("/quan-tri/lien-he/delete/{id}")
	public String delete(@PathVariable int id, HttpServletRequest request,
			final RedirectAttributes redirectAttributes) {
		try {
			contactService.deleteContact(id);
			redirectAttributes.addFlashAttribute("msg", "Xóa thành công!");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Xóa  không thành công!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}
}
