package datos.servicioWEB;

import java.util.List;

import modelo.Cd;


public class RespuestaCds {
	
	private int total;
	private List<Cd> cds;
	
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public List<Cd> getCds() {
		return cds;
	}
	public void setCds(List<Cd> cds) {
		this.cds = cds;
	}

	
}