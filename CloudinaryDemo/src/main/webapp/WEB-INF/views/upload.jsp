<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="pre.jsp"%>

<h1>Your file was uploaded sucessfully!</h1>

<c:if test="${!empty photo}">
<div class="photo">
    <h2>${photo.title}</h2>
    <a href="<cl:url storedSrc="${photo.upload}"/>" target="_blank">
        <c:if test="${fileUpload.isImage}">
            <cl:image storedSrc="${photo.upload}" extraClasses="thumbnail inline" />
        </c:if>
        <c:if test="${!fileUpload.isImage}">
            Non image file
        </c:if>
    </a>
</div>
</c:if>

<a href="<c:url value="/upload_form"/>" class="back_link">Back to upload page</a>

<c:if test="${!empty upload}">
<div class="upload_details">
    <h2>Upload metadata:</h2>
    <table>
        <c:forEach var="entry" items="${upload}">
            <tr><td>${entry.key}</td><td>${entry.value}</td></tr>
        </c:forEach>
    </table>
</div>
</c:if>

<%@include file="post.jsp"%>