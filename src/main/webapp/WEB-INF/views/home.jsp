<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<tags:pageTemplate titulo="E-commerce">

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">

        <h1 class="my-4">Shop Name</h1>
        <div class="list-group">
          <a href="#" class="list-group-item">Category 1</a>
          <a href="#" class="list-group-item">Category 2</a>
          <a href="#" class="list-group-item">Category 3</a>
        </div>

      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">

        <div id="myCarousel" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="myCarousel" data-slide-to="1"></li>
            <li data-target="myCarousel" data-slide-to="2"></li>       
            
          </ol>
          
          <div class="carousel-inner" role="listbox">
          	<c:forEach items="${lastAdd }" var="produto" varStatus="status">
       
          	<c:if test="${status.index == '0'}">
          		<div class="carousel-item active">
              <img class="d-block img-fluid" src="${produto.imagem }" alt="${produto.nome }" style="width:900px;height:350px;">
            </div>
          	</c:if>
          	
          <c:if test="${status.index == '1'}">
          		<div class="carousel-item">
              <img class="d-block img-fluid" src="${produto.imagem }" alt=${produto.nome } style="width:900px;height:350px;">
            </div>
          	</c:if>
          	
          	<c:if test="${status.index == '2'}">
          		<div class="carousel-item">
              <img class="d-block img-fluid" src="${produto.imagem }" alt=${produto.nome } style="width:900px;height:350px;">
            </div>
          	</c:if>
          	
          	</c:forEach>
    
          </div>
          <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>

        <div class="row">


	<c:forEach items="${produtos }" var="produto">

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build() }">
              <img class="card-img-top"  src="${produto.imagem }" alt=${produto.nome }></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build() }">${produto.nome }</a>
                </h4>
                <h5>R$ ${produto.preco }</h5>
                <p class="card-text">${produto.descricao }</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>
          
	</c:forEach>
          

        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->


</tags:pageTemplate>
