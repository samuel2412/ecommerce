<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="E-commerce">


	<ul>

		<c:forEach items="${produtos }" var="produto">

			<li><a
				href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build() }"
				class="block clearfix">

					<h2>${produto.nome }</h2> <img
					style="height: 100px; width: 50%; display: block;"
					src="${produto.imagem }" alt="Card image"> <small
					class="buy-button">Compre</small>


			</a></li>
		</c:forEach>

	</ul>
</tags:pageTemplate>
