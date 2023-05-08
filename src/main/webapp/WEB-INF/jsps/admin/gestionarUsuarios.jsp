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
        Gestion de usuarios
    </h1>
<br>
<div class="w-full">
<table class="min-w-max m-auto table-auto shadow-xl p-10">
  		<thead>
   			 <tr class="bg-[#0f766e] text-white uppercase text-sm leading-normal">
   			 	<th class="text-lg py-3 px-6 text-center">Id</th>
      			<th class="text-lg py-3 px-6 text-center">Foto</th>
     			<th class="text-lg py-3 px-6 text-center">Nombre</th>
     			<th class="text-lg py-3 px-6 text-center">Apellidos</th>
      			<th class="text-lg py-3 px-6 text-center">Email</th>
      			<th class="text-lg py-3 px-6 text-center">Pass</th>
      			<th class="text-lg py-3 px-6 text-center">Edad</th>
      			<th class="text-lg py-3 px-6 text-center">Borrar</th>
      			<th class="text-lg py-3 px-6 text-center">Editar</th>
    		</tr>
  		</thead>
  <tbody class="text-[#0f172a] text-sm font-light">
      	<c:forEach var="u" items="${usuarios}">
   	 	<tr class="border-b border-[#0f766e] hover:bg-gray-200 bg-white">
      		<td class="text-lg py-3 px-6 text-center whitespace-nowrap">${u.id}</td>
      		<td class=" px-6 text-center whitespace-nowrap"><img class="my-2 rounded-full " style="height: 80px; widht: 80px;"  src="../subidas/u${u.id}.jpg"/> </td>
      		<td class="text-lg py-3 px-6 text-center whitespace-nowrap">${u.nombre}</td>
      		<td class="text-lg py-3 px-6 text-center whitespace-nowrap">${u.apellidos}</td>
      		<td class="text-lg py-3 px-6 text-center whitespace-nowrap">${u.email}</td>
      		<td class="text-lg py-3 px-6 text-center whitespace-nowrap">${u.pass}</td>
      		<td class="text-lg py-3 px-6 text-center whitespace-nowrap">${u.edad}</td>
      		<td class="text-lg py-3 px-6 text-center whitespace-nowrap"><a class="rounded-lg bg-red-500 p-2 text-white font-bold hover:bg-red-700" onclick="return confirm('¿seguro?');" href="borrarUsuario?idBorrar=${u.id}">Borrar</a></td>
    		<td class="text-lg py-3 px-6 text-center whitespace-nowrap"><a class="rounded-lg bg-orange-500 p-2 text-white font-bold hover:bg-orange-700" href="editarUsuario?idEditar=${u.id}">Editar</a></td>
    	</tr>
    </c:forEach>	
  </tbody>
</table>
		<div style="text-align: center;margin: 30px;font-size: 1.5em;">
		<h1 class="mt-10 inline-flex items-center px-4 py-2 text-2xl  font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-[#134e4a] focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-[#0f766e] dark:hover:bg-[#134e4a] dark:focus:[#134e4a]"><a href="nuevoUsuario">REGISTRAR UN USUARIO</a></h1>	
	</div>
</div>
</body>
</html>
