<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<tags:pageTemplate>

	<!-- Page Content -->
	<div class="container">
		<div>
			<b>${sucesso}</b> <b>${falha}</b>
		</div>

		<div class="row">

			<div class="col-lg-3">
				<h2 class="my-4">E-Commerce</h2>
				Este é um projeto construído usando SpringMVC, Hibernate, Java, JPA,
				JSP, Bootstrap, etc..
				</p>
				<hr class="my-4">
				<p>Trata-se de uma aplicação que simula um e-commerce.</p>
				<p>
					Atráves de uma conexão a uma api
					(http://book-payment.herokuapp.com/payment) fornecida pela Alura em
					seu <a
						href="https://cursos.alura.com.br/course/spring-mvc-1-criando-aplicacoes-web">curso
						de SpringMVC</a>, é simulado uma autorização de pagamento.
				</p>
				<p>Fazendo login com as credências:
				<p>
					Email: <b>admin@admin</b>
				<p>
					Senha: <b>123456</b>
				<p>é possivel cadastrar e consultar uma lista de produtos.
				<p>Vale lembrar que todas as operações realizadas aqui são para
					propósitos acadêmicos.
				<p>
					O código fonte desta aplicação encontra-se <a
						href="https://github.com/samuel2412/ecommerce"> aqui</a>.
				<p>Autor: Samuel Alves de Almeida.
			</div>

			<!-- /.col-lg-3 -->

			<div class="col-lg-9">

				<div class="card mt-4">
					<img class="d-block img-fluid" src="${produto.imagem }"
						alt="${produto.nome }" style="width: 900px; height: 350px;">
					<div class="card-body">
						<h3 class="card-title">${produto.nome }</h3>
						<h4>R$ ${produto.preco }</h4>
						<p class="card-text">${produto.descricao }</p>
						<span class="text-warning">&#9733; &#9733; &#9733; &#9733;
							&#9734;</span> 4.0 stars
						<form:form
							action="${s:mvcUrl('CCC#add').arg(0, produto.id ).build() }"
							method="post">
							<button type="submit" class="btn btn-outline-success">Adicionar
								ao Carrinho</button>
						</form:form>
					</div>
				</div>
				<!-- /.card -->

				<div class="card card-outline-secondary my-4">
					<div class="card-header">Opiniões</div>
					<div class="card-body">

						<c:forEach items="${produto.comentarios }" var="comentario">
							<p>${comentario.comentario }</p>
							<small class="text-muted">Postado por
								${comentario.usuarioEmail } em <fmt:formatDate
									value="${comentario.dataComentario.time }"
									pattern="dd/MM/yyyy HH:mm" />
							</small>
							<hr>
						</c:forEach>

						<hr>
						<form:form
							action="${s:mvcUrl('CC#form').arg(0, produto.id ).build() }"
							method="get">
							<button type="submit" class="btn btn-outline-success">Deixe
								sua Opinião</button>
						</form:form>

					</div>
				</div>
				<!-- /.card -->

			</div>
			<!-- /.col-lg-9 -->
		</div>
	</div>

	</div>
	<!-- /.container -->



</tags:pageTemplate>