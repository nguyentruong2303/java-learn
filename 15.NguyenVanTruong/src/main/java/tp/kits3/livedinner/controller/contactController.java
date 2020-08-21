package tp.kits3.livedinner.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tp.kits3.livedinner.dao.ContactDao;
import tp.kits3.livedinner.service.ContactService;
import tp.kits3.livedinner.vo.Book;
import tp.kits3.livedinner.vo.Contact;

@Controller("/contactList")
public class contactController {
	
	
	
	@Autowired
	private ContactService contactService;
	
	
	private ContactDao contactDao;
	
	@RequestMapping(value = "/contactList", method = RequestMethod.GET)
	public String getContactController (Model model) {
		model.addAttribute("contactAttri", new Contact());
		return "contactList";
	}
	
	@RequestMapping(value="/contactList", method=RequestMethod.POST)
	private String contact(@ModelAttribute("contactAttri")Contact contact, Model model) {
		contactService.insert(contact);
		model.addAttribute("contactAttri", new Contact());
		return "contactList";
	}
}
