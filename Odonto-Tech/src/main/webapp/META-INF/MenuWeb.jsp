<%-- 
    Document   : MenuWeb
    Created on : 25 jun. de 2022, 11:46:02
    Author     : Cristian UPEA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- CABECERA -->

<header class="header d-flex flex-row">
    <div class="header_content d-flex flex-row align-items-center">

        <!-- LOGO PRINCIPAL -->

        <div class="logo_container">
            <div class="logo">
                <a href="Controller_Pagina_Web?view=view"><img src="images/logo-4.png" alt=""></a>
                <span>Odonto Tech.</span>
            </div>
        </div>

        <!-- MENU DE NAVEGACION -->
        <nav class="main_nav_container">
            <div class="main_nav">
                <ul class="main_nav_list">
                    <li class="main_nav_item menu_item--show">
                        <a href="#" class="menu_link">Odontologia</a>
                        <ul class="menu_nesting">
                            <li class="menu_inside">
                                <a href="Controller_Pagina_Web?view=Dentista_De_Niños" class="menu_link menu_link--inside">Dentista de Niños</a>
                            </li>
                            <li class="menu_inside">
                                <a href="#" class="menu_link menu_link--inside">Higiene Dental</a>
                            </li>
                            <li class="menu_inside">
                                <a href="#" class="menu_link menu_link--inside">Empaste Dental</a>
                            </li>
                            <li class="menu_inside">
                                <a href="#" class="menu_link menu_link--inside">Puentes Dentales</a>
                            </li>
                            <li class="menu_inside">
                                <a href="#" class="menu_link menu_link--inside">Coronas Dentales</a>
                            </li>
                            <li class="menu_inside">
                                <a href="#" class="menu_link menu_link--inside">Extraccion Dental</a>
                            </li>
                            <li class="menu_inside">
                                <a href="#" class="menu_link menu_link--inside">Dentadura Postisa</a>
                            </li>
                        </ul>
                    </li>
                    <li class="main_nav_item menu_item--show">
                        <a href="#" class="menu_link">Odontologia Cosmetica</a>

                        <ul class="menu_nesting">
                            <li class="menu_inside">
                                <a href="#" class="menu_link menu_link--inside">Blanqueamieto Dental</a>
                            </li>
                            <li class="menu_inside">
                                <a href="#" class="menu_link menu_link--inside">Brakets</a>
                            </li>
                            <li class="menu_inside">
                                <a href="#" class="menu_link menu_link--inside">Carrillas Dentales</a>
                            </li>
                            <li class="menu_inside">
                                <a href="#" class="menu_link menu_link--inside">Adhesion Dental</a>
                            </li>
                        </ul>

                    </li>
                    <li class="main_nav_item"><a href="#">Tarifa</a></li>
                    <li class="main_nav_item"><a href="#">Promociones</a></li>
                    <li class="main_nav_item"><a href="#">Contacto</a></li>
                </ul>
            </div>
        </nav>
    </div>
    <div class="header_side d-flex flex-row justify-content-center align-items-center">
        <img src="images/phone-call.svg" alt="">
        <span>Reservar Cita</span>
    </div>

    <!-- Hamburger -->
    <div class="hamburger_container">
        <i class="fas fa-bars trans_200"></i>
    </div>

</header>

<!-- Menu -->
<div class="menu_container menu_mm">

    <!-- Menu Close Button -->
    <div class="menu_close_container">
        <div class="menu_close"></div>
    </div>

    <!-- Menu Items -->
    <div class="menu_inner menu_mm">
        <div class="menu menu_mm">
            <ul class="menu_list menu_mm">
                <li class="menu_item menu_mm"><a href="#">Odontologia</a></li>
                <li class="menu_item menu_mm"><a href="#">Odontologia Cosmetica</a></li>
                <li class="menu_item menu_mm"><a href="courses.html">Tarifa</a></li>
                <li class="menu_item menu_mm"><a href="elements.html">Promociones</a></li>
                <li class="menu_item menu_mm"><a href="news.html">Contactos</a></li>
                <li class="menu_item menu_mm"><a href="news.html">Reservar Cita</a></li>
            </ul>

            <!-- Menu Social -->

            <div class="menu_social_container menu_mm">
                <ul class="menu_social menu_mm">
                    <li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-pinterest"></i></a></li>
                    <li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                    <li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-instagram"></i></a></li>
                    <li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                    <li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-twitter"></i></a></li>
                </ul>
            </div>

            <div class="menu_copyright menu_mm">Colorlib All rights reserved</div>
        </div>

    </div>

</div>
