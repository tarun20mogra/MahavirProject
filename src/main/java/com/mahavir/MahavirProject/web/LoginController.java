package com.mahavir.MahavirProject.web;

import com.mahavir.MahavirProject.model.User;
import com.mahavir.MahavirProject.service.LoginService;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@RequestMapping("/login.htm")
@SessionAttributes("userBean")
public class LoginController {
	

	

	@RequestMapping(method = RequestMethod.POST)
	protected String loginUser(@ModelAttribute("userBean") User userBean, BindingResult bindingResult,
		SessionStatus status, HttpServletRequest request) {
		LoginService service = new LoginService();
		System.out.println("inside post");
		System.out.println("username is"+userBean.getUsername());
		boolean result = service.authenticate(userBean.getUsername(),userBean.getPassword());
		if(result) {
			return "redirect:home.htm";
		}
	
		return "login";
		}
	
	@RequestMapping(method = RequestMethod.GET)
	protected String getMethod(Model model) {
		model.addAttribute("userBean", new User());
		return "login";
	}
	
	
}
