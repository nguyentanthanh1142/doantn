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
import com.khoaluantotnghiep.entity.NoteEntity;
import com.khoaluantotnghiep.entity.SmartpayEntity;
import com.khoaluantotnghiep.entity.UserEntity;
import com.khoaluantotnghiep.service.impl.NoteServiceImpl;
import com.khoaluantotnghiep.service.impl.PaginatesServiceImpl;
import com.khoaluantotnghiep.service.impl.SmartpayServiceImpl;

@Controller
public class SmartpayController extends BaseController {
	@Autowired
	PaginatesServiceImpl paginateService;
	@Autowired
	SmartpayServiceImpl smartpayService;
	@Autowired
	NoteServiceImpl noteService;
	private int totalDataPage = 5;

	@RequestMapping(value = "/quan-tri/web/nha-thanh-toan", method = RequestMethod.GET)
	public ModelAndView Smarpay(ModelMap modelMap) {
		int totalData = smartpayService.findAllSmartpay().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("smartpayPaginate",
				smartpayService.GetDataSmartpayPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/smartpay/smartpay");
		return _mvShare;
	}

	@GetMapping("/quan-tri/web/nha-thanh-toan/{currentPage}")
	public ModelAndView Smarpay(@PathVariable String currentPage) {
		int totalData = smartpayService.findAllSmartpay().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("smartpayPaginate",
				smartpayService.GetDataSmartpayPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/smartpay/smartpay");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/web/nha-thanh-toan/add", method = RequestMethod.GET)
	public ModelAndView add(@ModelAttribute("smartpay") SmartpayEntity smartpay) {
		_mvShare.setViewName("admin/smartpay/addsmartpay");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/web/nha-thanh-toan/save", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String save(@ModelAttribute("smartpay") SmartpayEntity smartpay, HttpSession session, ModelMap modelMap,
			@RequestParam(value = "image", required = false) MultipartFile photo,
			final RedirectAttributes redirectAttributes) {
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		boolean check = true;
		if (smartpayService.isNameExists(smartpay.getName())) {
			redirectAttributes.addFlashAttribute("msgName", "Tên nhà thanh toán đã tồn tại");
			check = false;
		}
		if (!check) {
			redirectAttributes.addFlashAttribute("oldvalue", smartpay);
			return "redirect:/quan-tri/web/nha-thanh-toan/add";
		}
		try {
			smartpay.setImg(saveFile(photo));
			smartpay.setCreated_at(new Date());
			smartpay.setUpdated_at(new Date());
			smartpay.setCreated_by(loginInfo.getUser_id());
			smartpay.setUpdated_by(loginInfo.getUser_id());
			smartpayService.addSmartpay(smartpay);
			redirectAttributes.addFlashAttribute("msg", "Thêm thành công!");
			// them note để quản lý
			NoteEntity noteEntity = new NoteEntity();
			noteEntity.setContent("Admin đã thêm nhà thanh toán mới: " + smartpay.getName());
			noteEntity.setCreated_at(new Date());
			noteEntity.setCreated_by(loginInfo.getUser_id());
			noteService.addNote(noteEntity);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thêm không thành công!");
		}
		return "redirect:/quan-tri/web/nha-thanh-toan";
	}

	@RequestMapping(value = "/quan-tri/web/nha-thanh-toan/edit/{id}", method = RequestMethod.GET)
	public ModelAndView editSmarpay(@ModelAttribute("smartpay") SmartpayEntity smartpay, @PathVariable int id) {
		SmartpayEntity smartpayitem = smartpayService.findSmartpayById(smartpay);
		_mvShare.addObject("smartpayitem", smartpayitem);
		_mvShare.setViewName("admin/smartpay/editsmartpay");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/web/nha-thanh-toan/thung-rac", method = RequestMethod.GET)
	public ModelAndView trashSmarpay(@ModelAttribute("smartpay") SmartpayEntity smartpay) {
		int totalData = smartpayService.findTrashSmartpay().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("smartpayTrashPaginate",
				smartpayService.GetDataSmartpayTrashPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/smartpay/trashsmartpay");
		return _mvShare;
	}

	@GetMapping("/quan-tri/web/nha-thanh-toan/thung-rac/{currentPage}")
	public ModelAndView trashSmarpay(@PathVariable String currentPage,
			@ModelAttribute("smartpay") SmartpayEntity smartpay) {
		int totalData = smartpayService.findTrashSmartpay().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("smartpayTrashPaginate",
				smartpayService.GetDataSmartpayTrashPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/smartpay/trashsmartpay");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/web/nha-thanh-toan/editsave", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String editsaveSmarpay(@ModelAttribute("smartpay") SmartpayEntity smartpay, HttpSession session,
			ModelMap modelMap, @RequestParam(value = "image", required = false) MultipartFile photo,
			final RedirectAttributes redirectAttributes) {
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		boolean check = true;
		if (smartpayService.isNameExists(smartpay.getName(), smartpay.getId())) {
			redirectAttributes.addFlashAttribute("msgName", "Tên nhà thanh toán đã tồn tại");
			check = false;
		}
		if (!check) {
			redirectAttributes.addFlashAttribute("oldvalue", smartpay);
			return "redirect:/quan-tri/web/nha-thanh-toan/edit/" + smartpay.getId();
		}
		try {
			smartpay.setImg(saveFile(photo));
			smartpay.setUpdated_at(new Date());
			smartpay.setUpdated_by(loginInfo.getUser_id());
			smartpayService.updateSmartpay(smartpay);
			redirectAttributes.addFlashAttribute("msg", "Cập nhật thành công!");
			// them note để quản lý
			NoteEntity noteEntity = new NoteEntity();
			noteEntity.setContent("Admin đã thêm nhà thanh toán mới: " + smartpay.getName());
			noteEntity.setCreated_at(new Date());
			noteEntity.setCreated_by(loginInfo.getUser_id());
			noteService.addNote(noteEntity);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Cập nhật không thành công!");
		}
		return "redirect:/quan-tri/web/nha-thanh-toan";
	}

	@RequestMapping(value = "/quan-tri/web/nha-thanh-toan/delete/{id}", method = RequestMethod.GET)
	public String deleteSmarpay(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,
			HttpServletRequest request, HttpSession session) {
		try {
			UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
			smartpayService.deleteSmartpay(id);
			redirectAttributes.addFlashAttribute("msg", "Xóa thành công!");
			// them note để quản lý
			NoteEntity noteEntity = new NoteEntity();
			noteEntity.setContent("Admin đã xóa vĩnh viễn nhà thanh toán mới: " + id);
			noteEntity.setCreated_at(new Date());
			noteEntity.setCreated_by(loginInfo.getUser_id());
			noteService.addNote(noteEntity);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Xóa không thành công!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/web/nha-thanh-toan/deltrash/{id}", method = RequestMethod.GET)
	public String delSmarpay(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,
			HttpServletRequest request, HttpSession session) {
		try {
			UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
			smartpayService.deltrashSmartpay(id, loginInfo);
			redirectAttributes.addFlashAttribute("msg", "Xóa vào thùng rác thành công!");
			// them note để quản lý
			NoteEntity noteEntity = new NoteEntity();
			noteEntity.setContent("Admin đã xóa tạm thời nhà thanh toán: " + id);
			noteEntity.setCreated_at(new Date());
			noteEntity.setCreated_by(loginInfo.getUser_id());
			noteService.addNote(noteEntity);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Xóa vào thùng rác không thành công!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/web/nha-thanh-toan/retrash/{id}", method = RequestMethod.GET)
	public String retrashSmarpay(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,
			HttpServletRequest request, HttpSession session) {
		try {
			UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
			smartpayService.retrashSmartpay(id, loginInfo);
			redirectAttributes.addFlashAttribute("msg", "Thao tác thành công!");
			// them note để quản lý
			NoteEntity noteEntity = new NoteEntity();
			noteEntity.setContent("Admin đã bỏ xóa tạm thời thêm nhà thanh toán: " + id);
			noteEntity.setCreated_at(new Date());
			noteEntity.setCreated_by(loginInfo.getUser_id());
			noteService.addNote(noteEntity);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/web/nha-thanh-toan/status/{id}", method = RequestMethod.GET)
	public String onOffSmarpay(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,
			HttpServletRequest request, HttpSession session) {
		try {
			UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
			smartpayService.onOffSmartpay(id, loginInfo);
			redirectAttributes.addFlashAttribute("msg", "Thao tác thành công!");
			// them note để quản lý
			NoteEntity noteEntity = new NoteEntity();
			noteEntity.setContent("Admin đã thay đổi trạng thái nhà thanh toán mới: " + id);
			noteEntity.setCreated_at(new Date());
			noteEntity.setCreated_by(loginInfo.getUser_id());
			noteService.addNote(noteEntity);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao tác không thành công!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}
}
