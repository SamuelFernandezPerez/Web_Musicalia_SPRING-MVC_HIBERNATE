package serviciosWEB;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;

import datos.servicioWEB.RespuestaCds;
import servicios.ServicioCds;

@Controller
@RequestMapping("ServicioWebCds/")
public class ServicioWebCds {

	@Autowired
	private ServicioCds servicioCds;
	
	@RequestMapping("obtenerCds")
	public ResponseEntity<String> obtenerCds(@RequestParam(defaultValue = "") String titulo,  @RequestParam(defaultValue = "0" ) String comienzo){
				
		RespuestaCds rc = new RespuestaCds();
		rc.setCds(servicioCds.obtenerCds
				(titulo,Integer.parseInt(comienzo)));
		rc.setTotal(servicioCds.obtenerTotalDeCds(titulo));		
		String respuesta = new Gson().toJson(rc);
		return new ResponseEntity<String>(respuesta,HttpStatus.OK);
		
	}
	@RequestMapping("obtenerCdPorId")
	public ResponseEntity<String> obtenerCdPorId(String id){
		String json = 
			new Gson().toJson(servicioCds.obtenerCdsPorId(Integer.parseInt(id)));
		return new ResponseEntity<String>(json,HttpStatus.OK);		
	}
	
}
