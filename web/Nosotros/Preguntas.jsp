<%-- 
    Document   : Preguntas
    Created on : 08/11/2020, 08:59:50 PM
    Author     : Nicol Samanamud 
--%>


<%
    String correo = request.getParameter("correo");
    String contra = request.getParameter("contra");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" type="text/css" href="../diceno/css/bootstrap.min.css">


        <link rel="stylesheet" type="text/css" href="../diceno/css/menu_principal.css">
        <%-- despegable movivble y adaptable--%>




        <link href="../diceno/css/navbar.css" rel="stylesheet">

        <script src="../diceno/js/jquery-3.5.1.min.js"></script>
        <script src="../diceno/js/popper.min.js"></script>
        <script src="../diceno/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../diceno/css/css_des/pure-drawer.css"/>

        <script src="../diceno/js/jquery-3.5.1.slim.min.js"></script>
        <script src="../diceno/js/bootstrap.bundle.min.js"></script>
        <%--  categoria--%>

        <link rel="stylesheet" type="text/css" href="../diceno/css/slick/slick.css">
        <link rel="stylesheet" type="text/css" href="../diceno/css/slick/slick-theme.css">


        <script src="../diceno/js/jquery-2.2.0.min.js" type="text/javascript"></script>
        <script src="../diceno/css/slick/slick.js" type="text/javascript" charset="utf-8"></script>
        <link href="../diceno/css/navbar-top-fixed.css" rel="stylesheet">     

        <%--caja de texto--%>

        <link rel="stylesheet" href="../diceno/css/caja_text.css">

        <link rel="stylesheet" href="../diceno/css/ProductoMostrar.css">

    </head>

    <%--menu despegable--%>   



    <body>
        
        <div class="container-fluid">


            <!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
            <div class="row">
                <nav class="navbar navbar-expand-md navbar-dark fixed-top" style="background-color:#FFAA2E  ">

                    <div class="col-4 col-sm-2 col-md-2 col-lg-2 col-xl-2" style="left:40px">

                        <div class="pure-container" data-effect="pure-effect-push">


                            <input type="checkbox" id="pure-toggle-left" class="pure-toggle" data-toggle="left"/>

                            <label class="pure-toggle-label" for="pure-toggle-left" data-toggle-label="left" style="width: 50px; height:  50px;"  > <span class="pure-toggle-icon" ></span> </label>

                            <div >
                                   <a href="../menu_principal/menu_principal_xd.jsp"><img src="../imagenes/logo.png" width="100" height="60" /> </a>  
                            </div>

                            <nav class="pure-drawer" data-position="left" style="background:  #F38500;">

                                <br>
                                <br>
                                <br>


                                <div class="nav-primary">

                                    <center>
                                        <div class="btn-group" style="width:100%;">
                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                categorias
                                            </button>
                                            <div class="dropdown-menu" style="width:100%;">

                                                <a class="dropdown-item" href="#" style="color: #000;" >Action</a>
                                                <a class="dropdown-item" href="#">Another action</a>
                                                <a class="dropdown-item" href="#">Something else here</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="#">Separated link</a>
                                            </div>
                                        </div>
                                    </center>




                                    <center>
                                        <div class="btn-group" style="width:100%;   ">
                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                conocenos
                                            </button>
                                            <div class="dropdown-menu" style="width:100%;">

                                            
                                                <a class="dropdown-item" href="../Nosotros/Preguntas.jsp">PREGUNTAS FRECUENTES</a>
                                                <a class="dropdown-item" href="../Nosotros/Politica.jsp">POLITICA PRIVACIDA </a>
                                               
                                                <a class="dropdown-item" href="../Nosotros/contacto.jsp">CONTACTANOS</a>
                                            </div>
                                        </div>
                                    </center>

                                </div> 
                            </nav>

                            <label class="pure-overlay" for="pure-toggle-left" data-overlay="left"></label> 
                        </div>  


                    </div>



                    <div class="col-8 col-sm-6 col-md-7 col-lg-8 col-xl-9" style="left:14px" >
                        <input type="text"  class="search-for-champion" >

                        <button  class="search-btn" type="button" style="background: #CE6100   " > <img src="../imagenes/buscar.png" width="45" height="45" alt="buscar"/>
                        </button>



                    </div>


                    <div class="col-12 col-sm-4 col-md-3 col-lg-2 col-xl-1">

                        <%
                            if (correo == null || contra == null) {


                        %>


                        <% } else {
                            }

                        %>









                        <div class="btn-group   float-right align-self-end"  >
                            <div class="btn-group ">

                                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background: #CE6100   ">
                                    registrarce o iniciar sesion 
                                </button>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg-left">

                                    <form class="px-4 py-3">

                                        <div class="form-group">
                                            <label for="exampleDropdownFormEmail1">Correo :</label>
                                            <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="Correo@ejemplo.com" name="correo" >
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleDropdownFormPassword1">Contraseña :</label>
                                            <input type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Contraseña" name="contra">
                                        </div>
                                        <div class="form-group">
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="dropdownCheck">
                                                <label class="form-check-label" for="dropdownCheck">
                                                    recordar
                                                </label>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Ingresar</button>

                                    </form>


                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">Registrarce</a>
                                    <a class="dropdown-item" href="#">¿Olvidaste tu contraseña?</a>

                                </div>
                            </div>

                        </div>





                    </div>
                </nav>


            </div>


        </div>



         
                        
            <div class="container">
                <div class="row">
                    <div class="col-6">
                        <br>
                        <p class="h2 text-danger">Preguntas Frecuentes</p>   
                        <hr>
                        <p class="h4 text-danger">INFORMACIÓN DE COMPRA</p>
                        <strong>¿Cómo hago un pedido?</strong><br>
                        Por el momento no contamos con un pago dentro de nuestra tienda virtual, por lo cual si quiere comprar alguno de nuestros productos no dude en ponerse en contacto con nosotros mediante nuestro correo o directamente desde el boton de whatsapp que tenemos en nuestra pagina web.<br>
                        <br>
                        <strong>¿Es necesario tener una cuenta para comprar?</strong><br>
                        Puede hacer su pedido sin tener una cuenta dentro de nuestra tienda con tan solo dejarnos un mensaje en nuestro whatsapp o llamarnos directamente preguntando por el producto que desea comprar.<br>
                        <br>
                        <p class="h4 text-danger">CONSULTA DE PEDIDO</p>
                        <strong>¿Cuánto tiempo tardare en recibir mi pedido?</strong><br>
                        El tiempo de entrega de los productos sera coordinado con nuestra área de entregas, el tiempo de envió de nuestros productos no sera mayor al tiempo pactado con el cliente.<br>
                        <br>
                        <strong>¿Cuáles son las opciones de pago?</strong><br>
                        Las opciones de pago que contamos son mediante : Contraentrega, aceptamos efectivo y todas las tarjetas de crédito.<br>
                    </div>
                    
                    <div class="col-6">
                        <br><br><br><br>
                        <img src="../imagenes/pedido.jpg" width="600" height="400" alt="pedido"/>

                    </div>
                </div>
            </div>

            <br><br><br>
   

    <div class="container-fluid pagina">





        <div class="row" >

            <div class="col-6 col-sm-12 col-md-12 col-lg-3 col-xl-3" >


                <br>
                <br>
                <center>
                    <img src="../imagenes/logo_bn.png" width="250px"  height="149px" />


                </center>
            </div>

            <div class="col-6 col-sm-4 col-md-4 col-lg-3 col-xl-3">
                <br>
                <center>
                    <p class="h5">“Un hogar impecable es nuestra misión"</p>
                    <br>
                    <img src="../imagenes/ubicacion.png" width="25" height="25" alt="ubicacion"/>


                    Mza H Lote 01 urb. Pro Industrial S.M.P Lima-Perú
                    <br>
                    <img src="../imagenes/telefono.png" width="35" height="30" alt="telefono"/>

                    Teléfono:  536-4941
                    <br>
                    <img src="../imagenes/celular.png" width="18" height="18" alt="celular"/>
                    Ventas: 928315913
                    <br>
                    <img src="../imagenes/correo.png" width="25" height="25" alt="correo"/>

                    Correo: Ventas@kazvel.com
                    <br>
                </center>

                <br>
            </div>





            <div class="col-6 col-sm-4 col-md-4 col-lg-3 col-xl-3">
                <br>


                <center>

                    <p class="h3"> CONOCENOS :  </p>
<!--
                    NOSOTROS
                    <br>
            -->        
            <a href="../Nosotros/Preguntas.jsp" style="color: #000">PREGUNTAS FRECUENTES</a> 

                    <br>
                    <a href="../Nosotros/Politica.jsp"style="color: #000" > POLITICA PRIVACIDA  </a>   
                    <br>
                    
                    <a href="../Nosotros/contacto.jsp"style="color: #000">CONTACTANOS</a> 

                    <br>


                </center>
                <br>

            </div> 



            <div class="col-3 col-sm-4 col-md-4 col-lg-3 col-xl-3" >
                <br>

                <center>
                    <p class="h3"> SIGUENOS EN :  </p>   
                    <br>
                    <a href=""><img src="../imagenes/facebook.png" height="40px" width="40px"  /></a> 
                    <br>

                    <a href=""><img src="../imagenes/twitter.png"  height="40px" width="40px" /></a> 
                    <br>

                    <a href="https://instagram.com/qkazvel?igshid=nc1l54gp8lh5"><img src="../imagenes/instagram.png" height="40px" width="40px"  /></a> 
                </center>

            </div>



        </div>







    </div>




    </body>
</html>
