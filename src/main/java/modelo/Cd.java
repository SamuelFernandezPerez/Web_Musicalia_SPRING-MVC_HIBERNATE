package modelo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Cd {
	@NotEmpty
	@Size( min = 1, max = 40, message = "titulo debe tener entre 1 y 40 caracteres")
	@Pattern(regexp = "^[a-zA-Z áéíóúÁÉÍÓÚñÑ0-9]{1,40}$", message = "solo letras, numeros y espacios")
	private String titulo;
	
	@NotEmpty
	@Size( min = 1, max = 40, message = "artista debe tener entre 1 y 40 caracteres")
	@Pattern(regexp = "^[a-zA-Z ().,áéíóúÁÉÍÓÚñÑ0-9]{1,40}$", message = "solo letras, numeros, comas, parentesis, puntos y espacios")
	private String artista;
	
	@NumberFormat(style = Style.CURRENCY, pattern = "#,###.###")
	@Min(value = 15, message = "la duracion minima es de 15 minutos")
	@Max(value = 300, message = "la duración maxima es de 300 minutos")
	private double duracion;
	
	@NumberFormat(style = Style.CURRENCY, pattern = "#,###.###")
	@Min(value = 1, message = "el numero de canciones minimo es una")
	@Max(value = 999, message = "el numero de canciones maximo es 50")
	private int numeroCanciones;
	
	@NumberFormat(style = Style.CURRENCY, pattern = "#,###.###")
	@Min(value = 1, message = "el precio minimo es un euro")
	@Max(value = 999, message = "el precio maximo es 999 euros")
	private double precio;
	
	@NotEmpty
	@Size( min = 1, max = 50, message = "productora debe tener entre 1 y 50 caracteres")
	@Pattern(regexp = "^[a-zA-Z áéíóúÁÉÍÓÚñÑ0-9]{1,50}$", message = "solo letras, numeros y espacios")
	private String productora;
	
	private boolean alta;
	
	@Column(nullable = true)
	private Date fechaImagenPortada;
	
	@Column(nullable = true)
	private Date fechaImagenPortada2;
	
	@Column(nullable = true)
	private Date fechaImagenPortada3;
	
	//vamos a indicar que uno mas  cds 
	//este asociado a una categoria
	//
	@ManyToOne(targetEntity = Categoria.class, optional = false, fetch = FetchType.EAGER)
	private Categoria categoria;
	
	@Transient
	private int idCategoria;
	
	@Transient //con @Transient, el siguiente campo es ignorado por hibernate
	private MultipartFile portada;
	
	@Transient //con @Transient, el siguiente campo es ignorado por hibernate
	private MultipartFile portada2;
	@Transient //con @Transient, el siguiente campo es ignorado por hibernate
	private MultipartFile portada3;

	@Id
	@GeneratedValue
	private int id;
	
	public Cd() {
		// TODO Auto-generated constructor stub
	}



	public Cd(String titulo, String artista, double duracion, int numeroCanciones, double precio, String productora,
			boolean alta, Date fechaImagenPortada, Date fechaImagenPortada2, Date fechaImagenPortada3, Categoria categoria, int idCategoria, MultipartFile portada,
			MultipartFile portada2, MultipartFile portada3, int id) {
		super();
		this.titulo = titulo;
		this.artista = artista;
		this.duracion = duracion;
		this.numeroCanciones = numeroCanciones;
		this.precio = precio;
		this.productora = productora;
		this.alta = alta;
		this.fechaImagenPortada = fechaImagenPortada;
		this.fechaImagenPortada2 = fechaImagenPortada2;
		this.fechaImagenPortada3 = fechaImagenPortada3;
		this.categoria = categoria;
		this.idCategoria = idCategoria;
		this.portada = portada;
		this.portada2 = portada2;
		this.portada3 = portada3;
		this.id = id;
	}





	public Cd(String titulo, String artista, double duracion, int numeroCanciones, double precio, String productora,
			boolean alta, Date fechaImagenPortada, Date fechaImagenPortada2, Date fechaImagenPortada3, Categoria categoria, int idCategoria, MultipartFile portada,
			MultipartFile portada2, MultipartFile portada3) {
		super();
		this.titulo = titulo;
		this.artista = artista;
		this.duracion = duracion;
		this.numeroCanciones = numeroCanciones;
		this.precio = precio;
		this.productora = productora;
		this.alta = alta;
		this.fechaImagenPortada = fechaImagenPortada;
		this.fechaImagenPortada2 = fechaImagenPortada2;
		this.fechaImagenPortada3 = fechaImagenPortada3;
		this.categoria = categoria;
		this.idCategoria = idCategoria;
		this.portada = portada;
		this.portada2 = portada2;
		this.portada3 = portada3;
	}


	public Cd(String titulo, String artista, double duracion, int numeroCanciones, double precio, String productora,
			boolean alta, Categoria categoria) {
		super();
		this.titulo = titulo;
		this.artista = artista;
		this.duracion = duracion;
		this.numeroCanciones = numeroCanciones;
		this.precio = precio;
		this.productora = productora;
		this.alta = alta;
		this.categoria = categoria;
	}

	public Cd(int id, String titulo, double precio) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.precio = precio;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getArtista() {
		return artista;
	}

	public void setArtista(String artista) {
		this.artista = artista;
	}

	public double getDuracion() {
		return duracion;
	}

	public void setDuracion(double duracion) {
		this.duracion = duracion;
	}

	public int getNumeroCanciones() {
		return numeroCanciones;
	}

	public void setNumeroCanciones(int numeroCanciones) {
		this.numeroCanciones = numeroCanciones;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public String getProductora() {
		return productora;
	}

	public void setProductora(String productora) {
		this.productora = productora;
	}

	public MultipartFile getPortada() {
		return portada;
	}

	public void setPortada(MultipartFile portada) {
		this.portada = portada;
	}

	public MultipartFile getPortada2() {
		return portada2;
	}

	public void setPortada2(MultipartFile portada2) {
		this.portada2 = portada2;
	}

	public MultipartFile getPortada3() {
		return portada3;
	}

	public void setPortada3(MultipartFile portada3) {
		this.portada3 = portada3;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	public int getIdCategoria() {
		return idCategoria;
	}

	public void setIdCategoria(int idCategoria) {
		this.idCategoria = idCategoria;
	}

	public Date getFechaImagenPortada() {
		return fechaImagenPortada;
	}

	public void setFechaImagenPortada(Date fechaImagenPortada) {
		this.fechaImagenPortada = fechaImagenPortada;
	}
	public Date getFechaImagenPortada2() {
		return fechaImagenPortada2;
	}

	public void setFechaImagenPortada2(Date fechaImagenPortada2) {
		this.fechaImagenPortada2 = fechaImagenPortada2;
	}
	public Date getFechaImagenPortada3() {
		return fechaImagenPortada3;
	}

	public void setFechaImagenPortada3(Date fechaImagenPortada3) {
		this.fechaImagenPortada3 = fechaImagenPortada3;
	}

	public boolean isAlta() {
		return alta;
	}

	public void setAlta(boolean alta) {
		this.alta = alta;
	}

	
	
	

}