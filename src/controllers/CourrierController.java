package controllers;

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.core.io.ByteArrayResource;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class CourrierController {
	final String SERVER_URI = "http://localhost:8081/BackEndFinalVersion";

	@RequestMapping(value = "/sendCourrierData", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody Boolean getCourrierObject(Principal principal, @RequestParam("name") MultipartFile[] files,
			@RequestParam("objet") Object objet, @RequestParam("dateIn") Object dateIn,
			@RequestParam("dateOut") Object dateOut, @RequestParam("societe") String societe) {

		MultiValueMap<String, Object> map = new LinkedMultiValueMap<>();
		List<Object> files1 = new ArrayList<>();
		System.out.println(dateIn + "n     " + dateOut);
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
		map.add("objet", objet);
		map.add("dateIn", dateIn);
		map.add("isValidated", true);
		map.add("dateOut", dateOut);
		map.add("societe", societe);
		map.add("expéditeur", "steg");

		RestTemplate restTemplate = new RestTemplate();

		@SuppressWarnings("unchecked")
		Map<String, Object> roles = restTemplate
				.getForObject(SERVER_URI + "/getUserRole" + "?uid=" + principal.getName(), HashMap.class);
		@SuppressWarnings("unchecked")
		List<String> d = (List<String>) roles.get("directions");

		map.add("direction", d.get(0));

		restTemplate.postForObject(SERVER_URI + "/créerCourriers", map, Void.class);

		return true;
	}

}
