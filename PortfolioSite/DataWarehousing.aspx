<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataWarehousing.aspx.cs" Inherits="PortfolioSite.SSRS" %>

<!DOCTYPE html>

<html>
	<head runat="server">
		<title>Data Visualisations by Jody Mc Laughlin</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="~/scripts/js/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="~/scripts/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="~/scripts/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="~/scripts/css/ie9.css" /><![endif]-->
	</head>
	<body>
        <form runat="server">
		<div id="page-wrapper">
            
			<!-- Header -->
				<div id="header">

					<!-- Logo -->
                   
						<h1><a href="Default.aspx" id="logo">Data Visualisations <em>by Jody Mc Laughlin</em></a></h1>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="Home.aspx">Home</a></li>
								<li><a href="PowerBI.aspx">PowerBI</a></li>
								<li class="current"><a href="DataWarehousing.aspx">Data Warehousing</a></li>
								<li><a href="AppsAndCloud.aspx">App & Cloud Development</a></li>
                                <li><a href="Contact.aspx">Contact</a></li>
							</ul>
						</nav>

				</div>

			<!-- Banner -->
				

			<!-- Highlights -->
					<section class="wrapper style1" style="background-color:#474747;">
					<div class="container" >
                    <header style="color:white;">
                        <h3 style="text-align:left">Big Insights using Azure SQL Data Warehousing-as-a-Service</h3>
                        <p style="text-align:left">Custom built processing end-to-end to meet your reporting requirements. From logical modelling to streamlining & merging new and existing streams of reporting.</p>
                        <h3 style="text-align:right">ETL Migrations</h3>
                        <p style="text-align:right">SSMA and SSIS for building an integrated data layer and managing rapid transfers of big data.</p>
                    </header>
                </div>
				</section>

			<!-- Gigantic Heading -->
				<section class="wrapper style1">
					<div class="container">
						<header class="major">
							<h2>Portfolio Samples from Jody Mc Laughlin.</h2>
							<p>To find out more you could always drop a mail to: <a href="mailto:jmclaughlin31@qub.ac.uk">jmclaughlin31@qub.ac.uk</a> .</p>
						</header>
					</div>
				</section>

            <!-- CTA -->
            <section id="cta" class="wrapper style3">
                <div class="container">
                    <header>
                        <h2>Request Login Details to Access Portfolio Work?</h2>
                        <a href="#" class="button">Click Here</a>
                    </header>
                </div>
            </section>

			<!-- Posts -->
				<section class="wrapper style1">
					<div class="container">
						<div class="row">
							<section class="6u 12u(narrower)">
								<div class="box post">
									<a href="#" class="image left"><img src="images/pic01.jpg" alt="" /></a>
									<div class="inner">
										<h3>Wordpress Projects</h3>
										<p>An existing blog website build using Wordpress to publish video tutorials. View here at <a href="http://jodymclaughlin.co.uk">www.jodymclaughlin.co.uk</a></p>
									</div>
								</div>
							</section>
							<section class="6u 12u(narrower)">
								<div class="box post">
									<a href="#" class="image left"><img src="images/pic02.jpg" alt="" /></a>
									<div class="inner">
										<h3>GFK Dashboards</h3>
										<p>Exploring the sales of OEM devices in retail.</p>
									</div>
								</div>
							</section>
						</div>
						<div class="row">
							<section class="6u 12u(narrower)">
								<div class="box post">
									<a href="#" class="image left"><img src="images/pic03.jpg" alt="" /></a>
									<div class="inner">
										<h3>GitHub Projects</h3>
										<p>View some project code work online at Github.</p>
									</div>
								</div>
							</section>
							<section class="6u 12u(narrower)">
								<div class="box post">
									<a href="#" class="image left"><img src="images/pic04.jpg" alt="" /></a>
									<div class="inner">
										<h3>Connect on LinkedIn</h3>
										<p><a href="https://ie.linkedin.com/in/jody-mc-laughlin-67b67959">Connect with me</a> to view the full details of my profile on LinkedIn.</p>
									</div>
								</div>
							</section>
						</div>
					</div>
				</section>

			

			<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">
							<section class="3u 6u(narrower) 12u$(mobilep)">
								<h3>Links to Stuff</h3>
								<ul class="links">
									<li><a href="#">Mattis et quis rutrum</a></li>
									<li><a href="#">Suspendisse amet varius</a></li>
									<li><a href="#">Sed et dapibus quis</a></li>
									<li><a href="#">Rutrum accumsan dolor</a></li>
									<li><a href="#">Mattis rutrum accumsan</a></li>
									<li><a href="#">Suspendisse varius nibh</a></li>
									<li><a href="#">Sed et dapibus mattis</a></li>
								</ul>
							</section>
							<section class="3u 6u$(narrower) 12u$(mobilep)">
								<h3>More Links to Stuff</h3>
								<ul class="links">
									<li><a href="#">Duis neque nisi dapibus</a></li>
									<li><a href="#">Sed et dapibus quis</a></li>
									<li><a href="#">Rutrum accumsan sed</a></li>
									<li><a href="#">Mattis et sed accumsan</a></li>
									<li><a href="#">Duis neque nisi sed</a></li>
									<li><a href="#">Sed et dapibus quis</a></li>
									<li><a href="#">Rutrum amet varius</a></li>
								</ul>
							</section>
							<section class="6u 12u(narrower)">
								<h3>Get In Touch</h3>
								<form>
									<div class="row 50%">
										<div class="6u 12u(mobilep)">
											<input type="text" name="name" id="name" placeholder="Name" />
										</div>
										<div class="6u 12u(mobilep)">
											<input type="email" name="email" id="email" placeholder="Email" />
										</div>
									</div>
									<div class="row 50%">
										<div class="12u">
											<textarea name="message" id="message" placeholder="Message" rows="5"></textarea>
										</div>
									</div>
									<div class="row 50%">
										<div class="12u">
											<ul class="actions">
												<li><input type="submit" class="button alt" value="Send Message" /></li>
											</ul>
										</div>
									</div>
								</form>
							</section>
						</div>
					</div>

					<!-- Icons -->
						<ul class="icons">
							<li><a href="https://github.com/jmclaughlin31" class="icon fa-github"><span class="label">GitHub</span></a></li>
							<li><a href="https://ie.linkedin.com/in/jody-mc-laughlin-67b67959" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
						</ul>

					<!-- Copyright -->
						<div class="copyright">
							<ul class="menu">
								<li>&copy; Data Visualisations By Jody Mc Laughlin. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>

				</div>

		</div>

		<!-- Scripts -->
			<script src="scripts/js/jquery.min.js"></script>
			<script src="scripts/js/jquery.dropotron.min.js"></script>
			<script src="scripts/js/skel.min.js"></script>
			<script src="scripts/js/util.js"></script>
			<!--[if lte IE 8]><script src="scripts/js/respond.min.js"></script><![endif]-->
			<script src="scripts/js/main.js"></script>
            </form>
	</body>
</html>
