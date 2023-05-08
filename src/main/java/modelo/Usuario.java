package modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
@Entity
public class Usuario {

	private String nombre;
	private String apellidos;
	private String pass;
	private String email;
	private int edad;
	
	@OneToOne
	private Carrito carrito;
	
	@Id
	@GeneratedValue
	private int id;
	
	public Usuario() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Usuario(String nombre, String apellidos, String pass, String email, int edad) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.pass = pass;
		this.email = email;
		this.edad = edad;
	}
	public Usuario(int id, String nombre, String apellidos, String pass, String email, int edad) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.pass = pass;
		this.email = email;
		this.edad = edad;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}
	
	public Carrito getCarrito() {
		return carrito;
	}
	public void setCarrito(Carrito carrito) {
		this.carrito = carrito;
	}
	@Override
	public String toString() {
		return "Usuario [id=" + id + ", nombre=" + nombre + ", apellidos=" + apellidos + ", pass=" + pass + ", email="
				+ email + ", edad=" + edad + "]";
	}

	
	
}
