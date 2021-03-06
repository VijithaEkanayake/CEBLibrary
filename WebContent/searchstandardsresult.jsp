<%
if(request.getAttribute("userLevel").equals("member")){ %>
	<%@ include file="headerstandards.jsp"%>
<%}else{%>
	<%@ include file="admin/header.jsp" %>
<%}
%>
<div class="content">
	<table border=1 >
        <thead>
            <tr>
                <th>Refference No</th>
                <th>Type</th>
                <th>Edition</th>
                <th>Amendment</th>
                <th>Description</th>
                <th>Year of Published</th>
                <th>Year Amended</th>
                <th>Location</th>
                                    <%
if(request.getAttribute("userLevel").equals("admin")){ %>
	<th colspan=3>Action</th>
<%}else{%>
	<th>Action</th>
<%}
%>
                
                
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${standards}" var="standard">
                <tr>
                    <td><c:out value="" /> ${standard.refNo}</td>
                    <td><c:out value="" /> ${standard.type}</td>
                    <td><c:out value="" /> ${standard.edition}</td>
                    <td><c:out value="" /> ${standard.amendment}</td>
                    <td><c:out value="" /> ${standard.description}</td>
                    <td><c:out value="" /> ${standard.yearOfPublished}</td>
                    <td><c:out value="" /> ${standard.yearOfAmended}</td>
                    <td><c:out value="" /> ${standard.location}</td>
                    
                   <td><a href="StandardController?action=viewstandard&standardId=<c:out value="${standard.refNo}"/>">View Details</a></td> 
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>