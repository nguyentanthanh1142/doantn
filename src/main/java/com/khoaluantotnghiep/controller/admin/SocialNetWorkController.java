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
import com.khoaluantotnghiep.entity.SocialNetWorkEntity;
import com.khoaluantotnghiep.entity.UserEntity;
import com.khoaluantotnghiep.service.impl.NoteServiceImpl;
import com.khoaluantotnghiep.service.impl.PaginatesServiceImpl;
import com.khoaluantotnghiep.service.impl.SocialNetWorkServiceImpl;

@Controller
public class SocialNetWorkController extends BaseController {
	@Autowired
	PaginatesServiceImpl paginateService;
	@Autowired
	SocialNetWorkServiceImpl socialNetWorkService;
	@Autowired
	NoteServiceImpl noteService;
	private int totalDataPage = 5;

	@RequestMapping(value = "/quan-tri/web/mang-xa-hoi", method = RequestMethod.GET)
	public ModelAndView Smarpay(ModelMap modelMap) {
		int totalData = socialNetWorkService.findAllSocialNetWork().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("socialnetworkPaginate",
				socialNetWorkService.GetDataSocialNetWorkPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/socialnetwork/socialnetwork");
		return _mvShare;
	}

	@GetMapping("/quan-tri/web/mang-xa-hoi/{currentPage}")
	public ModelAndView Smarpay(@PathVariable String currentPage) {
		int totalData = socialNetWorkService.findAllSocialNetWork().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("socialnetworkPaginate",
				socialNetWorkService.GetDataSocialNetWorkPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/socialnetwork/socialnetwork");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/web/mang-xa-hoi/add", method = RequestMethod.GET)
	public ModelAndView add(@ModelAttribute("socialnetwork") SocialNetWorkEntity socialnetwork) {
		_mvShare.setViewName("admin/socialnetwork/addsocialnetwork");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/web/mang-xa-hoi/save", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String save(@ModelAttribute("socialnetwork") SocialNetWorkEntity socialnetwork, HttpSession session,
			ModelMap modelMap, @RequestParam(value = "image", required = false) MultipartFile photo,
			final RedirectAttributes redirectAttributes) {
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		boolean check = true;
		if (socialNetWorkService.isNameExists(socialnetwork.getName())) {
			redirectAttributes.addFlashAttribute("msgName", "T??n nh?? thanh to??n ???? t???n t???i");
			check = false;
		}
		if (!check) {
			redirectAttributes.addFlashAttribute("oldvalue", socialnetwork);
			return "redirect:/quan-tri/web/mang-xa-hoi/add";
		}
		try {
			socialnetwork.setImg(saveFile(photo));
			socialnetwork.setCreated_at(new Date());
			socialnetwork.setUpdated_at(new Date());
			socialnetwork.setCreated_by(loginInfo.getUser_id());
			socialnetwork.setUpdated_by(loginInfo.getUser_id());
			socialNetWorkService.addSocialNetWork(socialnetwork);
			redirectAttributes.addFlashAttribute("msg", "Th??m th??nh c??ng!");
			// them note ????? qu???n l??
			NoteEntity noteEntity = new NoteEntity();
			noteEntity.setContent("Admin ???? th??m m???ng x?? h???i m???i: " + socialnetwork.getName());
			noteEntity.setCreated_at(new Date());
			noteEntity.setCreated_by(loginInfo.getUser_id());
			noteService.addNote(noteEntity);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Th??m kh??ng th??nh c??ng!");
		}
		return "redirect:/quan-tri/web/mang-xa-hoi";
	}

	@RequestMapping(value = "/quan-tri/web/mang-xa-hoi/edit/{id}", method = RequestMethod.GET)
	public ModelAndView editSmarpay(@ModelAttribute("socialnetwork") SocialNetWorkEntity socialnetwork,
			@PathVariable int id) {
		SocialNetWorkEntity socialnetworkitem = socialNetWorkService.findSocialNetWorkById(socialnetwork);
		_mvShare.addObject("socialnetworkitem", socialnetworkitem);
		_mvShare.setViewName("admin/socialnetwork/editsocialnetwork");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/web/mang-xa-hoi/thung-rac", method = RequestMethod.GET)
	public ModelAndView trashSmarpay(@ModelAttribute("socialnetwork") SocialNetWorkEntity socialnetwork) {
		int totalData = socialNetWorkService.findTrashSocialNetWork().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("socialnetworkTrashPaginate",
				socialNetWorkService.GetDataSocialNetWorkTrashPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/socialnetwork/trashsocialnetwork");
		return _mvShare;
	}

	@GetMapping("/quan-tri/web/mang-xa-hoi/thung-rac/{currentPage}")
	public ModelAndView trashSmarpay(@PathVariable String currentPage,
			@ModelAttribute("socialnetwork") SocialNetWorkEntity socialnetwork) {
		int totalData = socialNetWorkService.findTrashSocialNetWork().size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalDataPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("socialnetworkTrashPaginate",
				socialNetWorkService.GetDataSocialNetWorkTrashPaginate(paginateInfo.getStart(), totalDataPage));
		_mvShare.setViewName("admin/socialnetwork/trashsocialnetwork");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-tri/web/mang-xa-hoi/editsave", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String editsaveSmarpay(@ModelAttribute("socialnetwork") SocialNetWorkEntity socialnetwork,
			HttpSession session, ModelMap modelMap,
			@RequestParam(value = "image", required = false) MultipartFile photo,
			final RedirectAttributes redirectAttributes) {
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		boolean check = true;
		if (socialNetWorkService.isNameExists(socialnetwork.getName(), socialnetwork.getId())) {
			redirectAttributes.addFlashAttribute("msgName", "T??n nh?? thanh to??n ???? t???n t???i");
			check = false;
		}
		if (!check) {
			redirectAttributes.addFlashAttribute("oldvalue", socialnetwork);
			return "redirect:/quan-tri/web/mang-xa-hoi/edit/" + socialnetwork.getId();
		}
		try {
			socialnetwork.setImg(saveFile(photo));
			socialnetwork.setUpdated_at(new Date());
			socialnetwork.setUpdated_by(loginInfo.getUser_id());
			socialNetWorkService.updateSocialNetWork(socialnetwork);
			redirectAttributes.addFlashAttribute("msg", "C???p nh???t th??nh c??ng!");
			// them note ????? qu???n l??
			NoteEntity noteEntity = new NoteEntity();
			noteEntity.setContent("Admin ???? ch???nh s???a m???ng x?? h???i: " + socialnetwork.getId());
			noteEntity.setCreated_at(new Date());
			noteEntity.setCreated_by(loginInfo.getUser_id());
			noteService.addNote(noteEntity);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "C???p nh???t kh??ng th??nh c??ng!");
		}
		return "redirect:/quan-tri/web/mang-xa-hoi";
	}

	@RequestMapping(value = "/quan-tri/web/mang-xa-hoi/delete/{id}", method = RequestMethod.GET)
	public String deleteSmarpay(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,
			HttpServletRequest request, HttpSession session) {
		try {
			UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
			socialNetWorkService.deleteSocialNetWork(id);
			redirectAttributes.addFlashAttribute("msg", "X??a th??nh c??ng!");
			// them note ????? qu???n l??
			NoteEntity noteEntity = new NoteEntity();
			noteEntity.setContent("Admin ???? x??a v??nh vi???n m???ng x?? h???i: " + id);
			noteEntity.setCreated_at(new Date());
			noteEntity.setCreated_by(loginInfo.getUser_id());
			noteService.addNote(noteEntity);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "X??a kh??ng th??nh c??ng!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/web/mang-xa-hoi/deltrash/{id}", method = RequestMethod.GET)
	public String delSmarpay(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,
			HttpServletRequest request, HttpSession session) {
		try {
			UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
			socialNetWorkService.deltrashSocialNetWork(id, loginInfo);
			redirectAttributes.addFlashAttribute("msg", "X??a v??o th??ng r??c th??nh c??ng!");
			// them note ????? qu???n l??
			NoteEntity noteEntity = new NoteEntity();
			noteEntity.setContent("Admin ???? x??a t???m th???i m???ng x?? h???i: " + id);
			noteEntity.setCreated_at(new Date());
			noteEntity.setCreated_by(loginInfo.getUser_id());
			noteService.addNote(noteEntity);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "X??a v??o th??ng r??c kh??ng th??nh c??ng!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/web/mang-xa-hoi/retrash/{id}", method = RequestMethod.GET)
	public String retrashSmarpay(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,
			HttpServletRequest request, HttpSession session) {
		try {
			UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
			socialNetWorkService.retrashSocialNetWork(id, loginInfo);
			redirectAttributes.addFlashAttribute("msg", "Thao t??c th??nh c??ng!");
			// them note ????? qu???n l??
			NoteEntity noteEntity = new NoteEntity();
			noteEntity.setContent("Admin ???? b??? x??a v??nh vi???n m???ng x?? h???i: " + id);
			noteEntity.setCreated_at(new Date());
			noteEntity.setCreated_by(loginInfo.getUser_id());
			noteService.addNote(noteEntity);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao t??c kh??ng th??nh c??ng!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "/quan-tri/web/mang-xa-hoi/status/{id}", method = RequestMethod.GET)
	public String onOffSmarpay(@PathVariable int id, ModelMap modelMap, final RedirectAttributes redirectAttributes,
			HttpServletRequest request, HttpSession session) {
		try {
			UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
			socialNetWorkService.onOffSocialNetWork(id, loginInfo);
			redirectAttributes.addFlashAttribute("msg", "Thao t??c th??nh c??ng!");
			// them note ????? qu???n l??
			NoteEntity noteEntity = new NoteEntity();
			noteEntity.setContent("Admin ???? thay ?????i tr???ng th??i m???ng x?? h???i: " + id);
			noteEntity.setCreated_at(new Date());
			noteEntity.setCreated_by(loginInfo.getUser_id());
			noteService.addNote(noteEntity);
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msgfail", "Thao t??c kh??ng th??nh c??ng!");
		}
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}
}
