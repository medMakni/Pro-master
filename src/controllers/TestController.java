package controllers;




import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	private static final Logger LOG =LoggerFactory.getLogger(TestController.class);
	@RequestMapping("/")
	@Autowired
	String showHome() {

		if (LOG.isTraceEnabled()) {
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
		}
		return "home";
	}
}
