<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Musicalia</title>
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
</head>
<style>
 	input[type=number]{ 		
 		width:3em  	
 	} 
</style>
<body class="bg-teal-500">
<a name="arriba"></a>

<header id="header" class="z-10 bg-[#0f172a] header sticky top-0  text-white shadow-md grid grid-rows-1 grid-cols-3 px-[4rem] py-02">
    <!-- logo -->
    <div class="w-3/10 ml-20" >
        <img class="inline-block" src="subidas/logo.png" width="100" height="100">
    </div>
	
    <!-- navigation -->
    <nav class="nav font-semibold text-2xl justify-self-center self-center">
        <ul class="flex items-center">
            <li class="p-4 border-b-2 border-teal-500 border-opacity-0 hover:border-opacity-100 hover:text-teal-500 duration-200 cursor-pointer active">
              <a href="#" id="inicio"><spring:message code="inicio.inicio" /></a> &nbsp;&nbsp;&nbsp;
            </li>
            <li class="p-4 border-b-2 border-teal-500 border-opacity-0 hover:border-opacity-100 hover:text-teal-500 duration-200 cursor-pointer active">
              <a href="#" id="productos"><spring:message code="inicio.productos" /></a> &nbsp;&nbsp;&nbsp;
            </li>
			<li class="p-4 border-b-2 border-teal-500 border-opacity-0 hover:border-opacity-100 hover:text-teal-500 duration-200 cursor-pointer active">	
              <a href="#" id="carrito"><spring:message code="inicio.carrito" /></a> &nbsp;&nbsp;&nbsp;
            </li>
            
        </ul>
        
    </nav>

    <div class=" flex justify-end">
        
    <div class="flex items-center">
    	<a href="?lang=es" class="hover:text-teal-500 mr-2"> <img class="inline-block mr-1" src="subidas/esp.png" width="25" height="25">ES </a> <br>
		<a href="?lang=en" class="hover:text-teal-500 mr-2"> <img class="inline-block mr-1" src="subidas/en.png" width="25" height="25">EN </a>
		<a href="?lang=it" class="hover:text-teal-500 mr-5"> <img class="inline-block mr-1" src="subidas/italia.png" width="25" height="25">IT</a>
    </div>
      <ul class="flex items-center text-lg">
            <li id="login" class="p-4 border-b-2 border-teal-500 border-opacity-0 hover:border-opacity-100 hover:text-teal-500 duration-200 cursor-pointer">
              <a href="#" ><spring:message code="inicio.identificarme" /> </a> &nbsp;&nbsp;&nbsp;
            </li>
            <li id="registrarme" class="p-4 border-b-2 border-teal-500 border-opacity-0 hover:border-opacity-100 hover:text-teal-500 duration-200 cursor-pointer">
              <a href="#" ><spring:message code="inicio.registrarme" /></a> &nbsp;&nbsp;&nbsp;
              <li id="logout" style="display: none" class="p-4  hover:border-opacity-100 hover:text-red-500 duration-200 cursor-pointer">
              <a href="#"><spring:message code="inicio.salir" /></a> &nbsp;&nbsp;&nbsp;
            </li>
              <span class="text-teal-500 font-bold" style="display: none" id="inicio_span_nombre_usuario"><spring:message code="inicio.user" /></span>
        </ul>        
    </div>
</header>

<div id="contenedor" >

</div>
<br>
<br>

<footer class="mt-24 p-4 bg-white rounded-lg shadow md:px-6 md:py-8 dark:bg-gray-900">
    <div class="sm:flex sm:items-center sm:justify-center">
        <a href="#" class="flex items-center mb-4 sm:mb-0">
            <img class="inline-block" src="subidas/logo.png" width="100" height="1000">
        </a>
        <!--  <ul class="flex flex-wrap items-center mb-6 text-sm text-gray-500 sm:mb-0 dark:text-gray-400">
            <li>
                <a href="#" class="mr-4 hover:underline md:mr-6 ">About</a>
            </li>
            <li>
                <a href="#" class="mr-4 hover:underline md:mr-6">Privacy Policy</a>
            </li>
            <li>
                <a href="#" class="mr-4 hover:underline md:mr-6 ">Licensing</a>
            </li>
            <li>
                <a href="#" class="hover:underline">Contact</a>
            </li>
        </ul>-->
    </div>
    <hr class="my-6 border-gray-200 sm:mx-auto dark:border-gray-700 lg:my-8" />
    <span class="block text-sm text-gray-500 sm:text-center dark:text-gray-400">2022 Musicalia. All Rights Reserved.
    </span>
</footer>

<script type="text/javascript" src="librerias_js/jquery.js"></script>
<script type="text/javascript" src="librerias_js/mustache.js" ></script>
<script type="text/javascript" src="librerias_js/js.cookie.min.js" ></script>
<script type="text/javascript" src="javascript/cargar_plantillas.js"></script>
<script type="text/javascript" src="javascript/cargar_eventos.js"></script>
<script type="text/javascript" src="javascript/funciones.js"></script>
<script type="text/javascript" src="javascript/funciones_checkout.js"></script>
<script type="text/javascript" src="javascript/globales.js"></script>
<script type="text/javascript" src="javascript/validaciones.js"></script>
<script type="text/javascript">
	idioma_actual = "<spring:message code="codigo.idioma" />" ;
	carga_archivos_plantillas(idioma_actual);
</script>

</body>
</html>