<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
    	<a class="navbar-brand" href="#">Library Logo</a>
      	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        	<span class="navbar-toggler-icon"></span>
      	</button>
      	<div class="collapse navbar-collapse" id="navbar" name="navbar">
        	<ul class="navbar-nav ml-auto">
          		<li class="nav-item active">
            		<a class="nav-link" href="#">Home
            			<span class="sr-only">(current)</span>
            		</a>
          		</li>
	          	<li class="nav-item">
	        	    <a class="nav-link" href="#">About</a>
	        	</li>
		        <li class="nav-item">
		            <a class="nav-link" href="#">Map</a>
		        </li>
		        <li class="nav-item">
		            <a class="nav-link" href="#">Review</a>
		        </li>
		        <c:catch>
			        <c:choose>
			        	<c:when test="${empty id }">		        
					        <li class="nav-item">
			           	      	<a class="btn btn-primary" href="#">Sign In</a>
					        </li>
					    </c:when>
					    <c:otherwise>
					    	<li class="nav-item">
			           	      	<a class="btn btn-primary" items="${show}" href="#">${show.id}</a>
					        </li>
							<li class="nav-item">
			           	      	<a class="btn btn-primary" href="#">로그아웃</a>
					        </li>				        
					    </c:otherwise>
					</c:choose>
				</c:catch>
        	</ul>
      	</div>
    </div>
</nav>  
    