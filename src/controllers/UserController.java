package controllers;

import java.io.File;
import java.io.FileOutputStream;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class UserController {

	final String SERVER_URI = "http://localhost:8081/BackEndFinalVersion";
	private static final Logger LOG = LoggerFactory.getLogger(TestController.class);
	RestTemplate restTemplate = new RestTemplate();

	@RequestMapping(value = "/CourriersArrivées", method = RequestMethod.GET)
	public String showHome(Principal principal,Model model) {
		@SuppressWarnings("unchecked")
		Map<String, Object> roles = restTemplate
				.getForObject(SERVER_URI + "/getUserRole" + "?uid=" + principal.getName(), HashMap.class);
		@SuppressWarnings("unchecked")
		List<String>r=(List<String>) roles.get("roles");
		for (int i = 0; i < r.size(); i++) {
			System.out.println("zzzzz");
			if(r.get(i).equals("Secrétaire Générale")){
			@SuppressWarnings("unchecked")
			List<Map<String, Object>> allCourrier=	restTemplate.getForObject(SERVER_URI + "/listCourriersArrivés", ArrayList.class);
			System.out.println("eeee"+allCourrier);
			model.addAttribute("allCourrier", allCourrier);
			}
			else {
				System.out.println(principal.getName());
				@SuppressWarnings("unchecked")
				List<Map<String, Object>> finishedCourrier=	restTemplate.getForObject(SERVER_URI + "/getListCourriersArrivésParUser" + "?username=" + principal.getName(), ArrayList.class);
				System.out.println("yyyy"+finishedCourrier);
				model.addAttribute("finishedCourrier", finishedCourrier);
			}
		}
		return "CourriersArrivées";
	}
	@RequestMapping(value = "/mail_detail", method = RequestMethod.GET)
	public String showCourrierDetail(@RequestParam("id") String id,Model model) {
		@SuppressWarnings("unchecked")
		Map<String, Object> selectedCourrier=restTemplate.getForObject(SERVER_URI + "/getCourrierDetails"+"?id="+id, HashMap.class);

		@SuppressWarnings("unchecked")
		ResponseEntity<InputStreamResource> sCourrier=restTemplate.getForEntity(SERVER_URI + "/downloadPDFFile", InputStreamResource.class);
		//System.out.println(selectedCourrier.get("resources").getClass());
		
		System.out.println("bbbb"+sCourrier.getBody());
		model.addAttribute("selectedCourrier", selectedCourrier);
		//model.addAttribute("selectedCourrier", sCourrier);

		System.out.println("aaa"+selectedCourrier);
		return "mail_detail"; 
	}
	@RequestMapping(value = "/mail_test", method = RequestMethod.GET)
	public String showCourrierDetail(Model model) {
		@SuppressWarnings("unchecked")
		ResponseEntity<String> sCourrier=restTemplate.getForEntity(SERVER_URI + "/downloadPDFFile", String.class);
		//System.out.println(selectedCourrier.get("resources").getClass());
		System.out.println("bbbb"+sCourrier.getBody());

		return "mail_detail";
	}

	@RequestMapping(value = "/réviserCourrier", method = RequestMethod.POST)
	public String réviserCourrier(Model model,@RequestBody Map<String, Object> data) {
		Map <String,Object> params=new HashMap<String,Object>();
		String idCourrier=(String) data.get("idCourrier").toString();
		boolean isValidated=(boolean) data.get("isValidated");
		params.put("idCourrier", idCourrier);
		params.put("isValidated", isValidated);
		System.out.println(params);

		restTemplate.postForObject(SERVER_URI + "/réviser", params, Void.class);
		System.out.println("revisité");
		return "home";
	}

}
