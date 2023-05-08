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
 <h1 class="mt-28 w-[50rem] m-auto rounded-lg bg-[#0f172a] p-3 my-10 text-white text-3xl lg:text-4xl text-center" style="font-family: 'Dancing Script', cursive, sans-serif;">
        Listado de pedidos
    </h1>
<br>

<div class="w-full">
<table class="min-w-max m-auto table-auto shadow-xl p-10">
  		<thead>
   			 <tr class=" bg-[#0f766e] text-white uppercase text-sm leading-normal">
     			<th class="text-lg py-3 px-5 text-center">Nombre completo</th>
     			<th class="text-lg py-3 px-5 text-center">Direccion</th>
      			<th class="text-lg py-3 px-5 text-center">Provincia</th>
      			<th class="text-lg py-3 px-5 text-center">Telefono</th>
      			<th class="text-lg py-3 px-5 text-center">CP</th>
      			<th class="text-lg py-3 px-5 text-center">Estado</th>
      			<th class="text-lg py-3 px-5 text-center">Ver pedido</th>
    		</tr>
  		</thead>
  <tbody class="text-[#0f172a] text-sm font-light">
      	<c:forEach var="pedido" items="${pedidos}">
   	 	<tr class="border-b border-[#0f766e] hover:bg-gray-200 bg-white">
      		<td class="text-lg py-5 px-5 text-center whitespace-nowrap">${pedido.nombreCompleto}</td>
      		<td class="text-lg py-5 px-5 text-center whitespace-nowrap">${pedido.direccion}</td>
      		<td class="text-lg py-5 px-5 text-center whitespace-nowrap">${pedido.provincia}</td>
      		<td class="text-lg py-5 px-5 text-center whitespace-nowrap">${pedido.telefono}</td>
      		<td class="text-lg py-5 px-5 text-center whitespace-nowrap">${pedido.cp}</td>
      		<td class="text-lg py-5 px-5 text-center whitespace-nowrap">${pedido.estado}</td>
      		<td class="text-lg py-5 px-5 text-center whitespace-nowrap"><a class="rounded-lg bg-teal-500 p-2 text-white font-bold hover:bg-teal-700" href="verDetallesPedido?id=${pedido.id}">Ver pedido</a></td>
    	</tr>
    </c:forEach>	
  </tbody>
</table>
</div>
</body>
</html>