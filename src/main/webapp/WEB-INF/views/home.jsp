<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>

<html>
<head>
<c:url value="/" var="contextPath" />
<link rel="stylesheet" href="${contextPath}resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${contextPath}resources/css/bootstrap-theme.min.css">


<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />



<title>Livros de Java, Android, iPhone, PHP, Ruby e muito mais -
	Casa do Código</title>
</head>
<body>

	

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


	

</body>
</html>