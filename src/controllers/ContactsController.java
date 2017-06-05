package controllers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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

	@RequestMapping(value = "/insertContact", method = RequestMethod.POST, produces = "application/json")
	public String insertContact(@RequestParam("nom") String nom, @RequestParam("email") String email,
			@RequestParam("telephone") String telephone, @RequestParam("adresse") String adresse, @RequestParam("idSociete") Object idSociété, Model model) {
		Map<String, Object> createContact = new HashMap<String, Object>();
		System.out.println("name is" + nom);
		createContact.put("nom", nom);
		createContact.put("email", email);
		createContact.put("adresse", adresse);
		createContact.put("telephone", telephone);
		createContact.put("idSociété", idSociété);
		restTemplate.postForObject(SERVER_URI + "/insertContact", createContact, Void.class);

		return "créerContact";

	}

	@RequestMapping(value = "/createContact", method = RequestMethod.GET)
	public String createContact(Model model) {
		@SuppressWarnings("unchecked")
		List<Map<String, Object>> allCompanies = restTemplate.getForObject(SERVER_URI + "/findAllCompanies", ArrayList.class);
		model.addAttribute("allCompanies", allCompanies);

		return "créerContact";

	}

	@RequestMapping(value = "/afficherContacts", method = RequestMethod.GET)
	public String showContacts(Model model) {
		@SuppressWarnings("unchecked")
		List<Map<String, Object>> allContacts = restTemplate.getForObject(SERVER_URI + "/findAllContacts", ArrayList.class);
		@SuppressWarnings("unchecked")
		List<Map<String, Object>> allCompanies = restTemplate.getForObject(SERVER_URI + "/findAllCompanies", ArrayList.class);
		System.out.println("zzz"+allCompanies);

		model.addAttribute("allContacts", allContacts);
		model.addAttribute("allCompanies", allCompanies);

		return "contactsList";

	}
	
	@RequestMapping(value = "/deleteContact", method = RequestMethod.POST, produces = "application/json")
	public String deleteContact(@RequestParam("idContact") int idContact, Model model) {
		Map<String, Object> deleteContact = new HashMap<String, Object>();
		System.out.println("ii"+idContact);
		@SuppressWarnings("unchecked")
		List<Map<String, Object>> allContacts = restTemplate.getForObject(SERVER_URI + "/findAllContacts", ArrayList.class);
		System.out.println("rrr"+allContacts.get(idContact).get("idContact"));
		deleteContact.put("idContact", allContacts.get(idContact).get("idContact"));


		restTemplate.postForObject(SERVER_URI + "/deleteContact", deleteContact, Void.class);

		return "créerContact";

	}
	@RequestMapping(value = "/deleteCompany", method = RequestMethod.POST, produces = "application/json")
	public String deleteCompany(@RequestParam("idSociete") int idSociete, Model model) {
		Map<String, Object> deleteCompany = new HashMap<String, Object>();
		System.out.println("ffdd"+idSociete);
		@SuppressWarnings("unchecked")
		List<Map<String, Object>> allCompanies = restTemplate.getForObject(SERVER_URI + "/findAllCompanies", ArrayList.class);
		System.out.println("rrr"+allCompanies.get(idSociete).get("idSociété"));
		deleteCompany.put("idSociété", allCompanies.get(idSociete).get("idSociété"));


		restTemplate.postForObject(SERVER_URI + "/deleteCompany", deleteCompany, Void.class);

		return "créerContact";

	}
	@RequestMapping(value = "/updateContact", method = RequestMethod.POST, produces = "application/json")
	public String updateContact(@RequestParam("idContactUpdate") int idContactUpdate,@RequestParam("nomContact") String nomContact,@RequestParam("emailContact") String emailContact,@RequestParam("telephoneContact") String telephoneContact,@RequestParam("adresseContact") String adresseContact,@RequestParam("idSociete") String idSociete ,Model model) {
		Map<String, Object> updateContact = new HashMap<String, Object>();
		System.out.println("iitt"+idContactUpdate);
		@SuppressWarnings("unchecked")
		List<Map<String, Object>> allContacts = restTemplate.getForObject(SERVER_URI + "/findAllContacts", ArrayList.class);
		System.out.println("rrr"+allContacts.get(idContactUpdate).get("idContact"));
		updateContact.put("idContact", allContacts.get(idContactUpdate).get("idContact"));
		updateContact.put("nomContact", nomContact);
		updateContact.put("emailContact", emailContact);
		updateContact.put("telephoneContact",telephoneContact);
		updateContact.put("adresseContact", adresseContact);
		updateContact.put("idSociété",idSociete );



		//restTemplate.postForObject(SERVER_URI + "/deleteContact", updateContact, Void.class);

		return "créerContact";

	}

}
