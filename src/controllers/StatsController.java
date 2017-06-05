package controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

@Controller
public class StatsController {
	final String SERVER_URI = "http://localhost:8081/BackEndFinalVersion";
	RestTemplate restTemplate = new RestTemplate();

	@RequestMapping(value = "/stats", method = RequestMethod.GET)
	public String showStats(Model model) {

		@SuppressWarnings("unchecked")
		Map<String, Integer> nbreactif = restTemplate.getForObject(SERVER_URI + "/nbreactif", HashMap.class);
		@SuppressWarnings("unchecked")
		Map<String, Integer> nbrefini = restTemplate.getForObject(SERVER_URI + "/nbrefini", HashMap.class);

		@SuppressWarnings("unchecked")
		Map<String, Integer> nbreFiniParDir = restTemplate.getForObject(SERVER_URI + "/nbreFiniParDir", HashMap.class);
		@SuppressWarnings("unchecked")
		Map<String, Integer> nbreActiveParDir = restTemplate.getForObject(SERVER_URI + "/nbreActiveParDir",HashMap.class);

		model.addAttribute("nbreactif", nbreactif);
		model.addAttribute("nbrefini", nbrefini);
		model.addAttribute("nbreFiniParDir", nbreFiniParDir);
		model.addAttribute("nbreActiveParDir", nbreActiveParDir);
		System.out.println("actives1"+nbreActiveParDir);
		System.out.println("finis1"+nbreFiniParDir);

		return "stats";

	}
}
