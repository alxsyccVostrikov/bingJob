<%@ page contentType = "text/html;charset=utf-8"%>
<%@ page import="java.util.Arrays" %>

<%!
//_____________________________________________________________________index.jsp
String lang="pt-br";
String systemName="Bingjob";
String[] systemPag={
"Empresa",
"EncontrarVaga"
};

String[][] infoC={
	{"Ceo","Alxsy Mostovik"},
	{"Email","vostikovalexsycc@gmail.com"}
};


//declaration,declaring functin 
String tabs(int quant){
String tabs="\t";
for(int i=0;i<quant;i++)
tabs+="\t";
return tabs;
}


String simplePageName(String page){
	return page.substring(page.lastIndexOf("/")+1);
}



//________________________________________________________________CadastrandoEmpresa.jsp


String[] area={
"Engenharia Civíl","Engenharia Mecânica","Engenharia Elétrica","Tecnologia da Informação","Nutrição","Fisioterapia"
};


String[] attr_emp={"Nome Fantasia","Email","Telefone","Área","Endereço"};


String creatingOptions(){
	String codigo="";

	for(byte i=0;i<attr_emp.length;i++)
    	if(attr_emp[i]=="Área"){
    		codigo+="<select id='"+attr_emp[i]+"' name='"+attr_emp[i]+"' style='text-align:center'>";

    		codigo+="<option selected style='text-align:center'>"+attr_emp[i]+"</option>";
                    }
	for(byte j=0;j<area.length;j++)
		codigo+="<option>"+area[j]+"</option>";
	codigo+="</select><br>";


	return codigo;

}

/*
String[] arraySort(String arr[]){
/*
	for (int j = 0; j <arr.length;j++){   
            for (int i = 0; i < arr.length-1;i++){   
                if (vet1[i] > vet1[i+1]){   
                    int aux = vet1[i];                 //nestes 2 for estou arrumando o vetor com bubblesort em ordem crescente (menor para o maior)   
                    vet1[i] = vet1[i+1];   
                    vet1[i+1] = aux;   
                    
}
*/
%>