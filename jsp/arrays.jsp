<%@ page contentType = "text/html;charset=utf-8"%>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.*"%>


<%!
String[] arr={"arroz","macarrão"};
String[] arr2={"azul","amarelo"};

String arraySort(String[] arr){
String[] strin=arr;
String aux;


for(byte i=0;i<arr.length-1;i++)
	for(byte j=1;j<arr.length;j++)
		byte compare = arr[i].compareToIgnoreCase(arr[j]);
		if(compare < 0){
			aux="menor";
		}
		else if(compare > 0 ){
			aux="maior";
		}
		else{
			aux="igual";
		}

return aux;
}
%>

<%="array desenordenado:"+Arrays.toString(arr)%>
<br>
<%--="array ordenado:"+Arrays.toString(arraySort(arr))--%>
<%="array desenordenado:"+arraySort(arr)%>