package controllers;

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.core.io.ByteArrayResource;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import servicesIn.LoginService;
import servicesIn.TestService;

@Controller
public class CourrierInterneController {
	final String SERVER_URI="http://localhost:8081/BackEndFinalVersion";
	RestTemplate restTemplate = new RestTemplate();
	//private static final Logger LOG = LoggerFactory.getLogger(TestController.class);
	TestService ts = new TestService();
	LoginService ls =new LoginService();


	@RequestMapping(value = "/createCourrierInterne", method = RequestMethod.GET)
	public
	 String createCourrierInterne(Model model,Principal principal) {
		String realName = ls.getUsersFromUid(principal.getName());
		model.addAttribute("realName", realName);
		RestTemplate restTemplate = new RestTemplate();
		Map<String, Object> mapUid = new HashMap<String, Object>();
		mapUid.put("uid", principal.getName());
		System.out.println("dfdf"+SecurityContextHolder.getContext().getAuthentication().getCredentials());
		@SuppressWarnings("unchecked")
		Map<String,Object> roles=restTemplate.getForObject(SERVER_URI+"/getUserRole"+"?uid=" + principal.getName(), HashMap.class);
		@SuppressWarnings("unchecked")
		List<String>r=(List<String>) roles.get("roles");
		@SuppressWarnings("unchecked")
		List<String>d=(List<String>) roles.get("directions");

		
		model.addAttribute("roles", r);
		model.addAttribute("directions", d);

		return "CreationCourrierInterne";
	}
	@RequestMapping(value = "/sendCourrierInterneData", method = RequestMethod.POST, produces = "application/json")
	public  String sendCourrierInterneData(Principal principal, @RequestParam("name") MultipartFile[] files,
			@RequestParam("objet") Object objet, @RequestParam("dateIn") Object dateIn,
			@RequestParam("dateOut") Object dateOut, @RequestParam("societe") String societe) {

		MultiValueMap<String, Object> map = new LinkedMultiValueMap<>();
		List<Object> files1 = new ArrayList<>();
		System.out.println(files.length + "n     " + dateOut);
		for (int i = 0; i < files.length; i++) {
			MultipartFile file = files[i];

			System.out.println(file.getOriginalFilename());

			try {
				byte[] bytes = file.getBytes();
				files1.add(bytes);
				ByteArrayResource resource = new ByteArrayResource(file.getBytes()) {
					@Override
					public String getFilename() {
						return file.getOriginalFilename();
					}
				};
				map.add("listePiecesJointes", resource);
				System.out.println("hhhh" + map.get("listePiecesJointes"));

			} catch (IOException e) {
				e.printStackTrace();
			}
			

		}
		System.out.println("rrrrrr");
		map.add("objet", objet);
		map.add("dateIn", dateIn);
		map.add("isValidated", true);
		map.add("dateOut", dateOut);
		map.add("societe", societe);
		map.add("expéditeur", "steg");
		map.add("déstinataire", "Direction Générale");
		map.add("starter",principal.getName());
		RestTemplate restTemplate = new RestTemplate();

		@SuppressWarnings("unchecked")
		Map<String, Object> roles = restTemplate
				.getForObject(SERVER_URI + "/getUserRole" + "?uid=" + principal.getName(), HashMap.class);
		System.out.println("zzz"+roles);
		@SuppressWarnings("unchecked")
		List<String> d = (List<String>) roles.get("directions");

		map.add("direction", d.get(0));
		
		restTemplate.postForObject(SERVER_URI + "/créerCourrierInterne", map, Void.class);

		return "dashboard";
	}
	@RequestMapping(value = "/CourriersInternes", method = RequestMethod.GET)
	public String showHome(Principal principal, Model model) {
		@SuppressWarnings("unchecked")
		Map<String, Object> roles = restTemplate
				.getForObject(SERVER_URI + "/getUserRole" + "?uid=" + principal.getName(), HashMap.class);
		@SuppressWarnings("unchecked")
		List<String> r = (List<String>) roles.get("roles");
		System.out.println("cccc"+r);
		for (int i = 0; i < r.size(); i++) {
			System.out.println("zzzzz");
			if (r.get(i).equals("secrétairesGénérale")) {
				@SuppressWarnings("unchecked")
				List<Map<String, Object>> allCourrier = restTemplate.getForObject(SERVER_URI + "/listCourriersInternes",
						ArrayList.class);
				System.out.println("eeee" + allCourrier);
				model.addAttribute("allCourrier", allCourrier);
			} else {
				System.out.println("zerte"+principal.getName());
				@SuppressWarnings("unchecked")
				List<Map<String, Object>> finishedCourrier = restTemplate.getForObject(
						SERVER_URI + "/getListCourriersInternesParUser" + "?username=" + principal.getName(),
						ArrayList.class);
				System.out.println("yyyy" + finishedCourrier);
				model.addAttribute("finishedCourrier", finishedCourrier);
			}
		}
		return "CourriersArrivées";
	}

}
