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
        Datos del usuario a editar:
    </h1>
<br>
<springform:form modelAttribute="usuario" action="actualizarUsuario">
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
                    Nombre 
                </th>
                <td class="py-4 px-6">
                <springform:input class="w-[30rem]" path="nombre"/>
                </td> 
            </tr>
            <tr class="bg-white border-b dark:bg-gray-800 dark:border-teal-500">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    Apellidos: 
                </th>
                <td class="py-4 px-6">
                <springform:input class="w-[30rem]" path="apellidos"/>
                </td>
            </tr>
            <tr class="bg-white border-b dark:bg-gray-800 dark:border-teal-500">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                   Contraseña: 
                </th>
                <td class="py-4 px-6">
                <springform:input class="w-[30rem]" path="pass"/>
                </td>
            </tr>
            <tr class="bg-white border-b dark:bg-gray-800 dark:border-teal-500">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    Email: 
                </th>
                <td class="py-4 px-6">
                <springform:input class="w-[30rem]" a="f" type="email" path="email"/>
                </td>
            </tr>
            <tr class="bg-white border-b dark:bg-gray-800 dark:border-teal-500">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    Edad: 
                </th>
                <td class="py-4 px-6">
                <springform:input style="width: 4.5em;" type="number" path="edad"/>
                </td>
            </tr>
				<springform:hidden path="id"/>			
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





