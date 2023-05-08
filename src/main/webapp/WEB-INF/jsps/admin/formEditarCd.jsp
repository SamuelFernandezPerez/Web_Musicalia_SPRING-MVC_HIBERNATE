<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springform" %>
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
        Datos del CD a editar:
    </h1>
<br>
<springform:form modelAttribute="cd" action="actualizarCd" enctype="multipart/form-data">
<div class="w-full overflow-x-auto relative  sm:rounded-lg ">
    <table class="w-[50rem] text-sm text-left text-gray-500 dark:text-gray-400 m-auto w_auto shadow-md" >
        <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tr>
                <th scope="col" class="py-3 px-6">
                    
                </th>
                <th scope="col" class="py-3 px-6">
                    
                </th>
            </tr>
        </thead>
        <tbody class="text-lg">
            <tr class="bg-white border-b dark:bg-gray-800 dark:border-teal-500">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    Titulo: 
                </th>
                <td class="py-4 px-6">
                <springform:input class="w-[33rem]" path="titulo"/>
                    <span style="color: red"> <springform:errors path="titulo" /> </span>
                </td> 
            </tr>
            <tr class="bg-white border-b dark:bg-gray-800 dark:border-teal-500">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    Artista: 
                </th>
                <td class="py-4 px-6">
                <springform:input class="w-[33rem]" path="artista"/>
                    <span style="color: red"> <springform:errors path="artista" /> </span>
                </td>
            </tr>
            <tr class="bg-white border-b dark:bg-gray-800 dark:border-teal-500">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    Productora:  
                </th>
                <td class="py-4 px-6">
                <springform:input class="w-[33rem]" path="productora"/>
                    <span style="color: red"> <springform:errors path="productora" /> </span> 
                </td>
            </tr>
            <tr class="bg-white border-b dark:bg-gray-800 dark:border-teal-500">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                   Duración: 
                </th>
                <td class="py-4 px-6">
                <springform:input class="w-[4.5rem]" type="number" path="duracion"/>
                    <span style="color: red"> <springform:errors path="duracion" /> </span> 
                </td>
            </tr>
            <tr class="bg-white border-b dark:bg-gray-800 dark:border-teal-500">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    Número de canciones: 
                </th>
                <td class="py-4 px-6">
                <springform:input class="w-[4.5rem]" type="number" path="numeroCanciones"/>
                    <span style="color: red"> <springform:errors path="numeroCanciones" /> </span>
                </td>

            <tr class="bg-white border-b dark:bg-gray-800 dark:border-teal-500">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    Precio: 
                </th>
                <td class="py-4 px-6">
                <springform:input class="w-[4.5rem]" type="number" path="precio"/>
                    <span style="color: red"> <springform:errors path="precio" /> </span> 
                </td>
            </tr>
              <tr class="bg-white border-b dark:bg-gray-800 dark:border-teal-500">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    Categoria: 
                </th>
                <td class="py-4 px-6">
                 <springform:select  path="idCategoria">
						<springform:options items="${categorias}"/>
					</springform:select> 
                </td>
            </tr>
            <tr class="bg-white border-b dark:bg-gray-800 dark:border-teal-500">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    Portada:  
                </th>
                <td class="py-4 px-6">
                <springform:input class="w-[30rem]" path="portada" type="file" />
                </td>
            </tr>
             <tr class="bg-white border-b dark:bg-gray-800 dark:border-teal-500">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    Portada 2:  
                </th>
                <td class="py-4 px-6">
                <springform:input class="w-[30rem]" path="portada2" type="file" />
                </td>
            </tr>
             <tr class="bg-white border-b dark:bg-gray-800 dark:border-teal-500">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    Portada 3:  
                </th>
                <td class="py-4 px-6">
                <springform:input class="w-[30rem]" path="portada3" type="file" />
                </td>
            </tr>
				<springform:hidden path="id"/>
				<springform:hidden path="alta"/>			
        </tbody>
    </table>
</div>
<br>
<div class=" flex justify-center	">
<input class="mt-10 mb-10 inline-flex items-center px-4 py-2 text-2xl  font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-[#134e4a] focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-[#0f766e] dark:hover:bg-[#134e4a] dark:focus:[#134e4a]" type="submit" value="GUARDAR CAMBIOS"/>
</div>	
</springform:form>
</body>
</html>

