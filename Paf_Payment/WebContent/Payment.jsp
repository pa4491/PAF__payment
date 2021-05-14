<%@ page import="com.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Service</title>
<link rel="stylesheet" href="Views/bootstrap.min.css"> 
<script src="Components/jquery-3.4.1.min.js"></script> 
<script src="Components/pay.js"></script>  
</head>
<body>

<div class="container"> 
	<div class="row">  
		<div class="col-6"> 
			<h1>PAYMENT SERVICE</h1>
				<form id="formPayment" name="formPayment" method="post" action="Payment.jsp">  
					Payment Name:  
 	 				<input id="pName" name="pName" type="text"  class="form-control form-control-sm">
					<br> Payment Date:   
  					<input id="pyDate" name="pyDate" type="date" class="form-control form-control-sm">   
  					<br> Amount:   
  					<input id="amount" name="amount" type="text"  class="form-control form-control-sm">
					<br>  
					<input id="btnSave" name="btnSave" type="button" value="SAVE" class="btn btn-primary">  
					<input type="hidden" id="hidPaymentIDSave" name="hidPaymentIDSave" value=""> 
				</form>
				
				<div id="alertSuccess" class="alert alert-success"> </div>
				
			   <div id="alertError" class="alert alert-danger"></div>
				
			   <br>
				<div id="divPaymentGrid">
					<%
					    Payment paymentObj = new Payment();
						out.print(paymentObj.readPayment());
					%>
				</div>
				
				 
			</div>
		</div>
</div>
 
</body>
</html>