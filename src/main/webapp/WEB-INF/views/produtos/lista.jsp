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
	<h1>Lista de Produtos</h1>
	<div>
		
			<div><b>${sucesso}</b></div>
			<div><b>${falha}</b></div>
		
	</div>
	<table>
		<tr>
			<td>Nome</td>
			<td>Descrição</td>
			<td>Marca</td>
			<td>Imagem</td>
			<td>Data do Anuncio</td>
			<td>Preco</td>
		</tr>
		<c:forEach items="${produtos}" var="produto">
			<tr>
				<td><a
					href="${s:mvcUrl('PC#detalhe').arg(0,produto.id).build()}">
						${produto.nome} </a></td>
				<td>${produto.descricao}</td>
				<td>${produto.marca}</td>
				<td>${produto.imagem}</td>
				<td><fmt:formatDate value="${produto.dataAnuncio.time }"
						pattern="dd/MM/yyyy HH:mm" /></td>
				<td>${produto.preco}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>