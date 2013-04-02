			<div id="loading" style="margin: 0 auto; text-align: center; display: none;"></div>
        	
        	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        	<c:if test="${not empty returnCode}">
        	<c:choose>
        	<c:when test="${returnCode == '0'}">
       		<div id="wine-data">
        		<c:if test="${not empty data}">
        		<div class="page-header">        			
		        	<h1 id="search_terms" style="color: #dddddd; display: none;">Buh!</h1>		        	
		        	<h1>enjoy wine, enjoy your life.</h1>
		        </div>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Merchant</th>
							<th>Vintage</th>
							<th>Detail</th>
							<th>Price</th>							
						</tr>
					</thead>
					<tbody id="results">						
					<c:forEach items="${data}" var="wine">
						<tr>
							<td>${wine.merchant}</td>
							<td>${wine.vintage}</td>
							<td>${wine.merchantDescription}</td>
							<td style="font-size: 1.2em; font-weight: bold; text-align: right;">${wine.price}&euro;</td>
						</tr>						
					</c:forEach>						
					</tbody>
				</table>
				</c:if>
			</div>
        	</c:when>
        	<c:when test="${returnCode == '1'}">
        	<div class="message"><h1>No wines found.</h1></div>
        	</c:when>
        	<c:when test="${returnCode == '2'}">
        	<div class="message"><h1>Oops! There's something wrong in your inputs, fix it first.</h1></div>
        	</c:when>
        	<c:when test="${(returnCode == '3') || (returnCode == '4') || (returnCode == '5') || (returnCode == '99')}">
        	<div class="message"><h1>Oops! Something strange happened :( Try again later...</h1></div>
        	</c:when>
        	<c:when test="${(returnCode == '6')}">
        	<div class="message"><h1>Mmm... Every field must have a value...</h1></div>
        	</c:when>
        	<c:when test="${(returnCode == '7')}">
        	<div class="message"><h1>Hey! Check your internet conection or try later...</h1></div>
        	</c:when>
        	<c:otherwise>        	
        	</c:otherwise>
        	</c:choose>
        	</c:if> <!-- If not empty returnCode -->