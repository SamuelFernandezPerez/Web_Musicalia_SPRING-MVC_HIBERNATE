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
<div  class="w-full">

<div class=" mt-40 m-auto bg-white ">
    <div class="flex flex-col items-center pb-10">
        <img class="h-60 w-60 mt-10 mb-3 rounded-full shadow-lg" src="../subidas/admin.png" alt="..."/>
        <h5 class="font-mono mb-1 text-5xl font-medium text-gray-900 dark:text-[#0f172a]">BIENVENIDO ADMIN!</h5>
        <span class="font-mono text-lg text-gray-500 dark:text-teal-500">Esta es la zona de adminsitarcion de la web Musicalia. Desde aqui se pueden gestionar los aspectos mas importantes.</span>
    </div>
</div>
</div>
</body>
</html>