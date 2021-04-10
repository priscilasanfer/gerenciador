<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
	<body>
	
		<c:if test="${not empty nomeEmpresa}">
			Empresa ${nomeEmpresa} com CNPJ - ${cnpjEmpresa} e Data de Abertura  <fmt:formatDate value="${dataAbertura}" pattern="dd/MM/yyyy"/> foi cadastrado com sucesso!
		</c:if>
		
		<c:if test="${empty nomeEmpresa}">
			Nenhuma empresa foi cadastrada.
		</c:if>
		
	</body>
</html>