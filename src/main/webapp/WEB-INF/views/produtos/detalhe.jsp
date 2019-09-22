<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<c:url value="/" var="contextPath" />
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />


<title>Projeto Financiamento de Experimentos</title>


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</head>
<body>
	<header>
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
						href='<c:url value="/" />'>Home </a></li>
					<li class="nav-item"><a class="nav-link"
						href='<c:url value="/produto/cadastro" />'>Cadastro</a></li>
					<li class="nav-item"><a class="nav-link"
						href='<c:url value="/produto/" />'>Consultar </a></li>
					<li class="nav-item"><a class="nav-link"
						href='<c:url value="#" />'>Carrinho
							(${carrinhoCompras.quantidade})</a></li>
				</ul>

			</div>
		</nav>
	</header>
	<p>
	<div class="card mb-3">
		<form:form action="${s:mvcUrl('CCC#add').arg(0, produto.id ).build() }" method="post" commandName="produto" class="container">
			<h3 class="card-header">${produto.nome }</h3>
			<div class="card-body">
				<h5 class="card-title"></h5>
				<h6 class="card-subtitle text-muted"></h6>
			</div>
			<img style="height: 200px; width: 100%; display: block;"
				src="${produto.imagem }" alt="Card image">

			
			<div class="card-body">
				<p class="card-text">Descricão: ${produto.descricao }</p>
			</div>
			<ul class="list-group list-group-flush">
				<li class="list-group-item"><b>Marca:</b>
					${produto.marca }</li>
				
					<li class="list-group-item">
						<label class="variant-label"><b>Preço: </b> ${produto.preco }</label></li>
				
				<li class="list-group-item"><b>Data do Anúncio: <fmt:formatDate
							pattern="dd/MM/yyyy HH:mm" value="${experimento.dataAnuncio.time}" />
				</b>
				<li class="list-group-item">
					<div class="float-right">
						<a href="<c:url value="/produto" />">
							<button type="button" class="btn btn-outline-danger">Voltar</button>
						</a>
						<button type="submit" class="btn btn-outline-success">Adicionar
							ao Carrinho</button>
					</div>

				</li>
			</ul>

			<div class="card-footer text-muted">
				<br>
			</div>
		</form:form>
	</div>
	
</body>
</html>