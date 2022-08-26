<html lang="en">
   <head>
        <meta charset="utf-8"/> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<meta name="description" content="About the site"/>
		<meta name="author" content="Author name"/>
		<title>ONLINE FINANCIAL SYSTEM</title>
	</head>	
	

	<body style="background:#4d0039" >
	   <section id="header">
			<div class="row">
	             <div class="col-md-12" style="font-size: 100px; text-align: center; color:#99ffff;">Online Financial System </div>
			</div>
			</br> <br/>
			<div class="row">
				 <div class="col-md-24" style="text-align: right; font-size: 20px; background:#4d0039;">
				     <a href="home.php" style="color:#4d0039; background:#99ffff"> Home </a>
					 <a href="balance.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Balance </a>
					 <a href="sendmoney.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Send Money </a>
					 <a href="payment.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Payment </a>
					 <a href="cashin.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Cash In </a>
					 <a href="cashout.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Cash Out </a>
					 <a href="transaction.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Transaction </a>
					 <a href="signin.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Log Out </a>
				 </div>
			</div>		 
	   </section>
	   </br> <br/>
	   
	   <section id="section1">
	   
			<div class="title" style="color:#4d0039; background:#99ffff; text-align:center; margin-left:30%; margin-right:30%; margin-top:20px; margin-bottom:20px"> Want to update your account information?</div>
			
			<form action="updateaccount.php" class="form_design" method="post" style="color:#4d0039; background:#99ffff; margin-left:30%; margin-right:30%;">
			      Enter your Id </br> </br> <input type="text" name="id"  style="background:#ffffff"> <br/> </br>
				  Enter new First Name </br> </br> <input type="text" name="fname"  style="background:#ffffff"> <br/> </br>
				  Enter new Last Name </br> </br> <input type="text" name="lname"  style="background:#ffffff"> <br/> </br>
				  Enter new Address </br> </br> <input type="text" name="address"  style="background:#ffffff"> <br/> </br>
				  Enter nominee </br> </br> <input type="text" name="nominee"  style="background:#ffffff"> <br/> </br>
				  <input type="submit" value="Update" style="color:#99ffff; background:#4d0039; margin-top:20px">
				  </form>
	   
	   </section>
	   
	</body>
		
</html>