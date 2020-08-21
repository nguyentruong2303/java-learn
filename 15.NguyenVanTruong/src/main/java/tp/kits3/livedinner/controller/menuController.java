package tp.kits3.livedinner.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tp.kits3.livedinner.service.MenuService;
import tp.kits3.livedinner.vo.Menu;

@Controller("/menuList")
public class menuController {
	@Autowired
	private MenuService menuService;
	
	
	
	@RequestMapping (value = "/menuList", method=RequestMethod.GET)
	public String test(@ModelAttribute("listMenu") Menu menu, Model model) {
	List<Menu> list = menuService.selectAll();
	for (Menu menu2 : list) {
		menu2.getMuname();
		}
	model.addAttribute("listMenu", list);
	return "menuList";
	}
}
