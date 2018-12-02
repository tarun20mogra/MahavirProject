package com.mahavir.MahavirProject.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mahavir.MahavirProject.model.*;
import com.mahavir.MahavirProject.service.SetHolderService;
import com.mahavir.MahavirProject.service.SetItemService;

@Controller
@RequestMapping("/dataentry.htm")
public class DataEntryController {

	@RequestMapping(params = "saveHolder", method = RequestMethod.POST)
	protected String saveHolderDetails(HttpServletRequest request) {
		Holder holder = new Holder();
		SetHolderService service = new SetHolderService();
		int id = Integer.parseInt(request.getParameter("holderId"));
		String name = request.getParameter("holderName");
		String place = request.getParameter("holderPlace");
		String contact = request.getParameter("holderContact");

		holder.setId(id);
		holder.setName(name);
		holder.setPlace(place);
		holder.setContact(contact);

		boolean result = service.addHolder(holder);
		if (result) {
			request.setAttribute("Success", "Holder saved to database");
			return "dataentry";
		} else {
			request.setAttribute("Error", "Error Occured in saving Holder");
			return "dataentry";
		}

	}
	
	@RequestMapping(params = "saveItem", method = RequestMethod.POST)
	protected String saveItemDetails(HttpServletRequest request) {
		Item item = new Item();
		SetItemService service = new SetItemService();
		int id = Integer.parseInt(request.getParameter("ItemId"));
		String name = request.getParameter("ItemName");
		

		item.setId(id);
		item.setName(name);
		

		boolean result = service.addHolder(item);
		if (result) {
			request.setAttribute("Success", "Item saved to database");
			return "dataentry";
		} else {
			request.setAttribute("Error", "Error Occured in saving Item");
			return "dataentry";
		}

	}


	@RequestMapping(method = RequestMethod.GET)
	protected String getMethod(Model model) {
		model.addAttribute("userBean", new User());
		return "dataentry";
	}

}
