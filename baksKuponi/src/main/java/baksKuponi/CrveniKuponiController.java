package baksKuponi;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.mail.MessagingException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CrveniKuponiController {

	@GetMapping(value = "baksbaks/crveni/sviKuponi")
	String sviCrveniKuponi(Model m) {
		ArrayList<Kupon> sviCrveniKuponi = new ArrayList<Kupon>();
		DbManager dbm = new DbManager();
		try {
			MailSender.loginMail();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		sviCrveniKuponi = dbm.getCrveniKuponi();
		for(int i = 0; i < 19; ++i) {
	         m.addAttribute("used" + i, sviCrveniKuponi.get(i).isIskoriscen());
	         m.addAttribute("naslov" + i,sviCrveniKuponi.get(i).getNaslov());
	         m.addAttribute("opis" + i,sviCrveniKuponi.get(i).getKratakOpis());
	         m.addAttribute("brojKoriscenjaTekst" + i, sviCrveniKuponi.get(i).getBrojKoriscenjaTekst());
	         m.addAttribute("brojKoriscenja"+i,sviCrveniKuponi.get(i).getBrojKoriscenja());
		}
		return "crveniKuponi/sviCrveniKuponi";
	}
	
	@GetMapping(value = "baksbaks/crveni/kupon")
	public String kuponId(@RequestParam("id") int id,Model m) {
		System.out.println("id = " + id);
		Kupon kupon = new Kupon();
		DbManager dbm = new DbManager();
		int cid = id +20;
		kupon = dbm.getKupon(cid);
		m.addAttribute("naslov",kupon.getNaslov());
		m.addAttribute("opis",kupon.getDugOpis());
		m.addAttribute("id",id);
		
		return "crveniKuponi/crveniKuponTemp";
	}	
	
	@GetMapping(value = "baksbaks/crveni/iskoristiKupon")
	public String iskoristiKupon(@RequestParam("id") int id) {
		DbManager dbm = new DbManager();
		int cid = id+20;
		Kupon kupon = dbm.getKupon(cid);
		try {
			MailSender.crveniKuponMail(kupon);
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
