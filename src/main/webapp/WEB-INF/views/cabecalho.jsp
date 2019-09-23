<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<header>

 <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href='<c:url value="/" />' >E-commerce</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href='<c:url value="/" />'><fmt:message key="menu.home"/>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href='<c:url value="/produto/cadastro" />'><fmt:message key="menu.cadastro_produto"/></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href='<c:url value="/produto/" />'><fmt:message key="menu.lista_produto"/></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href='<c:url value="/carrinho" />'><s:message code="menu.carrinho" arguments="${carrinhoCompras.quantidade}" /></a>
          </li>
         
          
          <security:authorize access="isAuthenticated()">
           <li class="nav-item">
          	<security:authentication property="principal" var="usuario" /> <a class="nav-link">${usuario.username }</a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href='<c:url value="/logout" />'>Logout</a>
          </li>
          </security:authorize>
		</div>
        </ul>
      </div>
    </div>
  </nav>


</header>
