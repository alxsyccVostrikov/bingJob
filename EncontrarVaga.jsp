<%@ page contentType = "text/html;charset=utf-8"%>
<%@ page import="func.*" %> 
<%@ page import="java.sql.*"%>
<%--@include file="con.jsp"--%>
<%@include file="jsp/settings.jsp"%>
<script src="./js/jquery.min.js"></script>
<!--%@ page language="java" import="conexao.*%>-->
<script>
    desc=[];
    sigla=[];
</script>
    
<%
/*rs=st.executeQuery("select * from bj");
    rs.next();
  */
    %>
    <!DOCTYPE html>
    <html lang="<%=lang%>">
    <head>
      <meta charset="UTF-8">
      <title><%=simplePageName(request.getRequestURI())%></title>

        <%//descricao
/*
rs=st.executeQuery("select descricao from tipo");
    while(rs.next()){     
*/
      %>
<script>
    desc.push("<%--=rs.getString("descricao")--%>");
</script>
<%--}--%>

        <%//sigla
/*
rs=st.executeQuery("select sigla from tipo");
    while(rs.next()){     
*/
      %>
<script>
sigla.push("<%--=rs.getString("sigla")--%>");
</script>
<%--}--%>
        
        <script>
    function mudar(){
        var nome=document.getElementById('').value;

        for(var i=0;i<desc.length;i++)
            if(nome==sigla[i]){
               document.getElementById('tp').innerHTML=desc[i]; 
            }
        
  }
</script>
</head>
    <link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" type="text/css">
  <link rel="stylesheet" type="text/css" href="./css/stilo.css">
<%
//BingoJob bng = new BingoJob();
%>
    <body>
        
        <div class="container">
            <div class="content">
<div class="title"><%=simplePageName(request.getRequestURI()).replace(".jsp","")%></div>
   <%
   /*
                ResultSet sigla=null;
sigla=st.executeQuery("select sigla from tipo order by sigla");
       while(sigla.next()){
            out.println("<option>"+sigla.getString("sigla")+"</option>");
        }
     */
                                out.println(creatingOptions());
                              %>
                <%/*
ResultSet desc=st.executeQuery("select descricao from tipo order by sigla limit 1");
desc.next();
String descS="<script>document.write(nome)</script>";
*/
%>
                <!--</select>-->
                <pre id="tp"><%--=desc.getString("descricao")--%>
</pre>
            
            </div>
        </div>
    <p id="texto">
        
   </body>
</html>
<script>
$(document).ready(function(){
 $("#Área").change(function(){
     tipo=$("#Área").text();
     alert("ok");
    
$.get("encontrarVagaConsultas.jsp",{tipo:tipo},function(file){
$("#texto").html(file); 
});     
 
 });   

});
</script>




