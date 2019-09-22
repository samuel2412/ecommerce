<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
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

<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais -
	Casa do Código</title>
</head>
<body>

	<div class="container">
	<form:form action="${s:mvcUrl('PC#gravar').build() }" method="post" commandName="produto">
			<div class="form-group">
				<label>Nome</label>
				<form:input path="nome" cssClass="form-control" />
				<form:errors path="nome" />
			</div>
			<div class="form-group">
		        <label>Descrição</label>
				<form:input path="descricao" cssClass="form-control" />
		        <form:errors path="descricao" />
			</div>
			<div class="form-group">
				<label>Marca</label>
				<form:input path="marca" cssClass="form-control" />
		        <form:errors path="marca" />
			</div>
			<div class="form-group">
				<label>Imagem</label>
				<form:input path="imagem" cssClass="form-control"/>
		        <form:errors path="imagem" />
			</div>
			<div class="form-group">
				<label>Preco</label>
				<form:input path="preco" cssClass="form-control"/>
		        <form:errors path="preco" />
			</div>
				
				<form:hidden path="dataAnuncio" value="10/09/2019" cssClass="form-control"/>
		       			
			
			<button type="submit" class="btn btn-primary">Cadastrar</button>
		</form:form>
	</div>
</body>
</html>