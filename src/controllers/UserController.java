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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

@Controller
public class UserController {

	final String SERVER_URI = "http://localhost:8081/BackEndFinalVersion";
	private static final Logger LOG = LoggerFactory.getLogger(TestController.class);

	@RequestMapping(value = "/CourriersArrivées", method = RequestMethod.GET)
	public String showHome(Principal principal,Model model) {
		RestTemplate restTemplate = new RestTemplate();
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
			System.out.println(allCourrier);
			model.addAttribute("allCourrier", allCourrier);
			}
			else {
				System.out.println("aaaa");
				@SuppressWarnings("unchecked")
				List<Map<String, Object>> finishedCourrier=	restTemplate.getForObject(SERVER_URI + "/getListCourriersArrivésParUser" + "?username=" + principal.getName(), ArrayList.class);
				System.out.println(finishedCourrier);
				model.addAttribute("finishedCourrier", finishedCourrier);
			}
		}
		return "CourriersArrivées";
	}
}
