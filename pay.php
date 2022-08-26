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
					 <a href="payment.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Payment </a>
					 <a href="cashin.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Cash In </a>
					 <a href="cashout.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Cash Out </a>
					 <a href="transaction.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Transaction </a>
					 <a href="signin.php" style="margin-left: 20px; color:#4d0039; background:#99ffff"> Log Out </a>
				 </div>
			</div>		 
	   </section>
	   	   
	   <section id="section1">
	   
	   <div style="margin-left:10%; margin-right:10%; margin-top:50px; margin_bottom:50px; text-align:center; background:#000066; color:#99ffff ">
	        <?php

                 require_once('Connect.php');

                    if(isset($_POST['id2']) && isset($_POST['amount']) && isset($_POST['id1']) )
					{
					   $t = $_POST['id1'];
	                   $u = $_POST['id2'];
	                   $p = $_POST['amount'];
					   $sql= "INSERT INTO payment (users, merchants) VALUES ('$t', '$u')";
					   $result = mysqli_query($conn, $sql);
					   if(mysqli_affected_rows($conn)){
						   $sql= "UPDATE account SET balance = balance + '$p' WHERE id = '$u'";
						   $result = mysqli_query($conn, $sql);
			?>
			<div class="row" style="text-align: center; font-size: 100px; background:#4d0039;">
					 <a href="home.php" style="color:#1bf21b; background:#99ffff"> Payment Successful </a> </div></br> <br/>
			<?php
			}
			else{
				?>
			<div class="row" style="text-align: center; font-size: 100px; background:#4d0039;">
					 <a href="home.php" style="color:#ff0000; background:#99ffff"> Merchant Doesn't Exist </a> </div></br> <br/>
			<?php
			     }
					}
			?>
       </div>			
	   </section>
	   
	</body>
		
</html>