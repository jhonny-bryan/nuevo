<%-- 
    Document   : menu_principal_segundo
    Created on : 26/10/2020, 07:11:33 PM
    Author     : bryan
--%>


<%@page import="logica.logica_producto"%>
<%@page import="datos.producto"%>
<%@page import="logica.logica_cliente"%>
<%@page import="datos.cliente"%>

<%@page import="datos.categoria"%>
<%@page import="logica.logica_categoria"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" type="text/css" href="../diceno/css/bootstrap.min.css">


        <link rel="stylesheet" type="text/css" href="../diceno/css/menu_principal.css">

        <%-- despegable movivble y adaptable--%>


        <%-- problemas :C borra esto amigo o no ? 
       <link rel="stylesheet" href="../diceno/css/css_des/app.css"/> 
        --%>


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
        <link rel="stylesheet" href="../diceno/css/categorias.css">


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
                                <a href="menu_principal_xd.jsp"><img src="../imagenes/logo.png" width="100" height="60" /> </a>  

                            </div>

                            <nav class="pure-drawer" data-position="left" style="background:  #F38500;">

                                <br>
                                <br>
                                <br>


                                <div class="nav-primary">
                                    <%  categoria temp1 = new categoria();
                                        logica.logica_categoria con1 = new logica_categoria();
                                        con1.consultarDep();
                                    %>
                                    <%
                                        for (int i = 0; i < logica_categoria.logica_categoria.size(); i++) {
                                            temp1 = (categoria) logica_categoria.logica_categoria.get(i);

                                    %>
                                    <center>
                                        <div class="btn-group" style="width:100%;">
                                            <button type="button" class="btn btn-outline-danger" style=" color: #ffffff">
                                                <%=temp1.getCategoria_nombre()%>
                                            </button> 
                                        </div>
                                    </center>
                                    <%}%>



                                    <center>
                                        <div class="btn-group" style="width:100%;   ">
                                            <button type="button" class="btn btn-danger dropdown-toggle" style="background: #CE6100; color: #ffffff" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Conócenos
                                            </button>
                                            <div class="dropdown-menu" style="width:100%;">


                                                <a class="dropdown-item" href="../Nosotros/Preguntas.jsp">Preguntas Frecuentes</a>
                                                <a class="dropdown-item" href="../Nosotros/Politica.jsp">Politica de privacidad </a>

                                                <a class="dropdown-item" href="../Nosotros/contacto.jsp">Contactanos</a>
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

                        <div class="btn-group   float-right align-self-end"  >
                             <%   
                                if(sesion==null){
                               %>
                            <div class="btn-group ">

                                
                              
                                
                                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background: #CE6100   ">
                                    Registrarse o iniciar sesion 
                                </button>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg-left">
                                    <!---------------------------------------------------------------------------------------------------------------------------------->

                                    <form action="login.jsp" class="px-4 py-3">

                                        <div class="form-group">
                                            <label for="exampleDropdownFormEmail1">Correo :</label>
                                            <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="Correo@ejemplo.com" name="correo" >
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleDropdownFormPassword1">Contraseña :</label>
                                            <input type="contra" class="form-control" id="exampleDropdownFormPassword1" placeholder="Contraseña" name="contra">
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


                                    <!---------------------------------------------------------------------------------------------------------------------------------->


                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">Registrarse</a>
                                    <a class="dropdown-item" href="#">¿Olvidaste tu contraseña?</a>

                                </div>
                               
                               
                            </div>
                            <%}else{
%>
                        
                            
                            <%


}
                            %>

                        </div>





                    </div>


                </nav>


            </div>


        </div>

        <br><br>
        <div class="container">


            <div class="row" >

                <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                        <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="../imagenes/carrucel/carrusel_5.png" width="100%"   class="d-block w-100" alt="...">
                            <%--  
                               <div class="carousel-caption d-none d-md-block">
                                   <h5>First slide label</h5>
                                   <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                               </div>
                            --%>  
                        </div>
                        <div class="carousel-item">
                            <img src="../imagenes/carrucel/carrusel_2_nuevo.jpg" width="100%" class="d-block w-100" alt="...">
                            <%--  
                               <div class="carousel-caption d-none d-md-block">
                                   <h5>Second slide label</h5>
                                   <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                               </div>
                            --%> 
                        </div>

                        <div class="carousel-item">
                            <img src="../imagenes/carrucel/carrusel_3_nuevo.jpg" width="100%"  class="d-block w-100" alt="...">
                            <%--      
                               <div class="carousel-caption d-none d-md-block">
                                   <h5>Third slide label</h5>
                                   <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>                       
                               </div>
                            --%> 
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>


            <br>

            <div class="row" >

                <nav aria-label="breadcrumb" style=" width: 100%; ">

                    <ol class="breadcrumb"style="background-color:#FFAA2E ;">

                        <li class="breadcrumb-item">

                            <div class="btn-group">
                                <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    NUESTROS PRODUCTOS
                                </button>
                                <div class="dropdown-menu">
                                    <%
                                        for (int i = 0; i < logica_categoria.logica_categoria.size(); i++) {
                                            temp1 = (categoria) logica_categoria.logica_categoria.get(i);

                                    %>
                                    <a class="dropdown-item" href="#"><%=temp1.getCategoria_nombre()%></a>
                                    <%}%>

                                </div>

                            </div>


                        </li>

                        <li class="breadcrumb-item">
                            <a class="dropdown-item" href="#"><strong>INICIO</strong></a>
                        </li>

                        <li class="breadcrumb-item" aria-current="page">
                            <a class="dropdown-item" href="#"><strong>NOSOTROS</strong></a>
                        </li>

                        <li class="breadcrumb-item" aria-current="page">
                            <a class="dropdown-item" href="#"><strong>PREGUNTAS FRECUENTES</strong></a>
                        </li>

                        <li class="breadcrumb-item " aria-current="page">
                            <a class="dropdown-item" href="#"><strong>POLITICA DE PRIVACIDAD</strong></a>
                        </li>
                    </ol>
                </nav>

            </div>
            <br>           
            <div class="row" >
                <div class="col-12">
                    <label class="h2">AGREGADOS RECIENTEMENTE </label> 
                </div>



            </div>
            <div class="row" >
                 <%
                  producto p = new producto();
                    logica.logica_producto con = new logica_producto();
                    
                 con.ultimo_registro();
                   // out.print(logica_producto.logica_producto.size());
                    
                    
                    for (int i = 0; i < logica_producto.logica_producto.size();i++) {
                        p = (producto)logica_producto.logica_producto.get(i);
                        
                %>   
            
                
                <div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-3">
  
                     <img src="<% /*out.print("../imagenes/productos/"+p.getProducto_imagen().substring(38,p.getProducto_imagen().length()));*/ 
                         out.print("../imagenes/productos/"+p.getProducto_imagen().substring(81,p.getProducto_imagen().length()));%>" width="auto" height="150"  class="card-body-top" />
                     
             

                     
                    <div class="card-body">
                        
                        <h5 class="card-title"><%=p.getProducto_nombre() %></h5>
                        <p class="card-text"><%=p.getProducto_descripcion() %></p>
                        <a href="../info_producto/producto.jsp?id=<%=p.getProducto_id()%>" class="btn btn-danger">mas informacion</a>
                    </div>
                </div>
                     <%}%>      
             

             

            </div>








            <div class="row">



                <nav aria-label="...">
                    <ul class="pagination">
                        <li class="page-item disabled">
                            <span class="page-link" >Previous</span>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item active" aria-current="page">
                            <span class="page-link">
                                2
                                <span class="sr-only">(current)</span>
                            </span>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

    </div>


    <br> 
    <br> 


    <div class="container">
        <div class="categories-section">
            <div class="row">
                <div class="col-md-4 col-xs-12 col-sm-12">
                    <a href="#">
                        <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                            <div><img src="../imagenes/ambientador.png" width="85" height="85" alt="ambientador"/></div> 
                            <div><h5>Ambientadores</h5></div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 col-xs-12 col-sm-12">
                    <a href="#">
                        <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                            <div><img src="../imagenes/desinfectante.png" width="55" height="85" alt="desinfectante"/></div> 
                            <div><h5>Desinfectantes</h5></div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 col-xs-12 col-sm-12">
                    <a href="#">
                        <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                            <div><img src="../imagenes/detergente.png" width="60" height="85" alt="detergente"/></div> 
                            <div><h5>Detergentes</h5></div>
                        </div>
                    </a>
                </div>
            
            
                <div class="col-md-4 col-xs-12 col-sm-12">
                    <a href="#">
                        <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                            <div><img src="../imagenes/protectores.png" width="70" height="85" alt="protector"/></div> 
                            <div><h5>Protectores y limpiadores</h5></div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 col-xs-12 col-sm-12">
                    <a href="#">
                        <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                            <div><img src="../imagenes/lejia.png" width="70" height="85" alt="lejia"/></div> 
                            <div><h5>Quimicos controlados</h5></div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 col-xs-12 col-sm-12">
                    <a href="#">
                        <div class="category-item" style="background: url(../imagenes/fondo-productos.png)">
                            <div><img src="../imagenes/deshumedecedor.png" width="70" height="85" alt="deshumedecedor"/></div> 
                            <div><h5>Deshumedecedores</h5></div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
</div>









    <br>
    <br>


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
