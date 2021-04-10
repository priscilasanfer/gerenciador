<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, br.com.priscilasanfer.gerenciador.servlet.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/removeEmpresa" var="linkServletRemoveEmpresa"/>
<c:url value="/mostraEmpresa" var="linkServletMostraEmpresa"/>

<!DOCTYPE html>

<html>
<body>

	<c:if test="${not empty nomeEmpresa}">
		Empresa ${nomeEmpresa} com CNPJ - ${cnpjEmpresa} e Data de Abertura  <fmt:formatDate value="${dataAbertura}" pattern="dd/MM/yyyy"/> foi cadastrado com sucesso!
	</c:if>
	
	<br />

	Lista de Empresas: <br/>
	
	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li> 
				${empresa.nome} - CNPJ:  ${empresa.cnpj}, data de Abertura: <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>  
				<a href="${linkServletRemoveEmpresa}?id=${empresa.id}">remove</a>
				<a href="${linkServletMostraEmpresa}?id=${empresa.id}">editar</a>			
			</li>
		</c:forEach>
	</ul>

</body>
</html>
