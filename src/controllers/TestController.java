package controllers;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.task.Task;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import servicesIn.LoginService;
import servicesIn.TestService;
@Controller

public class TestController {
	final String SERVER_URI="http://localhost:8081/BackEndFinalVersion";
	RestTemplate restTemplate = new RestTemplate();
	//private static final Logger LOG = LoggerFactory.getLogger(TestController.class);
	TestService ts = new TestService();
	LoginService ls =new LoginService();


	@RequestMapping(value = "/", method = RequestMethod.GET)
	public
	 String showHome(Model model,Principal principal) {
		String realName = ls.getUsersFromUid(principal.getName());
		model.addAttribute("realName", realName);
		RestTemplate restTemplate = new RestTemplate();
		Map<String, Object> mapUid = new HashMap<String, Object>();
		mapUid.put("uid", principal.getName());
		System.out.println(SecurityContextHolder.getContext().getAuthentication().getCredentials());
		@SuppressWarnings("unchecked")
		Map<String,Object> roles=restTemplate.getForObject(SERVER_URI+"/getUserRole"+"?uid=" + principal.getName(), HashMap.class);
		@SuppressWarnings("unchecked")
		List<String>r=(List<String>) roles.get("roles");
		@SuppressWarnings("unchecked")
		List<String>d=(List<String>) roles.get("directions");

		
		model.addAttribute("roles", r);
		model.addAttribute("directions", d);

		return "CreationCourrier";
	}
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public
	 String showTest() {


		return "stats";
	}
	@RequestMapping(value = "/mail", method = RequestMethod.GET)
	public
	 String showmail() {


		return "mail_detail";
	}

	@RequestMapping(value = "/next", method = RequestMethod.GET)

	public String result(@ModelAttribute("username") String username,

			BindingResult result,

			Model model) {

		System.out.println(username);

		if (result.hasErrors()) {
			return "home";

		} else {

			model.addAttribute("username", username);

			return "home";

		}
	}

	@RequestMapping(value = "/dashboard")

	public String createWorkfow(Principal principal,Model model) {
		@SuppressWarnings("unchecked")
		List<Map<String, Object>> finishedCourrier = restTemplate.getForObject(
				SERVER_URI + "/getListCourriersArrivésParUser" + "?username=" + principal.getName(),
				ArrayList.class);
		System.out.println("yyyy" + finishedCourrier);
		model.addAttribute("finishedCourrier", finishedCourrier);
		return "dashboard";

	}

	@RequestMapping(value = "/workflows" ,method=RequestMethod.GET)

	public String getWorkflows(ModelMap model,Principal principal) {
		List<Task>l=(List<Task>) ts.getWorkflows(principal);
		model.addAttribute("list",l);
		return "createdWorkflow";

	}
	
	@RequestMapping(value = "/forward" ,method=RequestMethod.GET)

	public String forwardMail(@RequestParam("id") String idCourrier,ModelMap model) {
		model.addAttribute("idCourrier", idCourrier);

		return "forward";

	}
	
	@RequestMapping(value = "/forwarding" ,method=RequestMethod.POST)
	
	public String forwardMailTo(@RequestParam("idCourrier") String idCourrier,@RequestParam("idDepartement") String idDepartement,@RequestParam("annotation") String annotation,ModelMap model,Principal principal) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("idCourrier", idCourrier);
		map.put("idDepartement", idDepartement);
		map.put("username", principal.getName());
		map.put("annotation", annotation);

		@SuppressWarnings("unchecked")
		List<Map<String, Object>> finishedCourrier = restTemplate.postForObject(
				SERVER_URI + "/traiterCourrier" ,map,
				ArrayList.class);
		return "dashboard";

	}
}
