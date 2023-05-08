package modelo;

public class Camiseta {
	private int id;
	private String nombreArtista;
	private String color;
	private double precio;
	private String corte;
	private String formaCuello;
	private String manga;

	public Camiseta() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Camiseta(int id, String nombreArtista, String color, double precio, String corte, String formaCuello,
			String manga) {
		super();
		this.id = id;
		this.nombreArtista = nombreArtista;
		this.color = color;
		this.precio = precio;
		this.corte = corte;
		this.formaCuello = formaCuello;
		this.manga = manga;
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

	public String getManga() {
		return manga;
	}

	public void setManga(String manga) {
		this.manga = manga;
	}

	@Override
	public String toString() {
		return "Camiseta [id=" + id + ", nombreArtista=" + nombreArtista + ", color=" + color + ", precio=" + precio
				+ ", corte=" + corte + ", formaCuello=" + formaCuello + ", manga=" + manga + "]";
	}

}
