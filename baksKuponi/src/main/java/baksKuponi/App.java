package baksKuponi;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class App extends SpringBootServletInitializer {
   protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
      return builder.sources(new Class[]{App.class});
   }

   public static void main(String[] args) throws IOException {
	   
      SpringApplication.run(App.class, args);
   }
}

//public class App{
//	
//	public static void main(String[] args) {
//		DbManager dbm = new DbManager();
//
//		ArrayList<Kupon> k = new ArrayList<Kupon>();
//		for(int i = 1; i < 20; i++) {
//			k.add(new Kupon(i,false, "Kupon " + i, "Opis" + i, 1));
//		}
//		
//		for(int i = 0; i < 19; i++) {
//			dbm.addKupon(k.get(i));
//		}
//
//		System.out.println("");
//		System.out.println("");
//		System.out.println("");
//		System.out.println("");
//		System.out.println(dbm.getCrveniKuponi());
//
//		System.out.println("");
//		System.out.println("");
//		System.out.println("");
//		System.out.println("");		
//	}
//}
