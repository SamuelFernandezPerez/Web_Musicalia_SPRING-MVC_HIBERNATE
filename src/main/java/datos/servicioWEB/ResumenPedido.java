package datos.servicioWEB;

import java.util.List;
import java.util.Map;

//respuesta desde ServicioWEBPedidos
//indicando el resumen del pedido realizado por el usuario
public class ResumenPedido {

	private List<Map<String, Object>> cds;
	
	//paso1	
	private String nombreCompleto;
	private String direccion;
	private String provincia;
	private String telefono;
	private String cp;
	private String observaciones;
	
	//paso2
	private String titularTarjeta;
	private String numeroTarjeta;
	
	public List<Map<String, Object>> getCds() {
		return cds;
	}
	public void setCds(List<Map<String, Object>> cds) {
		this.cds = cds;
	}
	public String getNombreCompleto() {
		return nombreCompleto;
	}
	public void setNombreCompleto(String nombreCompleto) {
		this.nombreCompleto = nombreCompleto;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getProvincia() {
		return provincia;
	}
	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}
	public String getTitularTarjeta() {
		return titularTarjeta;
	}
	public void setTitularTarjeta(String titularTarjeta) {
		this.titularTarjeta = titularTarjeta;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getCp() {
		return cp;
	}
	public void setCp(String cp) {
		this.cp = cp;
	}
	public String getNumeroTarjeta() {
		return numeroTarjeta;
	}
	public void setNumeroTarjeta(String numeroTarjeta) {
		this.numeroTarjeta = numeroTarjeta;
	}
	public String getObservaciones() {
		return observaciones;
	}
	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}
	
}
