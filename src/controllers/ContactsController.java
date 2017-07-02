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

	@RequestMapping(value = "/insertCompany", method = RequestMethod.POST, produces = "application/json")
	public String insertCompany(@RequestParam("nom") String nom, @RequestParam("email") String email,
			@RequestParam("telephone") String telephone, @RequestParam("adresse") String adresse, Model model) {
		Map<String, Object> createCompany = new HashMap<String, Object>();
		System.out.println("name is" + nom);
		createCompany.put("nom", nom);
		createCompany.put("email", email);
		createCompany.put("adresse", adresse);
		createCompany.put("telephone", telephone);
		restTemplate.postForObject(SERVER_URI + "/insertCompany", createCompany, Void.class);

		return "créerSociété";

	}
	@RequestMapping(value = "/createCompany", method = RequestMethod.GET)
	public String createCompany(Model model) {
	
		return "créerSociété";

	}
	
	@RequestMapping(value = "/insertContact", method = RequestMethod.POST, produces = "application/json")
	public String insertContact(@RequestParam("nom") String nom, @RequestParam("email") String email,
			@RequestParam("telephone") String telephone, @RequestParam("adresse") String adresse, @RequestParam("idSociete") int idSociété, Model model) {
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

		return "contactsList";

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

		return "contactsList";

	}
	@RequestMapping(value = "/updateContact", method = RequestMethod.POST, produces = "application/json")
	public String updateContact(@RequestParam("idContactUpdate") int idContactUpdate,@RequestParam("nomContact") String nomContact,@RequestParam("emailContact") String emailContact,@RequestParam("telephoneContact") String telephoneContact,@RequestParam("adresseContact") String adresseContact,@RequestParam("idSociete") int idSociete ,Model model) {
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



		restTemplate.postForObject(SERVER_URI + "/updateContact", updateContact, Void.class);

		return "contactsList";

	}

	@RequestMapping(value = "/updateCompany", method = RequestMethod.POST, produces = "application/json")
	public String updateCompany(@RequestParam("idCompanyUpdate") int idCompanyUpdate,@RequestParam("nomCompany") String nomCompany,@RequestParam("emailCompany") String emailCompany,@RequestParam("telephoneCompany") String telephoneCompany,@RequestParam("adresseCompany") String adresseCompany,Model model) {
		Map<String, Object> updateContact = new HashMap<String, Object>();
		System.out.println("iitt"+idCompanyUpdate);
		@SuppressWarnings("unchecked")
		List<Map<String, Object>> allCompanies = restTemplate.getForObject(SERVER_URI + "/findAllCompanies", ArrayList.class);
		System.out.println("rrr"+allCompanies.get(idCompanyUpdate).get("idSociété"));
		updateContact.put("idCompany", allCompanies.get(idCompanyUpdate).get("idSociété"));
		updateContact.put("nomCompany", nomCompany);
		updateContact.put("emailCompany", emailCompany);
		updateContact.put("telephoneCompany",telephoneCompany);
		updateContact.put("adresseCompany", adresseCompany);

System.out.println("uuu"+updateContact);

		restTemplate.postForObject(SERVER_URI + "/updateCompany", updateContact, Void.class);

		return "contactsList";

	}
	@RequestMapping(value = "/findCompanyByContact", method = RequestMethod.GET)
	public String findCompanyByContact(Model model) {
		@SuppressWarnings("unchecked")
		List<Map<String, Object>> allContacts = restTemplate.getForObject(SERVER_URI + "/findCompanyByContact"+"?idSociété=1", ArrayList.class);

		model.addAttribute("allContacts", allContacts);

		return "contactsList";

	}
}
