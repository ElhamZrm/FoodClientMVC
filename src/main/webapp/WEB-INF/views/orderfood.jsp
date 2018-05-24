<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Submit Order</title>
</head>
<body>

	
	<form:form  modelAttribute="orderFood" class="form-horizontal"  >
			<fieldset>
				<legend style="background: #6bcc54;"><h1>Order your food</h1></legend>

				<div class="form-group">
					<label class="control-label col-lg-2" for="name">Name</label>
					<div class="col-lg-10">
						<form:input id="firstName" path="name" type="text" class="form:input-large"/>
						<form:errors path="name" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="email">Email</label>
					<div class="col-lg-10">
						<form:input id="lastName" path="email" type="text" class="form:input-large"/>
						<form:errors path="email" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="time">Delivery Date</label>
					<div class="col-lg-10">
						<form:input id="time" path="time" type="text" class="form:input-large"/>
						<form:errors path="time" cssClass="text-danger"/>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2" for="location">Location</label>
					<div class="col-lg-10">
						<form:input id="location" path="location" type="text" class="form:input-large"/>
						<form:errors path="location" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="address">Address</label>
					<div class="col-lg-10">
						<form:input id="address" path="address" type="text" class="form:input-large"/>
						<form:errors path="address" cssClass="text-danger"/>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Submit Order"/>
					</div>
				</div>
			</fieldset>
		</form:form>
	
	
</body>
</html>