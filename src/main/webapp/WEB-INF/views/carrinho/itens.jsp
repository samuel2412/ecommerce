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


<title>Projeto Financiamento de Experimentos</title>



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
	<div class="container">
		<h2>Carrinho</h2>
		<table class="table table-hover">
			<thead>
				<tr class="table-dark">
					<th class="cart-img-col"></th>
					<th width="20%">Imagem</th>
					<th width="10%">Nome</th>
					<th width="10%">Descrição</th>
					<th width="10%">Marca</th>
					<th width="10%">Preço</th>
					<th width="10%">Quantidade</th>
					<th width="10%">Total</th>
					<th width="5%"></th>

				</tr>
			</thead>

			<tbody>
				<c:forEach items="${carrinhoCompras.itens}" var="item">
					<tr>
						<td></td>
						<td><img style="height: 100px; width: 50%; display: block;"
							src="${item.produto.imagem }" alt="Card image"></td>
						<td class="item-title">${item.produto.nome}</td>
						<td class="item-title">${item.produto.descricao}</td>
						<td class="item-title">${item.produto.marca}</td>
						<td class="numeric-cell">${item.produto.preco}</td>
						<td class="quantity-input-cell">
								<input type="number" readonly="readonly" min="0" id="quantidade" name="quantidade" value="${carrinhoCompras.getQuantidade(item) }" />
						</td>
						<td class="numeric-cell">${carrinhoCompras.getTotal(item)}</td>

						<td class="remove-item">
							<form:form action="${s:mvcUrl('CCC#remover').arg(0, item.produto.id).build() }" method="POST">
								<input type="image" src="${contextPath }resources/imagens/excluir.png" 
									alt="Excluir" title="Excluir" />
							</form:form>	
						</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="6"></td>
					<%-- ${s:mvcUrl('FC#finalizar').build()}  --%>
					<td>
						<form:form action="${s:mvcUrl('CCC#finalizar').build() }" method="post">
							<input type="submit" class="checkout" name="checkout" value="Finalizar compra" />
						</form:form>	
						</td>
					<td class="numeric-cell">${carrinhoCompras.getTotal() }</td>
					<td></td>

				</tr>
			</tfoot>
		</table>
	</div>




</body>
</html>