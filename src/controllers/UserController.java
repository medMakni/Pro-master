package controllers;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

	final String SERVER_URI = "http://localhost:8081/BackEndFinalVersion";

	@RequestMapping(value = "/CourriersArrivées", method = RequestMethod.GET)
	public String showHome(Principal principal,Model model) {
		RestTemplate restTemplate = new RestTemplate();
		@SuppressWarnings("unchecked")
		Map<String, Object> roles = restTemplate
				.getForObject(SERVER_URI + "/getUserRole" + "?uid=" + principal.getName(), HashMap.class);
		List<String>r=(List<String>) roles.get("roles");
		for (int i = 0; i < r.size(); i++) {
			if(r.get(i).equals("Secrétaire Générale")){
			@SuppressWarnings("rawtypes")
			List<Map<String, Object>> allCourrier=	restTemplate.getForObject(SERVER_URI + "/listCourriersArrivés", ArrayList.class);
			System.out.println(allCourrier);
			model.addAttribute("allCourrier", allCourrier);

				return "CourriersArrivées";
			}
		}
		return "CreationCourrier";
	}
}
