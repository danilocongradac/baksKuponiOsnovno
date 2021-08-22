package baksKuponi;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Properties;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.Message.RecipientType;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;


class Auth extends Authenticator {
	   protected PasswordAuthentication getPasswordAuthentication() {
	      return new PasswordAuthentication(Mail.getUsername(), Mail.getPassword());
	   }
}

public class Mail {
   private static String username;
   private static String password;
   static Session session;
   static Properties prop;
   static MimeMessage mess;
   static Multipart multipart;

   Mail() {
      getSession();
      multipart = new MimeMultipart();
   }

   public static void setUsername(String username) {
	   Mail.username = username;
   }

   public static void setPassword(String password) {
	   Mail.password = password;
   }

   static String getUsername() {
	      return username;
	   }

	   static String getPassword() {
	      return password;
	   }
   public static void getSession() {
      setProperties();
      session = Session.getInstance(prop, new Auth());
   }

   public static void getSession(String username_, String password_) {
      prop = new Properties();
      prop.put("mail.smtp.host", "smtp.gmail.com");
      prop.put("mail.smtp.port", "465");
      prop.put("mail.smtp.auth", "true");
      prop.put("mail.smtp.socketFactory.port", "465");
      prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
      username = username_;
      password = password_;
      session = Session.getInstance(prop, new Auth());
   }

   public static void setProperties() {
      prop = new Properties();
      prop.put("mail.smtp.host", "smtp.gmail.com");
      prop.put("mail.smtp.port", "465");
      prop.put("mail.smtp.auth", "true");
      prop.put("mail.smtp.socketFactory.port", "465");
      prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
   }

   public void composeMessage(ArrayList<String> to, ArrayList<String> cc, ArrayList<String> bcc, String from, String personalName, String subject) throws AddressException, MessagingException, UnsupportedEncodingException {
      mess = new MimeMessage(session);
      InternetAddress me = new InternetAddress(from);
      me.setPersonal(personalName);
      mess.setFrom(me);
      mess.setSubject(subject);

      int i;
      for(i = 0; i < to.size(); ++i) {
         mess.addRecipients(RecipientType.TO, (String)to.get(i));
      }

      for(i = 0; i < cc.size(); ++i) {
         mess.addRecipients(RecipientType.CC, (String)cc.get(i));
      }

      for(i = 0; i < bcc.size(); ++i) {
         mess.addRecipients(RecipientType.BCC, (String)bcc.get(i));
      }

   }

   public void addAttachment(String filename) throws MessagingException {
      DataSource source = new FileDataSource(filename);
      BodyPart messageBodyPart = new MimeBodyPart();
      messageBodyPart.setDataHandler(new DataHandler(source));
      messageBodyPart.setFileName(filename);
      multipart.addBodyPart(messageBodyPart);
   }

   public void addText(String text) throws MessagingException {
      BodyPart messageBodyPart = new MimeBodyPart();
      messageBodyPart.setText(text);
      multipart.addBodyPart(messageBodyPart);
   }

   public void addText(String text, String type) throws MessagingException {
      BodyPart messageBodyPart = new MimeBodyPart();
      if (type.equals("text/html")) {
         messageBodyPart.setContent(text, "text/html");
      }

      multipart.addBodyPart(messageBodyPart);
   }

   public void sendMail(String username, String password) throws MessagingException, UnsupportedEncodingException {
      getSession(username, password);
      mess.setContent(multipart);
      Transport.send(mess);
   }
}
   
