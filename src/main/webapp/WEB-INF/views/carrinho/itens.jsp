<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="E-commerce">
<jsp:attribute name="extraScripts">
        <script>
            console.log("Finalização de compra de ${carrinhoCompras.quantidade} itens");
        </script>
    </jsp:attribute>

    <jsp:body>

   
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
 </jsp:body>
</tags:pageTemplate>