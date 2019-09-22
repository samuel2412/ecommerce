<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<header id="layout-header">
   	<nav class="navbar navbar-expand-lg navbar-dark bg-primary"
		role="navigation">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor01" aria-controls="navbarColor01"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarColor01">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link"
					href='<c:url value="/" />'><fmt:message key="menu.home"/> </a></li>
				<%-- <security:authorize access="hasRole('ROLE_ADMIN')"> --%>
					<li class="nav-item"><a class="nav-link"
						href='<c:url value="/produto/cadastro" />'><fmt:message key="menu.cadastro_produto"/></a></li>
					<li class="nav-item"><a class="nav-link"
						href='<c:url value="/produto/" />'><fmt:message key="menu.lista_produto"/> </a></li>
				<%-- /security:authorize> --%>
				<li class="nav-item"><a class="nav-link"
					href='<c:url value="/carrinho" />'><s:message code="menu.carrinho" arguments="${carrinhoCompras.quantidade}" /></a></li>
			</ul>
		</div>
		<div style="text-align: right;">
			<security:authorize access="isAuthenticated()">
				<security:authentication property="principal" var="usuario" />${usuario.username }
				 <a href="<c:url value="/logout" />">Sair</a>
			</security:authorize>
		</div>
	</nav>
</header>
