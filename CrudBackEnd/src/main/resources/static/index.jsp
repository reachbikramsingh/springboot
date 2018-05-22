<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<table>
<thead>
<tr>
<th>Id</th>
<th>Name</th>
<th>salary</th>
<th>Department</th>
</tr>
</thead>
<tbody id="tblbody">

</tbody>
</table>
</body>
</html>

<script>
$(document).ready(function(){
	
	$.ajax({
		
		url:"/api/users",
		dataType:"Json",
		type:"get",
		success:function(response){
			var body = "<tr>";
			$.each(response,function(i,item){
				
			});
			body+= "</tr>";
			
		},
		error:function(){}
	})
});
</script>