package controladores.admin;


import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import constantes.Paginacion;
import modelo.Cd;
import servicios.ServicioCategorias;
import servicios.ServicioCds;
import utilidadesArchivos.GestorArchivos;

@Controller
@RequestMapping("/admin/")
public class CdsControllerAdmin {
	
	@Autowired
	private ServicioCds ServiciosCd;
	
	@Autowired
	private ServicioCategorias servicioCategorias;

	@RequestMapping("gestionarCds")
	public String gestionarCds(Model model, @RequestParam(defaultValue = "") String titulo,  @RequestParam(defaultValue = "0" ) String comienzo) {
		
		int comienzo_int = Integer.parseInt(comienzo);
		
		System.out.println("mostrar resultados desde: " + comienzo_int);
		
		model.addAttribute("cds",ServiciosCd.obtenerCds(titulo,comienzo_int));
		model.addAttribute("titulo",titulo);
		model.addAttribute("siguiente", 
				comienzo_int + Paginacion.RESULTADOS_POR_PAGINA);
		model.addAttribute("anterior",
				comienzo_int - Paginacion.RESULTADOS_POR_PAGINA);
		model.addAttribute("total",ServiciosCd.obtenerTotalDeCds(titulo));
		return "admin/gestionarCds";
	}
	
	@RequestMapping("nuevoCd")
	public String nuevoCd(Model model) {	
		Cd cd = new Cd();
		cd.setAlta(true);
		model.addAttribute("nuevoCd",cd);
		model.addAttribute("categorias", 
				servicioCategorias.obtenerCategoriasParaDesplegable());
		return "admin/formRegistroCd";
	}
	@RequestMapping("borrarCd")
	public String borrarCd(String idBorrar, Model model, HttpServletRequest request) {
		ServiciosCd.borrarCd(Integer.parseInt(idBorrar));
		String rutaRealDelProyecto = request.getServletContext().getRealPath("");
		GestorArchivos.borrarPortadaCd(idBorrar, rutaRealDelProyecto);
		return gestionarCds(model, "", "0");
	}	
	@RequestMapping("guardarNuevoCd")
	public String guardarNuevoCd( @ModelAttribute("nuevoCd") @Valid Cd nuevoCd , BindingResult br,  Model model, HttpServletRequest request ) {
		if( ! br.hasErrors()) {
			if(nuevoCd.getPortada().getSize() != 0) {
				nuevoCd.setFechaImagenPortada(new Date());
			}
			if(nuevoCd.getPortada2().getSize() != 0) {
				nuevoCd.setFechaImagenPortada2(new Date());
			}
			if(nuevoCd.getPortada3().getSize() != 0) {
				nuevoCd.setFechaImagenPortada3(new Date());
			}
			ServiciosCd.registarCd(nuevoCd);
			String rutaRealDelProyecto = 
					request.getServletContext().getRealPath("");		
			GestorArchivos.guardarPortadaCd(nuevoCd, rutaRealDelProyecto);
			GestorArchivos.guardarPortada2Cd(nuevoCd, rutaRealDelProyecto);
			GestorArchivos.guardarPortada3Cd(nuevoCd, rutaRealDelProyecto);
			return gestionarCds(model,"","0");
		}else {
			model.addAttribute("nuevoCd", nuevoCd);
			model.addAttribute("categorias", 
					servicioCategorias.obtenerCategoriasParaDesplegable());
			return "admin/formRegistroCd";
		}
	}
	@RequestMapping("editarCd")
	public String editarCd(String idEditar, Model model) {
		Cd c = ServiciosCd.obtenerCdsPorId(Integer.parseInt(idEditar));
		Map<String, String> mapCategorias = 
				servicioCategorias.obtenerCategoriasParaDesplegable();
		c.setIdCategoria(c.getCategoria().getId());
		model.addAttribute("cd",c);
		model.addAttribute("categorias",mapCategorias);
		return "admin/formEditarCd";		
	}
	@RequestMapping("actualizarCd")
	public String actualizarCD(Cd cd,Model model, HttpServletRequest request) {
		if(cd.getPortada().getSize() != 0) {
			cd.setFechaImagenPortada(new Date());
		}	
		if(cd.getPortada2().getSize() != 0) {
			cd.setFechaImagenPortada2(new Date());
		}
		if(cd.getPortada3().getSize() != 0) {
			cd.setFechaImagenPortada3(new Date());
		}
		ServiciosCd.guardarCambiosCd(cd);
		String rutaRealDelProyecto = 
				request.getServletContext().getRealPath("");		
		GestorArchivos.guardarPortadaCd(cd, rutaRealDelProyecto);
		GestorArchivos.guardarPortada2Cd(cd, rutaRealDelProyecto);
		GestorArchivos.guardarPortada3Cd(cd, rutaRealDelProyecto);
		return gestionarCds(model,"","0");
	}

}
