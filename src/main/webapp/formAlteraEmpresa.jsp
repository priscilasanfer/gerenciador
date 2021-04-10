<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/alteraEmpresa" var="linkServletAlteraEmpresa"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="${linkServletAlteraEmpresa}" method="post">
		Nome: <input type="text" name="nome" value="${empresa.nome}"/>
		<br>
		CNPJ: <input type="text" name="cnpj" value="${empresa.cnpj}"/>
		<br>
		Data de Abertura: <input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>"/>
		<br>
		
		<input type="hidden" name="id" value="${empresa.id}">
		<input type="submit"/> 
	</form>
</body>
</html>