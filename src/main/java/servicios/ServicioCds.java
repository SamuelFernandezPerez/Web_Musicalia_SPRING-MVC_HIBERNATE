package servicios;

import java.util.List;

import modelo.Cd;


public interface ServicioCds {
	
public void registarCd (Cd c);
public List<Cd> obtenerCds(String titulo, int comienzo);
public  void borrarCd(int id); 
public  void editarCd(Cd c, int id);
public Cd obtenerCdsPorId(int id);
public void guardarCambiosCd(Cd c);
public int obtenerTotalDeCds(String titulo);



}
