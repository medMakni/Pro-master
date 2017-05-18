package controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
	final String SERVER_URI="http://localhost:8081/BackEndFinalVersion";

	@RequestMapping(value = "/sendCourrierData", method = RequestMethod.POST , produces="application/json")
	public @ResponseBody
	Boolean getCourrierObject(
			@RequestParam("name") MultipartFile[] files , @RequestParam("objet") Object objet) {

		MultiValueMap<String, Object> map = new LinkedMultiValueMap<>();
		List<Object> files1 = new ArrayList<>();

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
				   System.out.println("hhhh"+map.get("listePiecesJointes"));

					//System.out.println(map.toString());
				} catch (IOException e) {
					e.printStackTrace();
				}
		

			
		}
		   map.add("objet", objet);

		
		//map.put("files", files1);
		//map.put("names", files2);
		//System.out.println(map.get("files").toString());
		RestTemplate restTemplate = new RestTemplate();
		
		
		restTemplate.postForObject(SERVER_URI+"/cr�erCourriers", map, Void.class);
		//System.out.println(a);

		//message = message + ms.encodeFileToBase64Binary( bytes);
		//rval.put("success",message);

		return true;
	}
}