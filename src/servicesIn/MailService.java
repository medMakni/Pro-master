package servicesIn;

import java.io.IOException;
import java.util.Base64;

import org.springframework.stereotype.Service;

@Service
public class MailService {
	 public String encodeFileToBase64Binary(byte[] bytes) throws IOException {
	    	String encoded = Base64.getEncoder().encodeToString(bytes);
	        return new String(encoded);
	    }
}
