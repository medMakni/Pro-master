package controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class ContactsController {
	final String SERVER_URI = "http://localhost:8081/BackEndFinalVersion";
	RestTemplate restTemplate = new RestTemplate();

	@RequestMapping(value = "/insertContact", method = RequestMethod.POST,produces = "application/json")
	public String insertContact(@RequestParam("nom") String nom,@RequestParam("email") String email,@RequestParam("telephone") String telephone,@RequestParam("adresse") String adresse,Model model) {
		Map<String, Object> createContact =new HashMap<String,Object>();
		System.out.println("name is"+nom);
		createContact.put("nom", nom);
		createContact.put("email", email);
		createContact.put("adresse", adresse);
		createContact.put("telephone", telephone);
		createContact.put("idSociété", 1);

		
		restTemplate.postForObject(SERVER_URI + "/insertContact" , createContact , Void.class);

		return "créerContact";
		

	}
	@RequestMapping(value = "/createContact", method = RequestMethod.GET)
	public String createContact() {
	
		return "créerContact"; 
		

	}
}
