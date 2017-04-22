package controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController

public class HelloController {
	@RequestMapping(value="api/test", method = RequestMethod.GET)
	 public String greet(ModelMap model) {
		List<String> customers;
		
			customers = new ArrayList<String>();
			customers.add("a");
			customers.add("b");
			customers.add("c");
			model.addAttribute("customers", customers);
		  return "test";

		 }
	
	
}