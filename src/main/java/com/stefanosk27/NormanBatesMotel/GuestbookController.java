package com.stefanosk27.NormanBatesMotel;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.RedirectView;
import com.stefanosk27.NormanBatesMotel.Guestbook;
import com.stefanosk27.NormanBatesMotel.GuestbookService;


@Controller
@RequestMapping("/")
public class GuestbookController {
//	
//    @GetMapping("/jsp")
//    String jspPage(Model model,@RequestParam String name) {
//        model.addAttribute("name", name);
//        return "jsp/sample";
//    }
//
//    @GetMapping("/thymeleaf")
//    String thymeleafPage(Model model,@RequestParam String name) {
//        model.addAttribute("name", name);
//        return "thymeleaf/sample";
//    }
	
	@Autowired
	GuestbookService guestbookService;
	
//	GuestbookService guestbookService = new GuestbookService();  
	
	@Autowired
	InternalResourceViewResolver internalResourceViewResolver;
	
	@RequestMapping(value = "/getAllComments", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getGuestbook(Model model) {

		List<Guestbook> allComments = guestbookService.getAllComments();
		model.addAttribute("guestbook", new Guestbook());
		model.addAttribute("allComments", allComments);
		//return "index";
		//return "guestbookPage";
		 return "jsp/guestbookPage";
	}

	@RequestMapping(value = "/getComment/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	//@ResponseBody
	public Guestbook getCountryById(@PathVariable int id) { 
		return guestbookService.getComment(id);
	}


//	@RequestMapping(value = "/addComment", method = RequestMethod.POST, headers = "Accept=application/json")
////	@ResponseBody
//	public String addComment(@ModelAttribute("guestbook") Guestbook guestbook) {	
//		if(guestbook.getId()==0)
//		{
//			guestbookService.addComment(guestbook);
//		}
//		else
//		{	
//			guestbookService.updateComment(guestbook);
//		}
//		
////		return "redirect:/getAllComments#guestbook";
//		return "redirect:/getAllComments";
////		return "redirect:jsp/guestbookPage";
////		return "http://localhost:8080/getAllComments";
////		return "/getAllComments";
//	}
	
	   @RequestMapping(value = "/addComment", method = RequestMethod.POST, headers = "Accept=application/json")
//	  @ResponseBody
	    public RedirectView addComment(@ModelAttribute("guestbook") Guestbook guestbook) {    
	        if(guestbook.getId()==0)
	        {
	            guestbookService.addComment(guestbook);
	        }
	        else
	        {   
	            guestbookService.updateComment(guestbook);
	        }
	        
//	      return "redirect:/getAllComments#guestbook";
//	        return "redirect:/getAllComments";
//	      return "redirect:jsp/guestbookPage";
//	      return "http://localhost:8080/getAllComments";
//	      return "/getAllComments";
	        return new RedirectView("/getAllComments");
	    }
	    
	
//    @GetMapping("/redirectWithRedirectView")
//    public RedirectView redirectWithUsingRedirectView(RedirectAttributes attributes) {
//        attributes.addFlashAttribute("flashAttribute", "redirectWithRedirectView");
//        attributes.addAttribute("attribute", "redirectWithRedirectView");
//        return new RedirectView("redirectedUrl");
//    }

	@RequestMapping(value = "/updateComment/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String updateComment(@PathVariable("id") int id,Model model) {
		 model.addAttribute("guestbook", this.guestbookService.getComment(id));
	        model.addAttribute("allComments", this.guestbookService.getAllComments());
	        return "jsp/guestbookPage";
//	        return new RedirectView("/addComment");
	}

	@RequestMapping(value = "/deleteComment/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public RedirectView deleteComment(@PathVariable("id") int id) {
		guestbookService.deleteComment(id);
		System.out.println("hello");
		// return "redirect:/getAllComments";
//		 return "getAllComments";
		 return new RedirectView("/getAllComments");

	}	
}
