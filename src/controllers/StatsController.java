package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

@Controller
public class StatsController {
	final String SERVER_URI = "http://localhost:8081/BackEndFinalVersion";
	RestTemplate restTemplate = new RestTemplate();

	@RequestMapping(value = "/stats", method = RequestMethod.GET)
	public String showTest() {

		int nbreactif = restTemplate.getForObject(SERVER_URI + "/nbreactif", Integer.class);
		System.out.println("yaya" + nbreactif);
		int nbreafini = restTemplate.getForObject(SERVER_URI + "/nbrefini", Integer.class);
		System.out.println("yoyo" + nbreafini);
		return "stats";
	}
}
