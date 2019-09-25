<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">


<c:url value="/" var="contextPath" />
<link
	href="${contextPath }resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${contextPath }resources/css/main.css" rel="stylesheet">
<link href="${contextPath }resources/css/shop-homepage.css"
	rel="stylesheet">



<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/w/bs4/dt-1.10.18/datatables.min.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" />



<script type="text/javascript"
	src="https://cdn.datatables.net/w/bs4/dt-1.10.18/datatables.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>







</head>
<%@ include file="/WEB-INF/views/cabecalho.jsp"%>

<body>
	<div class="container">

		



		<div class="row header" style="text-align: center; color: green">
		</div>
		<table id="myTable" class="table table-striped">
			<thead>
				<tr>

					<th>Nome</th>
					<th>Descrição</th>
					<th>Marca</th>
					<th>Data do Anuncio</th>
					<th>Preco</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${produtos}" var="produto">
					<tr>
						<td><a
							href="${s:mvcUrl('PC#detalhe').arg(0,produto.id).build()}">
								${produto.nome} </a></td>
						<td>${produto.descricao}</td>
						<td>${produto.marca}</td>
						<td><fmt:formatDate value="${produto.dataAnuncio.time }"
								pattern="dd/MM/yyyy HH:mm" /></td>
						<td>${produto.preco}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

<div class="footer">
		<div class="container">
			<p class="m-0 text-center text-black">Copyright &copy; E-commerce
				2019</p>
			<p class="m-0 text-center text-black">
				<a href="?locale=pt"><fmt:message key="rodape.pt" /></a> - <a
					href="?locale=en_US"><fmt:message key="rodape.en" /></a>
			</p>
			</div>
		</div>
	

</body>




<script>
	$(document).ready(function() {
		$('#myTable').dataTable();
	});
</script>
</html>
