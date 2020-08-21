package tp.kits3.livedinner.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tp.kits3.livedinner.dao.BookDao;
import tp.kits3.livedinner.service.BookService;
import tp.kits3.livedinner.vo.Book;

@Controller("/booking")
public class bookcontroller {
	
	@Autowired
	private BookService bookService;
	private BookDao bookDao;
	
	@RequestMapping(value="/booking", method=RequestMethod.GET)
	public String goBookList(Model model) {
		model.addAttribute("bookAttri",new Book());
		return "booking";
	}
	
	
	@RequestMapping(value="/bookList", method=RequestMethod.POST)
	private String book(@ModelAttribute("bookAttri")Book book, Model model) {
		//modelMap.addAttribute("bookService", book);
		bookService.insert(book);
		//System.out.println(book);
		model.addAttribute("bookAttri",new Book());
		List<Book> list = bookService.selectAll();
		model.addAttribute("listBook", list);
		return"bookList";
	}
	@RequestMapping(value="/bookList", method=RequestMethod.GET)
	private String view(Model model) {
	
		return "bookList";
	}
	
	
	@RequestMapping(value="/editBooking", method=RequestMethod.GET)
	public String goEditBook(@ModelAttribute("bookEdit")Book book,Model model) {
		model.addAttribute("editBook",new Book());
		return "editBooking";
	}
	
//	@RequestMapping(value="/editBooking")
//	private String edit(@ModelAttribute("bookEdit")Book book,ModelMap modelMap) {
//		modelMap.addAttribute("bookService", book);
//		bookService.update(book);
//		return "editBooking";
//	}
	
	@RequestMapping(value="/deleteBooking/{id}", method=RequestMethod.GET)
	private String delete(@PathVariable( "id") int id) {
		bookService.delete(id);
		return "redirect:/bookList";
	}
}
