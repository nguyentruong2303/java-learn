package tp.kits3.livedinner.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class categoryController {
	@RequestMapping(value = "/categoryList", method = RequestMethod.GET)
	public String getcategoryController(Model model) {
		return "categoryList";
	}
}
