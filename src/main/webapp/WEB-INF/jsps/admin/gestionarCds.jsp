
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Musicalía</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>

</head>
<body >
<jsp:include page="menu.jsp"></jsp:include>

 	<h1 class="mt-28 w-[50rem] m-auto rounded-lg bg-[#0f172a] p-3 my-10 text-white text-3xl lg:text-4xl text-center" style="font-family: 'Dancing Script', cursive, sans-serif;">
        Zona de gestion CD,s
    </h1>
    
    <div class="grid grid-rows-1 grid-cols-3">
    	<div style="text-align: center;margin: 30px;font-size: 1.5em;">
			<h1 class=" inline-flex items-center px-4 py-2 text-lg font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-[#134e4a] focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-teal-500 dark:hover:bg-[#134e4a] dark:focus:[#134e4a]"><a href="nuevoCd">REGISTRAR CD</a></h1>	
		</div>
	<form action="gestionarCds">
		<div class=" m-auto text-center items-center">
			<input type="text" name="titulo" class="placeholder-gray-500 border" placeholder="Buscar por titulo">
		
			<input type="submit" value="BUSCAR" class="mt-10 inline-flex items-center px-4 py-2 text-1xl  font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-[#134e4a] focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-[#0f766e] dark:hover:bg-[#134e4a] dark:focus:[#134e4a]"/>
		</div>
	</form>
			<div class="mt-10 m-auto text-center ">
		<b>Total de cds: ${total}</b> <br>	
		</div>
	</div>
<div class="w-full mt-5">
<table class="min-w-max m-auto table-auto shadow-xl p-10">
  	<thead>
   		<tr class="bg-[#0f766e] text-white uppercase text-sm leading-normal">
   			<th class="text-lg py-3 px-5 text-center">Caratula</th>
      		<th class="text-lg py-3 px-5 text-center">Portada 1</th>
     		<th class="text-lg py-3 px-5 text-center">Portada 2</th>
     		<th class="text-lg py-3 px-5 text-center">Titulo</th>
      		<th class="text-lg py-3 px-5 text-center">Artista</th>
      		<th class="text-lg py-3 px-5 text-center">Duracion</th>
      		<th class="text-lg py-3 px-5 text-center">Nº canciones</th>
      		<th class="text-lg py-3 px-5 text-center">Precio</th>
      		<th class="text-lg py-3 px-5 text-center">Productora</th>
      		<th class="text-lg py-3 px-5 text-center">Categoria</th>
      		<th class="text-lg py-3 px-5 text-center">Borrar</th>
      		<th class="text-lg py-3 px-5 text-center">Editar</th>
      		<!-- <th class="text-lg py-3 px-6 text-center">Agregar texto</th>-->
    	</tr>
  	</thead>
  <tbody class="text-[#0f172a] text-sm font-light">
      	<c:forEach var="cd" items="${cds}" >
   	 		<tr class="border-b border-[#0f766e] hover:bg-gray-200 bg-white">
      			<td class="px-6 text-center whitespace-nowrap">${cd.portada}<img class="w-32 h-32  rounded-full shadow-lg my-2" src="../subidas/${cd.id}.jpg"/>
      			<td class="px-6 text-center whitespace-nowrap">${cd.portada}<img class="w-32 h-32 text-lg" src="../subidas/${cd.id}-portada2.jpg"/>
      			<td class="px-6 text-center whitespace-nowrap">${cd.portada}<img class="w-32 h-32 text-lg" src="../subidas/${cd.id}-portada3.jpg"/>
      			<td class="text-lg py-3 px-5 text-center whitespace-nowrap">${cd.titulo}</td>
      			<td class="text-lg py-3 px-5 text-center whitespace-nowrap">${cd.artista}</td>
      			<td class="text-lg py-3 px-5 text-center whitespace-nowrap">${cd.duracion}</td>
      			<td class="text-lg py-3 px-5 text-center whitespace-nowrap">${cd.numeroCanciones}</td>
      			<td class="text-lg py-3 px-5 text-center whitespace-nowrap">${cd.precio}</td>
    			<td class="text-lg py-3 px-5 text-center whitespace-nowrap">${cd.productora}</td>
    			<td class="text-lg py-3 px-5 text-center whitespace-nowrap">${cd.categoria.nombre}</td>
    			<td class="text-lg py-3 px-5 text-center whitespace-nowrap"><a class="rounded-lg bg-red-500 p-2 text-white font-bold hover:bg-red-700" onclick="return confirm('¿seguro?');" href="borrarCd?idBorrar=${cd.id}">Borrar</a></td>
    			<td class="text-lg py-3 px-5 text-center whitespace-nowrap"><a class="rounded-lg bg-orange-500 p-2 text-white font-bold hover:bg-orange-700" href="editarCd?idEditar=${cd.id}">Editar</a></td>
    			<!-- <td class="py-3 px-6 text-left whitespace-nowrap"><a class="rounded-lg bg-blue-500 p-2 text-white font-bold hover:bg-blue-700" href="agregarIdioma?idCd=${cd.id}" onclick="alert('mostrar formulario para registrar para el cd textos en otro idioma'); return false;"> agregar textos en otro idioma</a>-->
    		</tr>
    	</c:forEach>
  </tbody>
</table>


<div class="mt-10 mb-10 m-auto items-center text-center">
	<c:if test="${ anterior >= 0 }">
			<a href="gestionarCds?comienzo=${anterior}&titulo=${titulo}" class="inline-flex items-center px-4 py-2 text-1xl  font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-[#134e4a] focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-[#0f766e] dark:hover:bg-[#134e4a] dark:focus:[#134e4a]">ANTERIOR</a>	
	</c:if>

	&nbsp;&nbsp;&nbsp;&nbsp;

	<c:if test="${ siguiente < total }">
			<a href="gestionarCds?comienzo=${siguiente}&titulo=${titulo}" class="inline-flex items-center px-4 py-2 text-1xl  font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-[#134e4a] focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-[#0f766e] dark:hover:bg-[#134e4a] dark:focus:[#134e4a]">SIGUIENTE</a>
	</c:if>


</div>
</div>
</body>
</html>
