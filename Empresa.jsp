<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="func.*" import="conexao.*" import="java.io.*,java.sql.*,javax.sql.*"%> 
<%--@include file="con.jsp"--%>
<%@include file="jsp/settings.jsp"%>

<%--
rs=st.executeQuery("select * from bj");
rs.next();
--%>
        
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title><%=simplePageName(request.getRequestURI())%></title>
</head>
<link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" >
<link rel="stylesheet" type="text/css" href="./css/stilo.css" >
<script src="./js/jquery.min.js"></script>
<script src="./js/jquery.mask.min.js"></script>
<body>
  
<div class="container">
            <div class="content">
<div class="title">Empresa</div>
               <pre>
                <form action="CadastrandoEmpresa.jsp?" method="get" id="formulario">
                  <%
                    for(byte i=0;i<attr_emp.length;i++){
                          if(attr_emp[i]=="Área"){
                            out.println(/*"<label>"+attr_emp[i]+"</label>*/"<br>");

                           out.println(creatingOptions());
                        }
                   
                          else if(attr_emp[i]=="Endereço"){
                            out.println("<label>"+attr_emp[i]+"</label><br>"+
                            "<textarea rows=4 cols=50 id="+attr_emp[i]+" name="+attr_emp[i]+"></textarea>");
                          }
                          else{
                            out.println("<label>"+attr_emp[i]+"</label><br>"+
                            "<input type="+attr_emp[i]+" required></input></br>");
                        
                      }
                  }
                  
                  %>
                  <input type="submit" value="Cadastrar" style="height:20px;width:200px" class="btn-primary btn-sm" id="cad_btn"/>
                </form></pre>
            </div>
        </div>

    </body>	
</html>


<script>
 document.querySelector("#cad_btn").addEventListener("click",function(){

quantElement=document.getElementById("formulario").length;
form=document.getElementById("formulario");
arquivo="CadastrandoEmpresa.jsp?";
query="";

for(i=0;i<quantElement-1;i++){
     if(i==(quantElement-2)){
query+=(form.elements[i].id+"="+form.elements[i].value);
      }
        else{
query+=(form.elements[i].id+"="+form.elements[i].value+"&");
 }
 }
window.location.href = arquivo+query;
     
 });
                        
$(document).ready(function(){
   $("#tel").mask("(00)0000-0000"); 
   $("#cnpj").mask("000-000-000/0000-0");
    
    
    $("#tipo").change(function(){
        alert($("#tipo").val());
    });
});
</script>
<script>
document.getElementById("formulario").reset()
  
      </script>
