<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="E-commerce">

<p>
	<h1>Lista de Produtos</h1>
	<div>

		<div>
			<b>${sucesso}</b>
		</div>
		<div>
			<b>${falha}</b>
		</div>

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

	<%--<script>
	$(document).ready(function() {
		$('#myTable').dataTable();
	});
</script>

<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
 --%>
	
	
	</tags:pageTemplate>