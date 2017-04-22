<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="_csrf_param" content="${_csrf.parameterName}"/>
<meta name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
hello there !!!<br>
 <button type="button" onclick="location.href='${pageContext.request.contextPath}/create';"> start workflow</button> <br>
 <button type="button" onclick="location.href='${pageContext.request.contextPath}/workflows';"> View Workflows</button> <br>
 <button type="button" onclick="sendDataWithJson();"> View data</button> <br>

<a href="${pageContext.request.contextPath}/login">login</a>



    <p>Parameter from home  ${pageContext.request.userPrincipal.name}</p>
</body>

<script type="text/javascript">
function success(data){
	alert(data.text);
}
function error(data){
	alert("error");
}
function sendDataWithJson(){

$.ajax({
    type: 'POST',
    url: '<c:url value="/sendmessage" />',
    data: JSON.stringify({"text":"bla bla bla","name":"MED"}),
    success:success,
    error:error,
    contentType: "application/json",
    dataType: "json"
    
});


}

$(function () {
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    $(document).ajaxSend(function(e, xhr, options) {
        xhr.setRequestHeader(header, token);
    });
});
</script>
</html>