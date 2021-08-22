package baksKuponi;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping({"baksbaks/home"})
	public String home() {
		return "index";
	}	
	
	@GetMapping({"baksbaks/homeLogout"})
	public String homeLogout() throws UnsupportedEncodingException, MessagingException {
		MailSender.logoutMail();
		
		return "index";
	}	
	
	@GetMapping("baksbaks/uslovi")
	public String uslovi() {
		return "uslovi";
	}
}