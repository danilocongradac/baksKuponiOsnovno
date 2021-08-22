package baksKuponi;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import javax.mail.MessagingException;

public class MailSender {
	
	/*
	 * @param kupon koji je iskoriscen
	 * @Description
	 *   sends mail to congradacd002@gmail.com 
	 */
   public static void kuponMail(Kupon kupon) throws MessagingException, UnsupportedEncodingException {
      Mail mail = new Mail();
      ArrayList<String> to = new ArrayList<String>();
      ArrayList<String> cc = new ArrayList<String>();
      ArrayList<String> bcc = new ArrayList<String>();
      String from = "congradacd002@gmail.com";
      String password = "ymqcfcnlszdxlobt";
      String personalName = "Danilo Congradac";
      String subject = "Baks Kuponi !";
      to.add("congradacd002@gmail.com");
      mail.addText("<h1>BAKS JE UPRAVO ISKORISTILA KUPON!</h1>","text/html");
      mail.addText("<br>", "text/html");
      mail.addText("<h2>" + kupon.naslov + "</h2>", "text/html");
      mail.addText("<br><h4>" + kupon.dugOpis + "</h4>", "text/html");
      mail.composeMessage(to, cc, bcc, from, personalName, subject);
      mail.sendMail(from, password);
   }
   
   public static void crveniKuponMail(Kupon kupon) throws MessagingException, UnsupportedEncodingException {
	      Mail mail = new Mail();
	      ArrayList<String> to = new ArrayList<String>();
	      ArrayList<String> cc = new ArrayList<String>();
	      ArrayList<String> bcc = new ArrayList<String>();
	      String from = "congradacd002@gmail.com";
	      String password = "ymqcfcnlszdxlobt";
	      String personalName = "Danilo Congradac";
	      String subject = "Baks Kuponi !";
	      to.add("congradacd002@gmail.com");
	      mail.addText("<h1>BAKS JE UPRAVO ISKORISTILA CRVENI KUPON!</h1>","text/html");
	      mail.addText("<br>", "text/html");
	      mail.addText("<h2>" + kupon.naslov + "</h2>", "text/html");
	      mail.addText("<br><h4>" + kupon.dugOpis + "</h4>", "text/html");
	      mail.composeMessage(to, cc, bcc, from, personalName, subject);
	      mail.sendMail(from, password);
	   }
   
   public static void loginMail() throws MessagingException, UnsupportedEncodingException {
	      Mail mail = new Mail();
	      ArrayList<String> to = new ArrayList<String>();
	      ArrayList<String> cc = new ArrayList<String>();
	      ArrayList<String> bcc = new ArrayList<String>();
	      String from = "congradacd002@gmail.com";
	      String password = "ymqcfcnlszdxlobt";
	      String personalName = "Danilo Congradac";
	      String subject = "Baks Kuponi !";
	      to.add("congradacd002@gmail.com");
	      mail.addText("baks se ulogovala na crvene kupone","text/html");
	      mail.composeMessage(to, cc, bcc, from, personalName, subject);
	      mail.sendMail(from, password);
	   }
   
   public static void logoutMail() throws MessagingException, UnsupportedEncodingException {
	      Mail mail = new Mail();
	      ArrayList<String> to = new ArrayList<String>();
	      ArrayList<String> cc = new ArrayList<String>();
	      ArrayList<String> bcc = new ArrayList<String>();
	      String from = "congradacd002@gmail.com";
	      String password = "ymqcfcnlszdxlobt";
	      String personalName = "Danilo Congradac";
	      String subject = "Baks Kuponi !";
	      to.add("congradacd002@gmail.com");
	      mail.addText("baks se ulogovala na crvene kupone","text/html");
	      mail.composeMessage(to, cc, bcc, from, personalName, subject);
	      mail.sendMail(from, password);
	   }
}
