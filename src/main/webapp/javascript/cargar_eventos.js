function cargarEventos(){

	$("#inicio").click(function(){
		refresca_inicio();
		$("#contenedor").html(plantillas.inicio);
	});
	$("#productos").click(function(){
		mostrar_productos();
	});

	$("#carrito").click(function(){
		mostrar_productos_carrito();
	});

	$("#login").click(function(){
		$("#contenedor").html(plantillas.login);
		if( typeof(Cookies.get("email")) != "undefined" ){
			$("#email").val(Cookies.get("email"));
		}
		if( typeof(Cookies.get("pass")) != "undefined" ){
			$("#pass").val(Cookies.get("pass"));
		}
		
		$("#form_login").submit(function(e){
			e.preventDefault();
			identificar_usuario();
		});
	});
	$("#registrarme").click(function(){
		$("#contenedor").html(plantillas.registrarme);
		$("#form_registro_usuario").submit(function(e){
			//este codigo se ejecuta cuando se 
			//pulsa el boton de submit del form 
			e.preventDefault();//se cancela el envio de form de forma tradicional
			//forma nueva para mandar directamente toda la informacion de un form
			//que tenga o no, uno o mas input type file
			let formulario = this;
			let formData = new FormData(formulario);
			//validar los campos del formulario
			//de formData puedo obtener el input que quiera
			//por su name, no su id
			if( !validarNombre(formData.get("nombre")) ||
				!validarEmail(formData.get("email")) ||
				!validarPass(formData.get("pass"))
			 ){
				return false;
			}
			$.ajax("ServicioWebUsuarios/registrarUsuario",{
				type: "POST",
				data: formData,
				cache: false,
				contentType: false,
				processData: false,
				success: function(res){
					if(res == "ok"){
						alert("ya puedes identificarte con tus datos");
						identificar_usuario();
					}else{
						alert(res);	
					}//end else
				}//end success
			});							
		});//end submit
	});//end click

	$("#logout").click(function(e){
		logout();		
	});//end click logout	
}//cargar eventos
