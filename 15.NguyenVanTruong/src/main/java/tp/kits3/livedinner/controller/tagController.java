package tp.kits3.livedinner.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class tagController {

	@RequestMapping(value = "/tagList", method = RequestMethod.GET)
	public String getTagController (Model model) {
		return "tagList";
	}
}
