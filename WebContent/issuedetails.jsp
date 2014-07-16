<%
if(request.getAttribute("userLevel").equals("member")){ %>
	<%@ include file="header.jsp" %>
<%}else{%>
	<%@ include file="admin/header.jsp" %>
<%}
%>
<div class="content">
<div style="background: #3C3B37; width: 100%;"><input type="button" value="Back" onclick="history.back()"></div>
	<table border=1 >
        <thead>
            <tr>
                <th>Book Acc No.</th>
                <th>Member ID</th>
                <th>Issued Date</th>
                <th>Should Return</th>
                <th>Issued Person</th>
                <th>Issue ID</th>
                <th colspan=2>Action</th>
               
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${books}" var="bookissues">
                <tr>
                    <td><c:out value="" /> ${bookissues.accNo}</td>
                    <td><c:out value="" /> ${bookissues.memberId}</td>
                    <td><c:out value="" /> ${bookissues.issuedDate}</td>
                    <td><c:out value="" /> ${bookissues.legalReturnDate}</td>
                    <td><c:out value="" /> ${bookissues.issuer}</td>
                    <td><c:out value="" /> ${bookissues.issueID}</td>
                    
                    <td><a href="BookIssueController?action=viewissue&issueId=<c:out value="${bookissues.issueID}"/>">View Details</a></td>
                    
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>