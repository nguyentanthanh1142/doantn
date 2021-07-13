package com.khoaluantotnghiep.controller.admin;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.khoaluantotnghiep.dto.PaginateDTO;
import com.khoaluantotnghiep.entity.ServiceEntity;
import com.khoaluantotnghiep.entity.UserEntity;
import com.khoaluantotnghiep.service.impl.PaginatesServiceImpl;
import com.khoaluantotnghiep.service.impl.ServiceServiceImpl;
import com.khoaluantotnghiep.service.impl.TopicServiceImpl;

@Controller(value = "serviceControllerOfAdmin")
public class ServiceController extends BaseController {
	@Autowired
	PaginatesServiceImpl paginateService;
	@Autowired
	TopicServiceImpl topicService;
	@Autowired
	ServiceServiceImpl serviceImpl;

	private int totalDataPage = 5;

	@GetMapping(value = "/quan-tri/dich-vu")
	public ModelAndView ViewService() {
		int totalData = serviceImpl.findAllService().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("servicePaginate",
				serviceImpl.GetDataServicePaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/service/service");
		return _mvShare;
	}

	@GetMapping(value = "/quan-tri/dich-vu/{currentPage}")
	public ModelAndView ViewService(@PathVariable String currentPage) {
		int totalData = serviceImpl.findAllService().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("servicePaginate",
				serviceImpl.GetDataServicePaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/service/service");
		return _mvShare;
	}

	@GetMapping(value = "/quan-tri/dich-vu/thung-rac")
	public ModelAndView ViewTrashService() {
		int totalData = serviceImpl.findTrashService().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("serviceTrashPaginate",
				serviceImpl.GetDataServiceTrashPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/service/trashservice");
		return _mvShare;
	}

	@GetMapping(value = "/quan-tri/dich-vu/thung-rac/{currentPage}")
	public ModelAndView ViewTrashService(@PathVariable String currentPage) {
		int totalData = serviceImpl.findTrashService().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("serviceTrashPaginate",
				serviceImpl.GetDataServiceTrashPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/service/trashservice");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/dich-vu/deltrash/{id}", method = RequestMethod.GET)
	public String delTrashPage(@PathVariable int id, final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		try {
			serviceImpl.delTrash(id);
			redirectAttributes.addFlashAttribute("msg", "Thao tác thành công!");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/dich-vu/retrash/{id}", method = RequestMethod.GET)
	public String reTrash(@PathVariable int id, final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		try {
			serviceImpl.reTrash(id);
			redirectAttributes.addFlashAttribute("msg", "Thao tác thành công!");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/dich-vu/delete/{id}", method = RequestMethod.GET)
	public String deleta(@PathVariable int id, final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		try {
			serviceImpl.delete(id);
			redirectAttributes.addFlashAttribute("msg", "Thao tác xóa thành công!");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác xóa không thành công!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/dich-vu/status/{id}", method = RequestMethod.GET)
	public String onOffPage(@PathVariable int id, final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		try {
			serviceImpl.onOff(id);
			redirectAttributes.addFlashAttribute("msg", "Thao tác thành công");

		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msg", "Không thành công");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/dich-vu/add", method = RequestMethod.GET)
	public ModelAndView addService(@ModelAttribute("service") ServiceEntity service) {
		_mvShare.setViewName("admin/service/addservice");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/dich-vu/save", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String saveService(HttpSession session, HttpServletRequest request,
			@ModelAttribute("service") ServiceEntity service,
			@RequestParam(value = "image", required = false) MultipartFile photo, ModelMap modelMap,
			final RedirectAttributes redirectAttributes) {
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		boolean check = true;
		if (serviceImpl.isNameExists(service.getName())) {
			redirectAttributes.addFlashAttribute("msgName", "Tên dịch vụ đã tồn tại");
			check = false;
		}
		if (!check) {
			redirectAttributes.addFlashAttribute("oldvalue", service);
			return "redirect:/quan-tri/dich-vu/add";
		}
		try {
			service.setImg(saveFile(photo));
			service.setCreated_at(new Date());
			service.setUpdated_at(new Date());
			service.setUpdated_by(loginInfo.getUser_id());
			service.setCreated_by(loginInfo.getUser_id());
			serviceImpl.add(service);
			redirectAttributes.addFlashAttribute("msg", "Thêm thành công!");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thêm không thành công");
		}
		return "redirect:/quan-tri/dich-vu";
	}

	@RequestMapping(value = "/quan-tri/dich-vu/edit/{id}", method = RequestMethod.GET)
	public ModelAndView editService(@ModelAttribute("service") ServiceEntity service, @PathVariable int id) {
		ServiceEntity serviceEntity = serviceImpl.findServiceById(id);
		_mvShare.addObject("serviceEntity", serviceEntity);
		_mvShare.setViewName("admin/service/editservice");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/dich-vu/editsave", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String editsaveService(HttpSession session, HttpServletRequest request,
			@ModelAttribute("service") ServiceEntity service, ModelMap modelMap,
			@RequestParam(value = "image", required = false) MultipartFile photo,
			final RedirectAttributes redirectAttributes) {
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		boolean check = true;
		if (serviceImpl.isNameExists(service.getName(), service.getId())) {
			redirectAttributes.addFlashAttribute("msgName", "Tên dịch vụ đã tồn tại");
			check = false;
		}
		if (!check) {
			redirectAttributes.addFlashAttribute("oldvalue", service);
			return "redirect:/quan-tri/dich-vu/edit/" + service.getId();
		}
		try {
			service.setImg(saveFile(photo));
			service.setUpdated_at(new Date());
			service.setUpdated_by(loginInfo.getUser_id());
			service.setMetadesc(request.getParameter("metadesc"));
			serviceImpl.update(service);
			redirectAttributes.addFlashAttribute("msg", "Cập nhật thành công");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Cập nhật Không thành công");
		}
		return "redirect:/quan-tri/dich-vu";
	}

}