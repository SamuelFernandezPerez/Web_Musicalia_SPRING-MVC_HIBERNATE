package modelo;

public class Sudadera {
	private int id;
	private String nombreArtista;
	private String color;
	private double precio;
	private String corte;
	private String formaCuello;
	public Sudadera() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Sudadera(int id, String nombreArtista, String color, double precio, String corte, String formaCuello) {
		super();
		this.id = id;
		this.nombreArtista = nombreArtista;
		this.color = color;
		this.precio = precio;
		this.corte = corte;
		this.formaCuello = formaCuello;
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
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public String getCorte() {
		return corte;
	}
	public void setCorte(String corte) {
		this.corte = corte;
	}
	public String getFormaCuello() {
		return formaCuello;
	}
	public void setFormaCuello(String formaCuello) {
		this.formaCuello = formaCuello;
	}
	@Override
	public String toString() {
		return "Sudadera [id=" + id + ", nombreArtista=" + nombreArtista + ", color=" + color + ", precio=" + precio
				+ ", corte=" + corte + ", formaCuello=" + formaCuello + "]";
	}
	
	
}
