package com.mahavir.MahavirProject.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mahavir.MahavirProject.model.User;
@Controller
@RequestMapping("/home.htm")
public class HomeController {
	
	@RequestMapping(params="dataentry", method=RequestMethod.POST)
	protected String dataentry() {
		System.out.println("coming to the data entry post method");
		return "redirect:dataentry.htm";
	}
	
	@RequestMapping(params="report", method=RequestMethod.POST)
	protected String report() {

		return "redirect:report.htm";
	}

	@RequestMapping(method = RequestMethod.GET)
	protected String getMethod(Model model) {
		model.addAttribute("userBean", new User());
		return "home";
	}
	
	
	
}
