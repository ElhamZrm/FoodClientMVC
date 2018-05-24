<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Order Status</title>
</head>
<body>
	<fieldset>
				<legend style="background: #6bcc54;"><h1>Order Status : ${result}</h1></legend>
				
				
				<div class="form-group">
					<label  for="name">Name : </label>
					
						${order.name}
					
				</div>

				<div class="form-group">
					<label for="email">Email : </label>
					
						${order.email}
					
				</div>

				<div class="form-group">
					<label for="time">Delivery Date : </label>
					
						${order.time}
					
				</div>
				
				<div class="form-group">
					<label for="location">Location : </label>
					
						${order.location}
					
				</div>

				<div class="form-group">
					<label  for="address">Address : </label>
					
						${order.address}
					
				</div>
				
	</fieldset>
</body>
</html>