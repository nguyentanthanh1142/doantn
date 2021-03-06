package com.khoaluantotnghiep.controller.admin;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.khoaluantotnghiep.entity.NoteEntity;
import com.khoaluantotnghiep.entity.UserEntity;
import com.khoaluantotnghiep.service.impl.ContactServiceImpl;
import com.khoaluantotnghiep.service.impl.NoteServiceImpl;
import com.khoaluantotnghiep.service.impl.PaginatesServiceImpl;

@Controller(value = "contactControllerOfAdmin")
public class ContactController extends BaseController {
	@Autowired
	ContactServiceImpl contactService;
	@Autowired
	PaginatesServiceImpl paginateService;
	@Autowired
	NoteServiceImpl noteService;
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
			HttpServletRequest request, HttpSession session) {
		try {
			UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
			contactService.onOffContact(id, loginInfo);
			redirectAttributes.addFlashAttribute("msg", "Thao t??c th??nh c??ng!");
			// them note ????? qu???n l??
			NoteEntity noteEntity = new NoteEntity();
			noteEntity.setContent("Admin ???? thay ?????i tr???ng th??i li??n h??? " + id);
			noteEntity.setCreated_at(new Date());
			noteEntity.setCreated_by(loginInfo.getUser_id());
			noteService.addNote(noteEntity);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao t??c kh??ng th??nh c??ng!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@GetMapping("/quan-tri/lien-he/delete/{id}")
	public String delete(@PathVariable int id, HttpServletRequest request, final RedirectAttributes redirectAttributes,
			HttpSession session) {
		try {
			UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
			contactService.deleteContact(id);
			redirectAttributes.addFlashAttribute("msg", "X??a th??nh c??ng!");
			// them note ????? qu???n l??
			NoteEntity noteEntity = new NoteEntity();
			noteEntity.setContent("Admin ???? x??a v??nh vi???n li??n h??? " + id);
			noteEntity.setCreated_at(new Date());
			noteEntity.setCreated_by(loginInfo.getUser_id());
			noteService.addNote(noteEntity);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "X??a  kh??ng th??nh c??ng!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}
}
