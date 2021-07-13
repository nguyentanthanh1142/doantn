package com.khoaluantotnghiep.controller.admin;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.khoaluantotnghiep.dto.PaginateDTO;
import com.khoaluantotnghiep.entity.MenuEntity;
import com.khoaluantotnghiep.entity.UserEntity;
import com.khoaluantotnghiep.service.impl.MenuServiceImpl;
import com.khoaluantotnghiep.service.impl.PaginatesServiceImpl;

@Controller(value = "menuControllerOfAdmin")
public class MenuController extends BaseController {

	@Autowired
	MenuServiceImpl menuService;
	@Autowired
	PaginatesServiceImpl paginateService;

	private int totalDataPage = 5;

	@GetMapping(value = "/quan-tri/menu")
	public ModelAndView viewMenu() {

		int totalData = menuService.findAllMenu().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("menuPaginate", menuService.GetDataMenuPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/menu/menu");
		return _mvShare;
	}

	@GetMapping(value = "/quan-tri/menu/{currentPage}")
	public ModelAndView viewMenu(@PathVariable String currentPage) {
		int totalData = menuService.findAllMenu().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("menuPaginate", menuService.GetDataMenuPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/menu/menu");
		return _mvShare;
	}

	@GetMapping(value = "/quan-tri/menu/add")
	public ModelAndView viewAdd(@ModelAttribute("menu") MenuEntity menu) {
		_mvShare.addObject("listmenu", menuService.findAllMenu());
		_mvShare.setViewName("admin/menu/addmenu");
		return _mvShare;
	}

	@PostMapping(value = "/quan-tri/menu/save", produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String saveMenu(HttpSession session, HttpServletRequest request, @ModelAttribute("menu") MenuEntity menu,
			ModelMap modelMap, final RedirectAttributes redirectAttributes) {
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		boolean check = true;
		if (menuService.isNameExists(menu.getMenu_name())) {
			redirectAttributes.addFlashAttribute("msgName", "Tiêu đề đã tồn tại");
			check = false;
		}
		if (menuService.isSlugExists(menu.getMenu_slug())) {
			redirectAttributes.addFlashAttribute("msgSlug", "Slug đã tồn tại");
			check = false;
		}
		if (!check) {
			redirectAttributes.addFlashAttribute("oldvalue", menu);
			return "redirect:/quan-tri/menu/add";
		}
		try {
			menu.setOrders(menu.getOrders() + 1);
			menu.setCreated_at(new Date());
			menu.setUpdated_at(new Date());
			menu.setUpdated_by(loginInfo.getUser_id());
			menu.setCreated_by(loginInfo.getUser_id());
			menuService.addMenu(menu);
			redirectAttributes.addFlashAttribute("msg", "Thêm thành công!");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thêm không thành công");
		}
		return "redirect:/quan-tri/menu";
	}

	@RequestMapping(value = "/quan-tri/menu/edit/{menu_id}", method = RequestMethod.GET)
	public ModelAndView editMenu(@ModelAttribute("menu") MenuEntity menu, @PathVariable int menu_id) {
		MenuEntity menuitem = menuService.findMenuById(menu_id);
		_mvShare.addObject("menuitem", menuitem);
		_mvShare.addObject("listmenu", menuService.findAllMenu());
		_mvShare.setViewName("admin/menu/editmenu");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/menu/editsave", method = RequestMethod.POST)
	public String editsaveOption(HttpServletRequest request, HttpSession session,
			@ModelAttribute("menu") MenuEntity menu, ModelMap modelMap, final RedirectAttributes redirectAttributes) {
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		boolean check = true;
		if (menuService.isNameExists(menu.getMenu_name(),menu.getMenu_id())) {
			redirectAttributes.addFlashAttribute("msgName", "Tiêu đề đã tồn tại");
			check = false;
		}
		if (menuService.isSlugExists(menu.getMenu_slug(),menu.getMenu_id())) {
			redirectAttributes.addFlashAttribute("msgSlug", "Slug đã tồn tại");
			check = false;
		}
		if (!check) {
			redirectAttributes.addFlashAttribute("oldvalue", menu);
			return "redirect:/quan-tri/menu/edit/" + menu.getMenu_id();
		}
		try {
			menu.setUpdated_at(new Date());
			menu.setUpdated_by(loginInfo.getUser_id());
			menuService.updateMenu(menu);
			redirectAttributes.addFlashAttribute("msg", "Cập nhật thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Cập nhật không thành công");
		}
		return "redirect:/quan-tri/menu";
	}
	@GetMapping(value = "/quan-tri/menu/delete/{id}")
	public String deleteoptionGroup(@PathVariable int id, ModelMap modelMap,
			final RedirectAttributes redirectAttributes, HttpServletRequest request) {
		try {
			menuService.deleteMenu(id);
			redirectAttributes.addFlashAttribute("msg", "Xóa thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Xóa không thành công");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@GetMapping(value = "/quan-tri/menu/trash/{id}")
	public String deltrashoptionGroup(@PathVariable int id, ModelMap modelMap,
			final RedirectAttributes redirectAttributes, HttpServletRequest request) {
		try {
			menuService.delTrash(id);
			redirectAttributes.addFlashAttribute("msg", "Thao tác thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@GetMapping(value = "/quan-tri/menu/retrash/{id}")
	public String retrashoptionGroup(@PathVariable int id, ModelMap modelMap,
			final RedirectAttributes redirectAttributes, HttpServletRequest request) {
		try {
			menuService.reTrash(id);
			redirectAttributes.addFlashAttribute("msg", "Thao tác thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@GetMapping(value = "/quan-tri/menu/status/{id}")
	public String onOffoptionGroup(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		try {
			menuService.onOffMenu(id);
			redirectAttributes.addFlashAttribute("msg", "Thao tác thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}
	@GetMapping("/quan-tri/menu/thung-rac")
	public ModelAndView optionTrash() {
		int totalData = menuService.findTrashMenu().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("menuTrashPaginate",
				menuService.GetDataMenuTrashPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/menu/trashmenu");
		return _mvShare;
	}

	@GetMapping("/quan-tri/menu/thung-rac/{currentPage}")
	public ModelAndView optionTrash(@PathVariable String currentPage) {
		int totalData = menuService.findTrashMenu().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("menuTrashPaginate",
				menuService.GetDataMenuTrashPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/menu/trashmenu");
		return _mvShare;
	}
	@RequestMapping(value = "/quan-tri/menu/parent/{parent_id}", method = RequestMethod.GET)
	public @ResponseBody List<MenuEntity> listMenuByParent(@PathVariable int parent_id) {
	    return menuService.listMenuByParent(parent_id);
	}
}
