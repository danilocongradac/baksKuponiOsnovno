package baksKuponi;


// samo POJO class
public class Kupon {
	int id;
	boolean iskoriscen;
	boolean crven;
	String naslov;
	String kratakOpis;
	String dugOpis;
	String brojKoriscenjaTekst;
	int brojKoriscenja;
	int brojKoriscenjaMaks;
	
	Kupon(){
		id = -1;
		this.iskoriscen = false;
		this.crven = false;
		this.naslov = "";
		this.kratakOpis = "";
		this.dugOpis = "";
		this.brojKoriscenjaTekst = "";
		this.brojKoriscenja = 0;
		this.brojKoriscenjaMaks = 1;
	}	
	
	Kupon(int id_,boolean crven_, String naslov_, String kratakOpis_,String dugOpis_,String brojKoriscenjaTekst_, int brojKoriscenjaMaks_){
		this.id = id_;
		this.iskoriscen = false;
		this.crven = crven_;
		this.naslov = naslov_;
		this.kratakOpis = kratakOpis_;
		this.dugOpis = dugOpis_;
		this.brojKoriscenjaTekst = brojKoriscenjaTekst_;
		this.brojKoriscenjaMaks = brojKoriscenjaMaks_;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public boolean isIskoriscen() {
		return iskoriscen;
	}

	public void setIskoriscen(boolean used) {
		this.iskoriscen = used;
	}

	public boolean isCrven() {
		return crven;
	}

	public void setCrven(boolean crven) {
		this.crven = crven;
	}

	public String getNaslov() {
		return naslov;
	}

	public void setNaslov(String naslov) {
		this.naslov = naslov;
	}

	public String getKratakOpis() {
		return kratakOpis;
	}

	public void setKratakOpis(String kratakOpis) {
		this.kratakOpis = kratakOpis;
	}

	public String getDugOpis() {
		return dugOpis;
	}

	public void setDugOpis(String dugOpis) {
		this.dugOpis = dugOpis;
	}

	public String getBrojKoriscenjaTekst() {
		return brojKoriscenjaTekst;
	}

	public void setBrojKoriscenjaTekst(String brojKoriscenjaTekst) {
		this.brojKoriscenjaTekst = brojKoriscenjaTekst;
	}

	public int getBrojKoriscenja() {
		return brojKoriscenja;
	}

	public void setBrojKoriscenja(int brojKoriscenja) {
		this.brojKoriscenja = brojKoriscenja;
	}

	public int getBrojKoriscenjaMaks() {
		return brojKoriscenjaMaks;
	}

	public void setBrojKoriscenjaMaks(int brojKoriscenjaMaks) {
		this.brojKoriscenjaMaks = brojKoriscenjaMaks;
	}

	@Override
	public String toString() {
		return "Kupon [id=" + id + ", iskoriscen=" + iskoriscen + ", crven=" + crven + ", naslov=" + naslov
				+ ", kratakOpis=" + kratakOpis + ", dugOpis=" + dugOpis + ", brojKoriscenjaTekst=" + brojKoriscenjaTekst
				+ ", brojKoriscenja=" + brojKoriscenja + ", brojKoriscenjaMaks=" + brojKoriscenjaMaks + "]";
	}
}
