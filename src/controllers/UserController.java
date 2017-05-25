package controllers;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class UserController {

	final String SERVER_URI = "http://localhost:8081/BackEndFinalVersion";
	private static final Logger LOG = LoggerFactory.getLogger(TestController.class);
	RestTemplate restTemplate = new RestTemplate();

	@RequestMapping(value = "/CourriersArriv�es", method = RequestMethod.GET)
	public String showHome(Principal principal,Model model) {
		@SuppressWarnings("unchecked")
		Map<String, Object> roles = restTemplate
				.getForObject(SERVER_URI + "/getUserRole" + "?uid=" + principal.getName(), HashMap.class);
		@SuppressWarnings("unchecked")
		List<String>r=(List<String>) roles.get("roles");
		for (int i = 0; i < r.size(); i++) {
			System.out.println("zzzzz");
			if(r.get(i).equals("Secr�taire G�n�rale")){
			@SuppressWarnings("unchecked")
			List<Map<String, Object>> allCourrier=	restTemplate.getForObject(SERVER_URI + "/listCourriersArriv�s", ArrayList.class);
			System.out.println("eeee"+allCourrier);
			model.addAttribute("allCourrier", allCourrier);
			}
			else {
				System.out.println(principal.getName());
				@SuppressWarnings("unchecked")
				List<Map<String, Object>> finishedCourrier=	restTemplate.getForObject(SERVER_URI + "/getListCourriersArriv�sParUser" + "?username=" + principal.getName(), ArrayList.class);
				System.out.println("yyyy"+finishedCourrier);
				model.addAttribute("finishedCourrier", finishedCourrier);
			}
		}
		return "CourriersArriv�es";
	}
	@RequestMapping(value = "/mail_detail", method = RequestMethod.GET)
	public String showCourrierDetail(@RequestParam("id") String id,Model model) {
		@SuppressWarnings("unchecked")
		Map<String, Object> selectedCourrier=	restTemplate.getForObject(SERVER_URI + "/getCourrierDetails"+"?id="+id, HashMap.class);
		model.addAttribute("selectedCourrier", selectedCourrier);
		System.out.println("aaa"+selectedCourrier);
		return "mail_detail";
	}
	
	@RequestMapping(value = "/r�viserCourrier", method = RequestMethod.POST)
	public String r�viserCourrier(Model model,@RequestParam("idCourrier") String id,@RequestParam("isValidated") String isValidated) {
		Map <String,Object> params=new HashMap<String,Object>();
		params.put("idCourrier", id);
		params.put("isValidated", isValidated);
		restTemplate.postForObject(SERVER_URI + "/r�viser", params, Void.class);
		return "mail_detail";
	}

}
