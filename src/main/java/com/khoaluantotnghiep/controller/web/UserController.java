package com.khoaluantotnghiep.controller.web;

import java.util.Date;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.khoaluantotnghiep.dto.PaginateDTO;
import com.khoaluantotnghiep.entity.BilldetailEntity;
import com.khoaluantotnghiep.entity.BillsEntity;
import com.khoaluantotnghiep.entity.CouponEntity;
import com.khoaluantotnghiep.entity.NoteEntity;
import com.khoaluantotnghiep.entity.UserEntity;
import com.khoaluantotnghiep.service.impl.AccountServiceImpl;
import com.khoaluantotnghiep.service.impl.BillsServiceImpl;
import com.khoaluantotnghiep.service.impl.CouponServiceImpl;
import com.khoaluantotnghiep.service.impl.PaginatesServiceImpl;
import com.khoaluantotnghiep.service.impl.RoleServiceImpl;
import com.khoaluantotnghiep.ultis.VerifyUtils;

@Controller(value = "userControllerOfWeb")
public class UserController extends BaseController {
	@Autowired
	BillsServiceImpl billsService;
	@Autowired
	AccountServiceImpl accountSerice;
	@Autowired
	public JavaMailSender emailSender;
	@Autowired
	PaginatesServiceImpl paginateService;
	@Autowired
	RoleServiceImpl roleService;
	@Autowired
	CouponServiceImpl couponService;
	private int totalProductPage = 4;

	@RequestMapping(value = { "/dang-ky", "/dang-nhap" }, method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request, @ModelAttribute("user") UserEntity user,
			@RequestParam(value = "error", required = false) final String error,
			@RequestParam(value = "error2", required = false) final String error2,
			@RequestParam(value = "error3", required = false) final String error3, final Model model) {
		if (error != null) {
			model.addAttribute("message", "????ng nh???p th???t b???i!");
		}
		if (error2 != null) {
			model.addAttribute("msg", "B???n kh??ng ????? quy???n truy c???p!");
		}
		if (error3 != null) {
			model.addAttribute("message", "B???n ch??a ????ng nh???p!");
		}
		ModelAndView mav = new ModelAndView("web/user/login");
		String restOfTheUrl = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
		if (restOfTheUrl.equals("/dang-ky")) {
			mav.addObject("regis", 1);
		}
		return mav;
	}

	@RequestMapping(value = "/dang-ky", method = RequestMethod.POST)
	public String TaoTaiKhoan(@ModelAttribute("user") UserEntity user, final RedirectAttributes redirectAttributes) {
		if (accountSerice.findUserName(user) == null) {
			if (accountSerice.findAccountEmail(user) == null) {
				int count = accountSerice.AddAccount(user);
				if (count > 0) {
					redirectAttributes.addFlashAttribute("msgsuccess", "????ng k?? t??i kho???n th??nh c??ng!");
					return "redirect:/dang-nhap";
				} else {
					redirectAttributes.addFlashAttribute("msgfail", "????ng k?? t??i kho???n th???t b???i!");
				}
			} else {
				redirectAttributes.addFlashAttribute("msgfail", "Email ????ng k?? ???? t???n t???i!");
			}
		} else {
			redirectAttributes.addFlashAttribute("msgfail", "T??i kho???n ???? t???n t???i!");
		}
		return "redirect:/dang-ky";
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.POST)
	public ModelAndView Dangnhap(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@ModelAttribute("user") UserEntity user,
			@RequestParam(value = "error", required = false) final String error) {
		user = accountSerice.CheckAccount(user);
		if (user != null) {
			if (user.getRole().equals("ROLE_ADMIN")) {
				if (request.getParameter("remember") != null) {
					Cookie ckUsername = new Cookie("username", user.getUsername());
					ckUsername.setMaxAge(3600 * 24);
					response.addCookie(ckUsername);
					Cookie ckPassword = new Cookie("password", user.getPassword());
					ckPassword.setMaxAge(3600 * 24);
					response.addCookie(ckPassword);
				} else {
					for (Cookie ck : request.getCookies()) {
						if (ck.getName().equalsIgnoreCase("username")) {
							ck.setMaxAge(0);
							response.addCookie(ck);
						}
						if (ck.getName().equalsIgnoreCase("password")) {
							ck.setMaxAge(0);
							response.addCookie(ck);
						}
					}
				}
				user.setRoleEntity(roleService.findRoleById(user.getRole2()));
				_mvShare.setViewName("redirect:quan-tri");
				session.setAttribute("LoginInfo", user);
			} else if (user.getRole().equals("ROLE_USER")) {
				if (request.getParameter("remember") != null) {
					Cookie ckUsername = new Cookie("username", user.getUsername());
					ckUsername.setMaxAge(3600 * 24);
					response.addCookie(ckUsername);
					Cookie ckPassword = new Cookie("password", user.getPassword());
					ckPassword.setMaxAge(3600 * 24);
					response.addCookie(ckPassword);
				} else {
					for (Cookie ck : request.getCookies()) {
						if (ck.getName().equalsIgnoreCase("username")) {
							ck.setMaxAge(0);
							response.addCookie(ck);
						}
						if (ck.getName().equalsIgnoreCase("password")) {
							ck.setMaxAge(0);
							response.addCookie(ck);
						}
					}
				}
				_mvShare.setViewName("redirect:trang-chu");
				session.setAttribute("LoginInfo", user);
			}
		} else {
			_mvShare.setViewName("redirect:dang-nhap");
			_mvShare.addObject("error", "????ng nh???p th???t b???i!");
		}
		return _mvShare;
	}

	@RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		session.removeAttribute("LoginInfo");
		return new ModelAndView("redirect:/trang-chu");
	}

	@RequestMapping(value = "/quen-mat-khau", method = RequestMethod.GET)
	public ModelAndView ForgetPass() {
		_mvShare.setViewName("web/user/forgetpass");
		return _mvShare;
	}

	@RequestMapping(value = "/quen-mat-khau", method = RequestMethod.POST)
	public ModelAndView ForgetPassPost(@ModelAttribute("user") UserEntity user, HttpServletRequest request,
			HttpServletResponse response, final RedirectAttributes redirectAttributes) {
		boolean valid = false;
		String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
		valid = VerifyUtils.verify(gRecaptchaResponse);
		String uri = request.getRequestURI();
		// uri = "/context/someAction"
		String url = request.getRequestURL().toString();
		// url = "http://server.name:8080/context/someAction"
		String ctxPath = request.getContextPath();
		// ctxPath = "/context";
		url = url.replaceFirst(uri, "");
		// url = "http://server.name:8080"
		url = url + ctxPath;
		// url = "http://server.name:8080/context"
		System.out.println(valid);
		UserEntity userEntity = accountSerice.findAccountEmail(user);
		if (valid == true) {
			if (accountSerice.findAccountEmail(user) != null) {
				try {
					MimeMessage message = emailSender.createMimeMessage();
					boolean multipart = true;
					MimeMessageHelper helper = new MimeMessageHelper(message, multipart, "utf-8");
					String token = userEntity.getReset_password_token();
					String link = url + "/doi-mat-khau?token=" + token + "";
					String htmlMsg = "<p>Xin ch??o,</p>" + "<p>B???n ???? y??u c???u ?????t l???i m???t kh???u c???a m??nh.</p>"
							+ "<p>Nh???p v??o li??n k???t b??n d?????i ????? thay ?????i m???t kh???u c???a b???n:</p>" + "<p><a href=\"" + link
							+ "\">Thay ?????i m???t kh???u</a></p>" + "<br>"
							+ "<p>B??? qua email n??y n???u b???n nh??? m???t kh???u c???a m??nh, "
							+ "ho???c kh??ng ph???i b???n th???c hi???n y??u c???u.</p>";
					message.setContent(htmlMsg, "text/html; charset=UTF-8");
					helper.setTo(user.getUser_email());
					helper.setSubject("????y l?? li??n k???t ?????t l???i m???t kh???u");
					this.emailSender.send(message);
				} catch (Exception e) {

				}
				redirectAttributes.addFlashAttribute("msg", "Password m???i ???? ???????c g???i ?????n gmail c???a b???n!");
				return new ModelAndView("redirect:/trang-chu");

			} else {
				redirectAttributes.addFlashAttribute("msg", "Email kh??ng t???n t???i!");
				return new ModelAndView("redirect:/trang-chu");
			}
		} else {
			redirectAttributes.addFlashAttribute("msg", "H??y x??c nh???n captcha!");
			return new ModelAndView("redirect:/quen-mat-khau");
		}
	}

	@GetMapping("/doi-mat-khau")
	public String showResetPasswordForm(@RequestParam(value = "token") String token, Model model) {
		UserEntity user = accountSerice.findByResetPasswordToken(token);
		model.addAttribute("token", token);
		if (user == null) {
			model.addAttribute("message", "Invalid Token");
			return "message";
		}
		return "web/user/resetpass";
	}

	@PostMapping("/doi-mat-khau")
	public String processResetPassword(HttpServletRequest request, Model model) {
		String token = request.getParameter("token");
		String password = request.getParameter("password");
		UserEntity user = accountSerice.findByResetPasswordToken(token);
		if (user == null) {
			model.addAttribute("message", "Token kh??ng h???p l???");
			return "web/user/message";
		} else {
			accountSerice.updatePassword(user, password);
			model.addAttribute("message", "You have successfully changed your password.");
		}
		return "web/user/message";
	}

	@GetMapping("/tai-khoan")
	public ModelAndView showDetailUser(HttpSession session) {
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		if (loginInfo == null) {
			_mvShare.setViewName("redirect:/dang-nhap");
			_mvShare.addObject("error3", "B???n ch??a ????ng nh???p!");
			return _mvShare;
		}
		_mvShare.setViewName("web/user/userview");
		return _mvShare;
	}

	@GetMapping("/tai-khoan/don-hang")
	public ModelAndView showOrderUser(HttpSession session) {
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		if (loginInfo == null) {
			_mvShare.setViewName("redirect:/dang-nhap");
			_mvShare.addObject("error3", "B???n ch??a ????ng nh???p!");
			return _mvShare;
		}

		int totalData = billsService.findBillsByEmail(loginInfo.getUser_email()).size();
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("billUserPaginate", billsService.GetDataBillByEmailPaginate(paginateInfo.getStart(),
				totalProductPage, loginInfo.getUser_email()));
		_mvShare.setViewName("web/user/userorder");
		return _mvShare;
	}

	@GetMapping("/tai-khoan/don-hang/{currentPage}")
	public ModelAndView showOrderUserPage(HttpSession session, @PathVariable String currentPage) {
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		if (loginInfo == null) {
			_mvShare.setViewName("redirect:/dang-nhap");
			_mvShare.addObject("error3", "B???n ch??a ????ng nh???p!");
			return _mvShare;
		}

		int totalData = billsService.findBillsByEmail(loginInfo.getUser_email()).size();
		int availPage = (totalData + totalProductPage - 1) / totalProductPage;
		if (Integer.parseInt(currentPage) > availPage) {
			currentPage = availPage + "";
			return new ModelAndView("redirect:/tai-khoan/don-hang/" + currentPage);
		}
		PaginateDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("totalData", totalData);
		_mvShare.addObject("billUserPaginate", billsService.GetDataBillByEmailPaginate(paginateInfo.getStart(),
				totalProductPage, loginInfo.getUser_email()));
		_mvShare.setViewName("web/user/userorder");
		return _mvShare;
	}

	@GetMapping("/tai-khoan/doi-mat-khau")
	public ModelAndView ChangePassUser(HttpSession session) {
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		if (loginInfo == null) {
			_mvShare.setViewName("redirect:/dang-nhap");
			_mvShare.addObject("error3", "B???n ch??a ????ng nh???p!");
			return _mvShare;
		}
		_mvShare.setViewName("web/user/userchangepass");
		return _mvShare;
	}

	@GetMapping("/tai-khoan/doi-phone")
	public ModelAndView doiPhone(HttpSession session) {
		UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
		if (loginInfo == null) {
			_mvShare.setViewName("redirect:/dang-nhap");
			_mvShare.addObject("error3", "B???n ch??a ????ng nh???p!");
			return _mvShare;
		}
		_mvShare.setViewName("web/user/userchangephone");
		return _mvShare;
	}

	@PostMapping(value = "/tai-khoan/doi-mat-khau")
	public String changePassword(HttpSession session, final RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		String newpassword = request.getParameter("newpassword");
		String oldpassword = request.getParameter("password");

		if (accountSerice.comparePasswords(session, oldpassword)) {
			try {
				accountSerice.changePassword(session, newpassword);
				redirectAttributes.addFlashAttribute("msg", "?????i m???t kh???u th??nh c??ng");
			} catch (Exception e) {
				redirectAttributes.addFlashAttribute("msgfail", "C?? l???i x???y ra khi thay ?????i");
			}
		} else {
			redirectAttributes.addFlashAttribute("msgfail", "Sai m???t kh???u");
		}
		return "redirect:/tai-khoan/doi-mat-khau";
	}

	@GetMapping("/tai-khoan/don-hang/chi-tiet-don-hang/{id}")
	public ModelAndView viewdetailBill(@PathVariable int id) {
		BillsEntity billitem = billsService.findBillById(id);
		List<BilldetailEntity> billdetail = billsService.getBillsDetail(id);
		double total = 0;
		for (BilldetailEntity it : billdetail) {
			total += it.getTotal();
		}
		CouponEntity couponEntity = couponService.findCouponById(billitem.getCoupon_id());
		_mvShare.addObject("couponEntity", couponEntity);
		_mvShare.addObject("bill", billitem);
		_mvShare.addObject("billdetail", billdetail);
		_mvShare.addObject("total", total);
		_mvShare.setViewName("web/user/userorderdetail");
		return _mvShare;
	}

	@GetMapping("/tai-khoan/don-hang/cancel/{id}")
	public String cancellBill(@PathVariable int id, HttpSession session,
			final RedirectAttributes redirectAttributes) {
		try {
			UserEntity loginInfo = (UserEntity) session.getAttribute("LoginInfo");
			billsService.cancelBillforUser(id, loginInfo);
			redirectAttributes.addFlashAttribute("msg", "Thao t??c th??nh c??ng");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msg", "Kh??ng th??nh c??ng");
		}
		return "redirect:/tai-khoan/don-hang/chi-tiet-don-hang/" +  id;
	}
}
