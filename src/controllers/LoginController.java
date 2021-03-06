package controllers;

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import servicesIn.TestService;



@Controller
public class LoginController {
	TestService ts = new TestService();
	final String SERVER_URI="http://localhost:8081/BackEndFinalVersion";
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
	@RequestMapping(value = "/logout")	
	@Autowired
	String showLogout() {

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
		return "CreationCourrier";
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
	
	//RestTemplate restTemplate = new RestTemplate();
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
	@RequestMapping(value = "/uploadMultipleFile", method = RequestMethod.POST , produces="application/json")
	public @ResponseBody
	Boolean uploadMultipleFileHandler(
			@RequestParam("name") MultipartFile[] files) {

		MultiValueMap<String, Object> map = new LinkedMultiValueMap<>();
		List<Object> files1 = new ArrayList<>();
		List<Object> files2 = new ArrayList<>();

		for (int i = 0; i < files.length; i++) {
			MultipartFile file = files[i];

System.out.println(file.getOriginalFilename());
			
				try {
					byte[] bytes = file.getBytes();
					files1.add(bytes);
					files2.add(file.getOriginalFilename());
					ByteArrayResource resource = new ByteArrayResource(file.getBytes()) { 
				        @Override 
				        public String getFilename() { 
				            return file.getOriginalFilename(); 
				        } 
				    }; 
				   map.add("files", resource);
					//System.out.println(map.toString());
				} catch (IOException e) {
					e.printStackTrace();
				}
		

			
		}
		
		//map.put("files", files1);
		map.put("names", files2);
		System.out.println(map.get("files").toString());
		RestTemplate restTemplate = new RestTemplate();
		
		
		Boolean p=restTemplate.postForObject(SERVER_URI+"/uploadMultipleFile", map, Boolean.class);
		System.out.println(p.toString());


		//message = message + ms.encodeFileToBase64Binary( bytes);
		//rval.put("success",message);

		return true;
	}
}
