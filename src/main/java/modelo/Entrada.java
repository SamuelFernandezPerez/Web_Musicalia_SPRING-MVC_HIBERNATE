package modelo;

public class Entrada {
	
	private int id;
	private String nombreArtista;
	private String lugar;
	private String hora;
	private String dia;
	private Double precio;
	public Entrada() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Entrada(int id, String nombreArtista, String lugar, String hora, String dia, Double precio) {
		super();
		this.id = id;
		this.nombreArtista = nombreArtista;
		this.lugar = lugar;
		this.hora = hora;
		this.dia = dia;
		this.precio = precio;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombreArtista() {
		return nombreArtista;
	}
	public void setNombreArtista(String nombreArtista) {
		this.nombreArtista = nombreArtista;
	}
	public String getLugar() {
		return lugar;
	}
	public void setLugar(String lugar) {
		this.lugar = lugar;
	}
	public String getHora() {
		return hora;
	}
	public void setHora(String hora) {
		this.hora = hora;
	}
	public String getDia() {
		return dia;
	}
	public void setDia(String dia) {
		this.dia = dia;
	}
	public Double getPrecio() {
		return precio;
	}
	public void setPrecio(Double precio) {
		this.precio = precio;
	}
	@Override
	public String toString() {
		return "Entrada [id=" + id + ", nombreArtista=" + nombreArtista + ", lugar=" + lugar + ", hora=" + hora
				+ ", dia=" + dia + ", precio=" + precio + "]";
	}
	
	
}
