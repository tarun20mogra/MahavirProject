package com.mahavir.MahavirProject.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.mahavir.MahavirProject.model.Holder;
import com.mahavir.MahavirProject.model.Item;
import com.mahavir.MahavirProject.model.User;
import com.mahavir.MahavirProject.service.LoginService;
import com.mahavir.MahavirProject.service.ReportService;

@Controller
@RequestMapping("/report.htm")
public class ReportController {
	@RequestMapping(method = RequestMethod.GET)
	protected String getMethod(Model model) {
		System.out.println("coming to the report post method");
		model.addAttribute("userBean", new User());
		return "report";
	}

	@RequestMapping(method = RequestMethod.POST)
	protected String populateReport(HttpServletRequest request, String choice) {
		String reportParam;
		ReportService service = new ReportService();
		if (request.getParameter("selectReport") != null)
			reportParam = request.getParameter("selectReport");
		else
			reportParam = choice;

		switch (reportParam) {
		case "1":
			ArrayList<Holder> holder = service.getHolderReport();
			request.setAttribute("holderList", holder);
			break;
		case "2":
			Item item = service.getItemReport();
			break;
		case "3":

			break;
		case "4":

			break;

		}

		return "report";
	}

	@RequestMapping(params = "saveItem", method = RequestMethod.POST)
	protected void updateHolder(HttpServletRequest request) {
		String holderId = request.getParameter("holderId");
		String holderName = request.getParameter("holderName");
		String holderPlace = request.getParameter("holderPlace");
		String holderContact = request.getParameter("holderContact");
		ReportService service = new ReportService();
		Holder holder = new Holder();
		holder.setId(Integer.parseInt(holderId));
		holder.setName(holderName);
		holder.setPlace(holderPlace);
		holder.setContact(holderContact);
		boolean result = service.updateHolder(holder);
		if (result) {
			System.out.println(result);
			request.setAttribute("success", "Successfully updated");
		}
		else {
			request.setAttribute("Error", "Not updated");

		}

		request.setAttribute("selectReport", "1");
		String choice = "1";
		populateReport(request, choice);

	}

}
