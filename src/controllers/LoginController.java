package controllers;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import servicesIn.TestService;



@Controller
public class LoginController {
	TestService ts = new TestService();
	@RequestMapping( value = "/login" )	
	@Autowired
	String showLogin() {

	/*	if (LOG.isTraceEnabled()) {
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
		return "login";
	}
	@RequestMapping( value = "/getmessages" , method=RequestMethod.GET , produces="application/json")
	@ResponseBody
	public Map<String, Object> getCreadentiels(Principal principal){
		
		Map<String, Object> data = new HashMap<String, Object>();
		List<Task>l=(List<Task>) ts.getWorkflows(principal);
		for(int i=0;i<l.size();i++){
			data.put("workflows "+i, l.get(i).toString());
			
		}
		return data;

		
		
	}
	RestTemplate restTemplate = new RestTemplate();
	@RequestMapping( value = "/sendmessage" , method=RequestMethod.POST , produces="application/json")
	@ResponseBody
	public Map<String, Object> getData(@RequestBody Map<String, Object> data){
		String text=(String) data.get("text");
		String name=(String) data.get("name");
		System.out.println(text+","+name);
		Map<String, Object>rval = new HashMap<String, Object>();
		rval.put("success",true);
		rval.put("text", text);
		return rval;
		
	}
}
