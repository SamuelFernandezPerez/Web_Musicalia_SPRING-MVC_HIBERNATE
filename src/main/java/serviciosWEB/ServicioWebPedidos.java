package serviciosWEB;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;

import datos.servicioWEB.ResumenPedido;
import modelo.Usuario;
import servicios.ServicioPedidos;

@Controller
@RequestMapping("ServicioWebPedidos/")
public class ServicioWebPedidos {
	
	@Autowired
	private ServicioPedidos servicioPedidos;
	
	@RequestMapping("paso1")
	public ResponseEntity<String> paso1(String nombre, String direccion, String provincia, String telefono, String cp, HttpServletRequest request){
		String respuesta = "";
		servicioPedidos.procesarPaso1(nombre, direccion, provincia, telefono, cp,
				(Usuario)request.getSession().getAttribute("usuario") );
		respuesta = "ok";
		return new ResponseEntity<String>(respuesta,HttpStatus.OK);
	}
	@RequestMapping("paso2")
	public ResponseEntity<String> paso2(String titular, String numero, HttpServletRequest request){
		String respuesta = "";
		servicioPedidos.procesarPaso2(titular, numero,
				(Usuario)request.getSession().getAttribute("usuario") );
		respuesta = "ok";
		return new ResponseEntity<String>(respuesta,HttpStatus.OK);
	}//end paso2
	@RequestMapping("paso3")
	public ResponseEntity<String> paso3(String observaciones,  HttpServletRequest request){
		//como este es el ultimo paso, si todo ha ido bien, aprovechamos
		//y devolvemos a la parte cliente un resumen del pedido completo, 
		//para que el usuario lo confirme
		String respuesta = "";
		Usuario u = (Usuario)request.getSession().getAttribute("usuario");
		servicioPedidos.procesarPaso3(observaciones, 
				u
				);
		ResumenPedido resumen = servicioPedidos.obtenerResumenDelPedido(
				u
				);
		respuesta = "ok:"+new Gson().toJson(resumen);		
		
		return new ResponseEntity<String>(respuesta,HttpStatus.OK);
	}//end paso3
	
	@RequestMapping("confirmarPedido")
	public ResponseEntity<String> confirmarPedido(HttpServletRequest request){
		String respuesta = "";
		servicioPedidos.confirmarPedido(
				(Usuario)request.getSession().getAttribute("usuario")
				);
		respuesta = "pedido completado, puedes seguir comprando";
		return new ResponseEntity<String>(respuesta,HttpStatus.OK);
	}//end confirmar
}
