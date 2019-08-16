<%@page contentType = "text/html;charset=utf-8"%>
<%@page import="func.*"%>
<%@page import="example.*"%>

<%@page import="conexao.*" import="java.io.*,javax.sql.*" %> 
<%@include file="con.jsp"%>
<%@include file="settings.jsp"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title><%=systemName/*rs.getString("nome")*/%></title>
</head>
<body>
    
    <link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" type="text/css">
    <style>
        @import url('./css/stilo.css');
    </style>
    <%
  //  HelloWorld h = new HelloWorld();
        /*

            rs=st.executeQuery("select * from bj");
            rs.next();
        */
    %>
<div class="container">
        <div class="content">
          <div class="title"><%=systemName/*rs.getString("nome")*/%></div>
                <input type="button" value="Cadastre sua Empresa" onclick="window.open('<%=systemPag[0]%>.jsp','_blank')" class="btn btn-sm"/>
                <input type="button" value="Encontre uma Empresa" onclick="window.open('<%=systemPag[1]+".jsp"%>','_blank')"/>
         </div>
    </div>
    
    
        <%
            for(int i=0;i<=5;i++)    
                out.println("<br>");
                out.println("Prometemos ser um acerto na hora de encontrar um emprego.");
                out.println("<h3>Fuja da Crise!</h3>");
        %>   
        <pre>
            <%
                for(int i=0;i<=4;i++)    
                    out.println("<br>");
                    out.println("<h2>\"Missão de hoje,faça!</h2>");   
                    out.println("<h1>    missão de sempre,Continue Tentando!\"</h1>"+tabl(7)+"Nando Pinheiro.");
                    /* rs.close();*/
            %>
        </pre>
        </body>
</html>
