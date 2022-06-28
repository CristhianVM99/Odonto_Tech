
<%@page import="java.util.List"%>
<%@page import="com.odontotech.model.GenericClass"%>
<%
    List<GenericClass> lis_tar = (List<GenericClass>) request.getAttribute("lis_tar");
    int cont1 = 0;
    String val[];
    for (GenericClass cls : lis_tar) {
        val = cls.getToString();
        if (val[14].equals("Tarifa Niños")) {
            cont1++;
        }
    }

    int cont2 = 0;
    for (GenericClass cls : lis_tar) {
        val = cls.getToString();
        if (val[14].equals("Tarifa Adultos")) {
            cont2++;
        }
    }


%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Tarifas</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Course Project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
        <link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="styles/elements_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/elements_responsive.css">
    </head>
    <body>

        <div class="super_container">

            <!-- Menu de la pagina web -->
            <jsp:include page="META-INF/MenuWeb.jsp"></jsp:include>

                <div class="home">
                    <div class="home_background_container prlx_parent">
                        <div class="home_background prlx" style="background-image:url(images/fondo-pagina6.jpg)"></div>
                    </div>
                    <div class="home_content">
                        <h1>Tarifas</h1>
                    </div>
                </div>

                <!-- Elements -->

                <div class="elements">
                    <div class="pbars_accordions">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="elements_title">Precios de los servicios</div>
                                </div>
                            </div>
                            <div class="row pbars_accordions_container">
                                <!-- Progress Bars & Accordions -->

                                <div class="col-lg-6">

                                    <!-- Progress Bars -->
                                    <div class="elements_progress_bars">

                                        <div class="pbar_container">
                                            <div class="col-lg-12">
                                                <div class="elements_title">Tarifas odontologicas para niños</div>
                                            </div>
                                            <ul class="progress_bar_container col_12 clearfix">
                                            <%if (cont1 == 0) {%>
                                            <div class="elements_title">No hay tarifas para niños</div>
                                            <%} else {%>
                                            <% for (GenericClass cls : lis_tar) {
                                                    val = cls.getToString();
                                                    if (val[14].equals("Tarifa Niños")) {
                                            %>
                                            <li class="pb_item">
                                                <div class="price_box d-flex flex-row align-items-center">
                                                    <div class="course_author_image">
                                                        <img src="<%=request.getContextPath()%>/ControllerWrite?table=tarifas&fid=<%=val[2]%>" alt="https://unsplash.com/@mehdizadeh"
                                                             height="50" width="50">
                                                    </div>
                                                    <div class="course_author_name"><%=val[6]%>| <span><%=val[10]%></span></div>
                                                    <div class="course_price d-flex flex-column align-items-center justify-content-center"><span>Bs.<%=val[8]%></span></div>
                                                </div>
                                            </li>
                                            <%
                                                        }
                                                    }
                                                }%>
                                        </ul>
                                    </div>

                                </div>
                            </div>

                            <div class="col-lg-6">

                                <!-- Progress Bars -->
                                <div class="elements_progress_bars">

                                    <div class="pbar_container">
                                        <div class="col-lg-12">
                                            <div class="elements_title">Tarifas odontologicas para adultos</div>
                                        </div>
                                        <ul class="progress_bar_container col_12 clearfix">
                                            <!-- Para listar precios adultos de la base de datos  -->
                                            <%if (cont2 == 0) {%>
                                            <div class="elements_title">No hay tarifas para adultos</div>
                                            <%} else {%>
                                            <%for (GenericClass cls : lis_tar) {
                                                    val = cls.getToString();
                                                    if (val[14].equals("Tarifa Adultos")) {
                                            %>
                                            <li class="pb_item">
                                                <div class="price_box d-flex flex-row align-items-center">
                                                    <div class="course_author_image">
                                                        <img src="<%=request.getContextPath()%>/ControllerWrite?table=tarifas&fid=<%=val[2]%>" 
                                                             alt="https://unsplash.com/@mehdizadeh"  height="50"  width="50">
                                                    </div>
                                                    <div class="course_author_name"><%=val[6]%>| <span><%=val[10]%></span></div>
                                                    <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><%=val[8]%></span></div>
                                                </div>
                                            </li>
                                            <%}
                                                    }
                                                }%>

<<<<<<< HEAD
				</div>
			</div>
		</div>
	</div>
        <!-- Footer de las paginas web -->
        <jsp:include page="META-INF/FooterWeb.jsp"></jsp:include>
</div>
            
<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/progressbar/progressbar.min.js"></script>
<script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/elements_custom.js"></script>

</body>
=======

                                        </ul>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>



                <!-- Icon Boxes -->

                <div class="icon_boxes">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="elements_title">Curiosidades</div>
                            </div>
                        </div>

                        <div class="row icon_boxes_container">

                            <div class="col-lg-4 icon_box text-left d-flex flex-column align-items-start justify-content-start">
                                <div class="icon_container d-flex flex-column justify-content-end">
                                    <img src="images/earth-globe.svg" alt="">
                                </div>
                                <h3>La importancia de cepillarse</h3>
                                <p>En primer lugar sirve para mejorar el aliento, ya que las bacterias de la boca descomponen los restos de comida.
                                    En segundo lugar, porque el cepillado evita la aparición de caries y que los dientes se pudran, lo que ocasiona 
                                    la pérdida de dientes y el dolor agudo que no nos deja llevar una vida agradable</p>
                            </div>

                            <div class="col-lg-4 icon_box text-left d-flex flex-column align-items-start justify-content-start">
                                <div class="icon_container d-flex flex-column justify-content-end">
                                    <img src="images/exam.svg" alt="">
                                </div>
                                <h3>La importancia de utilizar hilo dental</h3>
                                <p> El hilo dental elimina la placa y los restos de alimentos de entre dientes y encías, pero además también ayuda a controlar
                                    el mal aliento. Todo esto supone unos dientes y unas encías más sanas, ya que la placa es la principal causa de la caries 
                                    dental y la enfermedad periodontal.</p>
                            </div>

                            <div class="col-lg-4 icon_box text-left d-flex flex-column align-items-start justify-content-start">
                                <div class="icon_container d-flex flex-column justify-content-end">
                                    <img src="images/books.svg" alt="">
                                </div>
                                <h3>La importancia de utilizar enjuague bucal</h3>
                                <p>El enjuague bucal diario permite eliminar los restos de bacterias que provocan el mal aliento. Así, los colutorios
                                    antibacterianos mantienen un aliento fresco en la boca a la vez que elimina constantemente los restos de bacterias
                                    que provocan el mal aliento.</p>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
            <!-- Footer de las paginas web -->
            <jsp:include page="META-INF/FooterWeb.jsp"></jsp:include>
        </div>

        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="styles/bootstrap4/popper.js"></script>
        <script src="styles/bootstrap4/bootstrap.min.js"></script>
        <script src="plugins/greensock/TweenMax.min.js"></script>
        <script src="plugins/greensock/TimelineMax.min.js"></script>
        <script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
        <script src="plugins/greensock/animation.gsap.min.js"></script>
        <script src="plugins/greensock/ScrollToPlugin.min.js"></script>
        <script src="plugins/progressbar/progressbar.min.js"></script>
        <script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
        <script src="plugins/easing/easing.js"></script>
        <script src="js/elements_custom.js"></script>

    </body>
>>>>>>> 5219d866538cabad4b1dc0a7be6067a64bdd4d51
</html>