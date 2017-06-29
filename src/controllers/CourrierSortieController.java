package controllers;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import servicesIn.LoginService;
import servicesIn.TestService;
@Controller
public class CourrierSortieController {
	final String SERVER_URI="http://localhost:8081/BackEndFinalVersion";
	RestTemplate restTemplate = new RestTemplate();
	//private static final Logger LOG = LoggerFactory.getLogger(TestController.class);
	TestService ts = new TestService();
	LoginService ls =new LoginService();

	@RequestMapping(value = "/createCourrierSortie", method = RequestMethod.GET)
	public
	 String createCourrierSortie(Model model,Principal principal) {
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

		return "CréationCourrierSortie";
	}
	@RequestMapping(value = "/sendCourrierSortieData", method = RequestMethod.POST, produces = "application/json")
	public  String sendCourrierSortieData(Principal principal, @RequestParam("name") MultipartFile[] files,
			@RequestParam("objet") Object objet, @RequestParam("dateIn") Object dateIn,
			@RequestParam("dateOut") Object dateOut, @RequestParam("societe") String societe) {
System.out.println("sortie");
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
		map.add("expéditeur", "Direction Générale");
		map.add("déstinataire", "steg");
		map.add("starter",principal.getName());
		System.out.println("the map"+map);
		RestTemplate restTemplate = new RestTemplate();

		@SuppressWarnings("unchecked")
		Map<String, Object> roles = restTemplate
				.getForObject(SERVER_URI + "/getUserRole" + "?uid=" + principal.getName(), HashMap.class);
		System.out.println("zzz"+roles);
		@SuppressWarnings("unchecked")
		List<String> d = (List<String>) roles.get("directions");

		map.add("direction", d.get(0));
		
		restTemplate.postForObject(SERVER_URI + "/créerCourrierSortie", map, Void.class);

		return "dashboard"; 
	}
	@RequestMapping(value = "/CourriersSorties", method = RequestMethod.GET)
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
				List<Map<String, Object>> allCourrier = restTemplate.getForObject(SERVER_URI + "/listCourriersSorties",
						ArrayList.class);
				System.out.println("eeee" + allCourrier);
				model.addAttribute("allCourrier", allCourrier);
			} else {
				System.out.println("zerte"+principal.getName());
				@SuppressWarnings("unchecked")
				List<Map<String, Object>> finishedCourrier = restTemplate.getForObject(
						SERVER_URI + "/getListCourriersSortiesParUser" + "?username=" + principal.getName(),
						ArrayList.class);
				System.out.println("yyyy" + finishedCourrier);
				model.addAttribute("finishedCourrier", finishedCourrier);
			}
		}
		return "CourriersDéparts";
	}
	
	@RequestMapping(value = "/mail_detail_sortie", method = RequestMethod.GET)
	public String showCourrierDetail(@RequestParam("id") String id, Model model, HttpServletRequest request) {
		@SuppressWarnings("unchecked")
		List<String> paths = new ArrayList<>();
		Map<String, Object> selectedCourrier = restTemplate
				.getForObject(SERVER_URI + "/getCourrierDetails" + "?id=" + id, HashMap.class);

		for (int i = 0; i < ((List<String>) selectedCourrier.get("listePiécesJointes")).size(); i++) {
			@SuppressWarnings("unchecked")
			ResponseEntity<byte[]> sCourrier = restTemplate.getForEntity(
					SERVER_URI + "/downloadPDFFile" + "?idCourrier=" + id + "&nbreCourrier=" + i, byte[].class);
			// System.out.println(selectedCourrier.get("resources").getClass());
			ResponseEntity<InputStreamResource> soCourrier = restTemplate.getForEntity(
					SERVER_URI + "/downloadPDFFile" + "?idCourrier=" + id + "&nbreCourrier=" + i,
					InputStreamResource.class);

			try {
				System.out.println("eeee" + soCourrier.getHeaders());
				File file = new File(request.getRealPath("") + "/resources/img/"
						+ soCourrier.getHeaders().get("filename" + i).get(0));
				System.out.println(file.getAbsolutePath());
				FileOutputStream fos = new FileOutputStream(file);
				fos.write(sCourrier.getBody());
				System.out.println("jkljkl" + file.getAbsoluteFile());
				paths.add(soCourrier.getHeaders().get("filename" + i).get(0));

			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		// System.out.println("bbbbfwg" + soCourrier.getHeaders());
		model.addAttribute("paths", paths);

		model.addAttribute("selectedCourrier", selectedCourrier);

		// model.addAttribute("selectedCourrier",
		// sCourrier.getBody().getFilename());

		return "mail_detail_Sortie";
	}
	@RequestMapping(value = "/réviserCourrierSortie", method = RequestMethod.POST)
	public String réviserCourrier(Model model, @RequestBody Map<String, Object> data) {
		Map<String, Object> params = new HashMap<String, Object>();
		String idCourrier = (String) data.get("idCourrier").toString();
		boolean isValidated = (boolean) data.get("isValidated");
		params.put("idCourrier", idCourrier);
		params.put("isValidated", isValidated);
		System.out.println("nnnnn"+params);

		restTemplate.postForObject(SERVER_URI + "/réviserSortie", params, Void.class);
		System.out.println("revisité");
		return "home";
	}
	@RequestMapping(value = "/archiverCourrierSortie" ,method=RequestMethod.GET)

	public String archiverCourrier(@RequestParam("id") String idCourrier) {
		//get archier method from server side
		restTemplate.getForObject(SERVER_URI + "/archiverCourrier"+"?id="+idCourrier,Void.class);
System.out.println("mrigel");
		return "dashboard";

	}
}
