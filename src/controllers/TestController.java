package controllers;

import java.security.Principal;
import java.util.List;

import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import servicesIn.TestService;
@Controller

public class TestController {
	 
	//private static final Logger LOG = LoggerFactory.getLogger(TestController.class);
	TestService ts = new TestService();

	@RequestMapping(value = "/", method = RequestMethod.GET)
	@Autowired
	public ModelAndView showHome() {

		ModelAndView mv = new ModelAndView();
		/*if (LOG.isTraceEnabled()) {
			LOG.trace("Test: TRACE level message.");
		}
		if (LOG.isDebugEnabled()) {
			LOG.debug("Test: DEBUG level message.");
		}
		if (LOG.isInfoEnabled()) {
			LOG.info("Test: INFO level message.");
		}
		if (LOG.isWarnEnabled()) {
			LOG.warn("Test: WARN level message.");
		}
		if (LOG.isErrorEnabled()) {
			LOG.error("Test: ERROR level message.");
		}*/
		mv.setViewName("home");
		return mv;
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
