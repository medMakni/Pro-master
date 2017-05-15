package controllers;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.task.Task;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import servicesIn.LoginService;
import servicesIn.TestService;
@Controller

public class TestController {
	final String SERVER_URI="http://localhost:8081/BackEndFinalVersion";

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
		System.out.println("loool");
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


		return "test";
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

			return "next";

		}
	}

	@RequestMapping(value = "/create")

	public String createWorkfow() {

		ts.startWorkflow();
		return "home";

	}

	@RequestMapping(value = "/workflows" ,method=RequestMethod.GET)

	public String getWorkflows(ModelMap model,Principal principal) {
		List<Task>l=(List<Task>) ts.getWorkflows(principal);
		model.addAttribute("list",l);
		return "createdWorkflow";

	}
}
