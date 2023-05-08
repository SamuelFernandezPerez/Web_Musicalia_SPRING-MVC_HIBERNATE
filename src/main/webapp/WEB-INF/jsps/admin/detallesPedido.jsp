<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Musicalia</title>
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<br>
<h1 class="mt-28 w-[50rem] m-auto rounded-lg bg-[#0f172a] p-3 my-10 text-white text-3xl lg:text-4xl text-center" style="font-family: 'Dancing Script', cursive, sans-serif;">
        Estado del pedido:
    </h1>
<div class="text-center">
		<select class="bg-teal-500 text-white text-lg" id="select_estado">
			<c:forEach var="estado" items="${estados}">
				<option 
				
					<c:if test="${ estado.key == pedido.estado }">
						selected
					</c:if>
				
					value="${estado.key}"
				> ${estado.value} </option>
			</c:forEach>
		</select>
</div>
 <h1 class=" w-[50rem] m-auto rounded-lg bg-[#0f172a] p-3 my-10 text-white text-3xl lg:text-4xl text-center" style="font-family: 'Dancing Script', cursive, sans-serif;">
        Productos del pedido:
    </h1>
<div class="w-full">
<c:forEach var="pp" items="${pedido.productosPedido}">
	<table class="min-w-max w-[50rem] m-auto table-auto shadow-xl">
  		<thead>
   			 <tr class="bg-[#0f766e] text-white uppercase text-sm leading-normal">
     			<th class="text-lg py-3 px-6 text-center">Titulo</th>
      			<th class="text-lg py-3 px-6 text-center">Precio/Unidad</th>
     	 		<th class="text-lg py-3 px-6 text-center">Cantidad</th>
    		</tr>
  		</thead>
  		<tbody class="text-[#0f172a] text-sm font-light">

   	 		<tr class="border-b border-[#0f766e] hover:bg-gray-200 bg-white">
   	 			<td class="text-lg py-3 px-6 text-center whitespace-nowrap">${pp.cd.titulo}</td>
      			<td class=" text-lg py-3 px-6 text-center whitespace-nowrap"> ${pp.cd.precio}</td>
      			<td id-producto="{{cd_id}}" class="text-lg py-3 px-6 text-center whitespace-nowrap">${pp.cantidad}</td>
    		</tr>	
  		</tbody>
	</table>
	</c:forEach>	
</div>
<br>
 <h1 class="mt-10 w-[50rem] m-auto rounded-lg bg-[#0f172a] p-3 my-10 text-white text-3xl lg:text-4xl text-center" style="font-family: 'Dancing Script', cursive, sans-serif;">
        Datos del cliente:
    </h1>
<div class="w-full">
	<table class="min-w-max w-[50rem] m-auto table-auto shadow-xl">
  		<thead>
   			 <tr class="bg-[#0f766e] text-white uppercase text-sm leading-normal">
   			 	<th class="text-lg py-3 px-6 text-center">Nombre completo</th>
    		</tr>
  		</thead>
  		<tbody class="text-[#0f172a] text-sm font-light">

   	 		<tr class="border-b border-[#0f766e] hover:bg-gray-200 bg-white">
      			<td class=" text-lg py-3 px-6 text-center whitespace-nowrap">${pedido.nombreCompleto}</td>
   			</tr>	
  		</tbody>
	</table>
		<table class="min-w-max w-[50rem] m-auto table-auto shadow-xl">
  		<thead>
   			 <tr class="bg-[#0f766e] text-white uppercase text-sm leading-normal">
   			 	<th class="text-lg py-3 px-6 text-center">Direccion</th>
    		</tr>
  		</thead>
  		<tbody class="text-[#0f172a] text-sm font-light">

   	 		<tr class="border-b border-[#0f766e] hover:bg-gray-200 bg-white">
      			<td class=" text-lg py-3 px-6 text-center whitespace-nowrap">${pedido.direccion}</td>
   			</tr>	
  		</tbody>
	</table>
		<table class="min-w-max w-[50rem] m-auto table-auto shadow-xl">
  		<thead>
   			 <tr class="bg-[#0f766e] text-white uppercase text-sm leading-normal">
   			 	<th class="text-lg py-3 px-6 text-center">Provincia</th>
    		</tr>
  		</thead>
  		<tbody class="text-[#0f172a] text-sm font-light">

   	 		<tr class="border-b border-[#0f766e] hover:bg-gray-200 bg-white">
      			<td class=" text-lg py-3 px-6 text-center whitespace-nowrap">${pedido.provincia}</td>
   			</tr>	
  		</tbody>
	</table>
		<table class="min-w-max w-[50rem] m-auto table-auto shadow-xl">
  		<thead>
   			 <tr class="bg-[#0f766e] text-white uppercase text-sm leading-normal">
   			 	<th class="text-lg py-3 px-6 text-center">Telefono</th>
    		</tr>
  		</thead>
  		<tbody class="text-[#0f172a] text-sm font-light">

   	 		<tr class="border-b border-[#0f766e] hover:bg-gray-200 bg-white">
      			<td class=" text-lg py-3 px-6 text-center whitespace-nowrap">${pedido.telefono}</td>
   			</tr>	
  		</tbody>
	</table>
		<table class="min-w-max w-[50rem] m-auto table-auto shadow-xl">
  		<thead>
   			 <tr class="bg-[#0f766e] text-white uppercase text-sm leading-normal">
   			 	<th class="text-lg py-3 px-6 text-center">Codigo postal</th>
    		</tr>
  		</thead>
  		<tbody class="text-[#0f172a] text-sm font-light">

   	 		<tr class="border-b border-[#0f766e] hover:bg-gray-200 bg-white">
      			<td class=" text-lg py-3 px-6 text-center whitespace-nowrap">${pedido.cp}</td>
   			</tr>	
  		</tbody>
	</table>
</div>
<br>
 <h1 class=" w-[50rem] m-auto rounded-lg bg-[#0f172a] p-3 my-10 text-white text-3xl lg:text-4xl text-center" style="font-family: 'Dancing Script', cursive, sans-serif;">
        Datos de pago:
    </h1>
<div class="w-full">
	<table class="min-w-max w-[50rem] m-auto table-auto shadow-xl">
  		<thead>
   			 <tr class="bg-[#0f766e] text-white uppercase text-sm leading-normal">
   			 	<th class="text-lg py-3 px-6 text-center">Titular tarjeta</th>
    		</tr>
  		</thead>
  		<tbody class="text-[#0f172a] text-sm font-light">

   	 		<tr class="border-b border-[#0f766e] hover:bg-gray-200 bg-white">
      			<td class=" text-lg py-3 px-6 text-center whitespace-nowrap">${pedido.titularTarjeta}</td>
   			</tr>	
  		</tbody>
	</table>
		<table class="min-w-max w-[50rem] m-auto table-auto shadow-xl">
  		<thead>
   			 <tr class="bg-[#0f766e] text-white uppercase text-sm leading-normal">
   			 	<th class="text-lg py-3 px-6 text-center">Numero de tarjeta</th>
    		</tr>
  		</thead>
  		<tbody class="text-[#0f172a] text-sm font-light">

   	 		<tr class="border-b border-[#0f766e] hover:bg-gray-200 bg-white">
      			<td class=" text-lg py-3 px-6 text-center whitespace-nowrap">${pedido.numeroTarjeta}</td>
   			</tr>	
  		</tbody>
	</table>		
</div>
<br>
<h1 class=" w-[50rem] m-auto rounded-lg bg-[#0f172a] p-3 my-10 text-white text-3xl lg:text-4xl text-center" style="font-family: 'Dancing Script', cursive, sans-serif;">
        Observaciones:
    </h1>
<div class="w-full">
	<table class="min-w-max w-[50rem] m-auto table-auto shadow-xl">
  		<thead>
   			 <tr class="bg-[#0f766e] text-white uppercase text-sm leading-normal">
   			 	<th class="text-lg py-3 px-6 text-center">Observaciones</th>
    		</tr>
  		</thead>
  		<tbody class="text-[#0f172a] text-sm font-light">

   	 		<tr class="border-b border-[#0f766e] hover:bg-gray-200 bg-white">
      			<td class=" text-lg py-3 px-6 text-center whitespace-nowrap">${pedido.observaciones}</td>
   			</tr>	
  		</tbody>
	</table>		
</div>
<br>
	
<input type="hidden" id="id_pedido" value="${pedido.id}"/>
	
<script type="text/javascript" src="../librerias_js/jquery.js" ></script>
<script type="text/javascript">
	$("#select_estado").change(function(e){
		//obtener el estado seleccionado y mandarlo a un servicio web
		let estado = $(this).find(":selected").val();
		let idPedido = $("#id_pedido").val();
		$.post("ServicioWebPedidosAdmin/actualizarEstadoPedido",
				{
					id: idPedido,
					estado : estado
				}
		).done(function(res){
			alert(res);
		});
	});//end change
</script>

</body>
</html>
