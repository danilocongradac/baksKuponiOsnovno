package baksKuponi;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.mail.MessagingException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class KuponiController {

	@GetMapping(value = "baksbaks/sviKuponi")
	public String sviKuponi(Model m) {
		ArrayList<Kupon> sviKuponi = new ArrayList<Kupon>();
		DbManager dbm = new DbManager();
		
		sviKuponi = dbm.getKuponi();
		for(int i = 0; i < 19; ++i) {
	         m.addAttribute("used" + i, sviKuponi.get(i).isIskoriscen());
	         m.addAttribute("naslov" + i,sviKuponi.get(i).getNaslov());
	         m.addAttribute("opis" + i,sviKuponi.get(i).getKratakOpis());
	         m.addAttribute("brojKoriscenjaTekst" + i, sviKuponi.get(i).getBrojKoriscenjaTekst());
	         m.addAttribute("brojKoriscenja"+i,sviKuponi.get(i).getBrojKoriscenja());
		}
		return "kuponi/sviKuponi";
	}
	
	@GetMapping(value = "baksbaks/kupon")
	public String kuponId(@RequestParam("id") int id,Model m) {
		System.out.println("id = " + id);
		Kupon kupon = new Kupon();
		DbManager dbm = new DbManager();
		
		kupon = dbm.getKupon(id);
		m.addAttribute("naslov",kupon.getNaslov());
		m.addAttribute("opis",kupon.getDugOpis());
		m.addAttribute("id",id);
		
		return "kuponi/kuponTemp";
	}
	
	
	@GetMapping(value = "baksbaks/iskoristiKupon")
	public String iskoristiKupon(@RequestParam("id") int id) {
		DbManager dbm = new DbManager();
		Kupon kupon = dbm.getKupon(id);
		try {
			MailSender.kuponMail(kupon);
		} catch (UnsupportedEncodingException | MessagingException e) {
			e.printStackTrace();
		}
		if(kupon.brojKoriscenjaMaks == 1) {
			kupon.setBrojKoriscenja(1);
			kupon.setIskoriscen(true);
		}else {
			kupon.setBrojKoriscenja(kupon.getBrojKoriscenja()+1);
			if(kupon.getBrojKoriscenjaMaks() == kupon.getBrojKoriscenja()) {
				kupon.setIskoriscen(true);
			}
		}
		dbm.addKupon(kupon);
		return "index";
	}
}
