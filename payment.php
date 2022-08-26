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
					 <a href="account.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Update Account </a>
					 <a href="balance.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Balance </a>
					 <a href="sendmoney.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Send Money </a>
					 <a href="cashin.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Cash In </a>
					 <a href="cashout.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Cash Out </a>
					 <a href="transaction.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Transaction </a>
					 <a href="signin.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Log Out </a>
				 </div>
			</div>		 
	   </section>
	   </br> <br/>
	   
	   <section id="section1">
	   
			<div class="title" style="color:#4d0039; background:#99ffff; text-align:center; margin-left:30%; margin-right:30%; margin-top:20px; margin-bottom:20px"> Want to pay money to a merchant?</div>
			
			<form action="pay.php" class="form_design" method="post" style="color:#4d0039; background:#99ffff; margin-left:30%; margin-right:30%;">
			      Enter User ID </br> </br> <input type="text" name="id1"  style="background:#ffffff"> <br/> </br>
			      Enter Merchant ID </br> </br> <input type="text" name="id2"  style="background:#ffffff"> <br/> </br>
				  Enter Amount </br> </br> <input type="text" name="amount"  style="background:#ffffff"> <br/> </br>
				  <input type="submit" value="Pay" style="color:#99ffff; background:#4d0039; margin-top:20px">
				  </form>
	   
	   </section>
	   
	</body>
		
</html>