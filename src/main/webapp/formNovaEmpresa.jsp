<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/novaEmpresa" var="linkServletNovaEmpresa"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form Para Cadastro de um novo Autor</title>
</head>
<body>
	<form action="${linkServletNovaEmpresa}" method="post">
		Nome: <input type="text" name="nome"/>
		<br>
		CNPJ: <input type="text" name="cnpj"/>
		<br>
		Data de Abertura: <input type="text" name="data"/>
		<br>
		<input type="submit"/> 
	</form>
</body>
</html>