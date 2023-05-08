package utilidadesArchivos;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import modelo.Cd;
import modelo.Usuario;


public class GestorArchivos {

	public static void guardarPortadaCd(Cd c, String rutaReal) {
		String nombreArchivo = c.getId() + ".jpg";
		String rutaSubidas = rutaReal + "/subidas";
		//si rutaSubidas no existe, crearla:
		File fileRutaSubidas = new File(rutaSubidas);
		if( ! fileRutaSubidas.exists() ) {
			fileRutaSubidas.mkdirs();
		}
		//si existe el archivo subido
		if(c.getPortada().getSize() > 0) {
			try {
				c.getPortada().transferTo(new File(rutaSubidas,nombreArchivo));
				System.out.println("archivo movido a: " + rutaSubidas);
			} catch (IllegalStateException | IOException e) {
				System.out.println("no pude mover el archivo a la ruta de subidas");
				e.printStackTrace();
			}
		}else {
			System.out.println("se subio un cd sin portada, no hay problema,"
					+ "de momento la imagen es opcional");
		}
		
		
	}
	public static void guardarPortada2Cd(Cd c, String rutaReal) {
		String nombreArchivo = c.getId() + "-portada2.jpg";
		String rutaSubidas = rutaReal + "/subidas";
		//si rutaSubidas no existe, crearla:
		File fileRutaSubidas = new File(rutaSubidas);
		if( ! fileRutaSubidas.exists() ) {
			fileRutaSubidas.mkdirs();
		}
		//si existe el archivo subido
		if(c.getPortada2().getSize() > 0) {
			try {
				c.getPortada2().transferTo(new File(rutaSubidas,nombreArchivo));
				System.out.println("archivo movido a: " + rutaSubidas);
			} catch (IllegalStateException | IOException e) {
				System.out.println("no pude mover el archivo a la ruta de subidas");
				e.printStackTrace();
			}
		}else {
			System.out.println("se subio un cd sin portada, no hay problema,"
					+ "de momento la imagen es opcional");
		}
		
		
	}
	public static void guardarPortada3Cd(Cd c, String rutaReal) {
		String nombreArchivo = c.getId() + "-portada3.jpg";
		String rutaSubidas = rutaReal + "/subidas";
		//si rutaSubidas no existe, crearla:
		File fileRutaSubidas = new File(rutaSubidas);
		if( ! fileRutaSubidas.exists() ) {
			fileRutaSubidas.mkdirs();
		}
		//si existe el archivo subido
		if(c.getPortada3().getSize() > 0) {
			try {
				c.getPortada3().transferTo(new File(rutaSubidas,nombreArchivo));
				System.out.println("archivo movido a: " + rutaSubidas);
			} catch (IllegalStateException | IOException e) {
				System.out.println("no pude mover el archivo a la ruta de subidas");
				e.printStackTrace();
			}
		}else {
			System.out.println("se subio un cd sin portada, no hay problema,"
					+ "de momento la imagen es opcional");
		}
		
		
	}
	public static boolean borrarPortadaCd(String idCd, String rutaReal) {
		File f = new File(rutaReal + "/subidas/" + idCd + ".jpg");
		if  (f.delete()) {
			System.out.println("archivo borrado correctamente");
			return true;
		} else {
			System.out.println("no se puedo borrar el archivo");
			return false;
		}
	}
	public static void guardarFotoUsuario(Usuario u, CommonsMultipartFile foto, String rutaRealDelProyecto) {
		String nombreArchivo = "u" + u.getId() + ".jpg";
		String rutaSubidas = rutaRealDelProyecto + "/subidas";
		//si rutaSubidas no existe, crearla:
		File fileRutaSubidas = new File(rutaSubidas);
		if( ! fileRutaSubidas.exists() ) {
			fileRutaSubidas.mkdirs();
		}
		//si existe el archivo subido
		if(foto.getSize() > 0) {
			try {
				foto.transferTo(new File(rutaSubidas,nombreArchivo));
				System.out.println("archivo movido a: " + rutaSubidas);
			} catch (IllegalStateException | IOException e) {
				System.out.println("no pude mover el archivo a la ruta de subidas");
				e.printStackTrace();
			}
		}else {
			System.out.println("se subio un usuario sin foto");
		}
	}//end guardarFotoUsuario
	
}
