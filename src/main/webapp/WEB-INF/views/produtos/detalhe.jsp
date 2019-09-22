<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<tags:pageTemplate
	titulo="E-commerce">


	<p>
	<div class="card mb-3">
		<form:form
			action="${s:mvcUrl('CCC#add').arg(0, produto.id ).build() }"
			method="post" commandName="produto" class="container">
			<h3 class="card-header">${produto.nome }</h3>
			<div class="card-body">
				<h5 class="card-title"></h5>
				<h6 class="card-subtitle text-muted"></h6>
			</div>
			<img style="height: 300px; width: 50%; display: block;"
				src="${produto.imagem }" alt="Card image">


			<div class="card-body">
				<p class="card-text">Descricão: ${produto.descricao }</p>
			</div>
			<ul class="list-group list-group-flush">
				<li class="list-group-item"><b>Marca:</b> ${produto.marca }</li>

				<li class="list-group-item"><label class="variant-label"><b>Preço:
					</b> ${produto.preco }</label></li>

				<li class="list-group-item"><b>Data do Anúncio: <fmt:formatDate
							pattern="dd/MM/yyyy HH:mm" value="${produto.dataAnuncio.time}" />
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


</tags:pageTemplate>