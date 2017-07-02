<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.4/typography.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 24 Mar 2016 21:44:55 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | Typography</title>

    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="resources/css/animate.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">

</head>

<body>

    <div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav metismenu" id="side-menu">
					<li class="nav-header">
						<div class="dropdown profile-element">
							<span> <img alt="image" class="img-circle"
								src="resources/img/profile_small.jpg" />
							</span> <a data-toggle="dropdown" class="dropdown-toggle"
								href="resources/#"> <span class="clear"> <span
									class="block m-t-xs"> <strong class="font-bold">${realName }</strong>
								</span> <span class="text-muted text-xs block"> <c:forEach
											items="${roles}" var="entry">
											<c:out value="${entry}" />
										</c:forEach> <c:forEach items="${directions}" var="direction">
											<c:out value="${direction}" />
										</c:forEach> <b class="caret"></b>
								</span>
							</span>
							</a>
							<ul class="dropdown-menu animated fadeInRight m-t-xs">
								<li><a href="resources/profile.html">Profile</a></li>
								<li><a href="resources/contacts.html">Contacts</a></li>
								<li><a href="resources/mailbox.html">Mailbox</a></li>
								<li class="divider"></li>
								<li><a href="login.html">Logout</a></li>
							</ul>
						</div>
						<div class="logo-element">IN+</div>
					</li>

					<li><a href="dashboard.html"><i class="fa fa-diamond"></i>
							<span class="nav-label">Dashboards</span></a></li>
					<li><a href="#"><i class="fa fa-envelope"></i> <span
							class="nav-label">Courriers</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
							<li><a
								href="${pageContext.request.contextPath}/CourriersArrivées">Courriers
									Arrivées</a></li>
							<li><a href="${pageContext.request.contextPath}/CourriersSorties">Courriers Sorties</a></li>
							<li><a href="${pageContext.request.contextPath}/CourriersInternes">Courriers Internes</a></li>

						</ul></li>
					<li><a href="#"><i class="fa fa-user"></i> <span
							class="nav-label">Contactes</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
							<li><a
								href="${pageContext.request.contextPath}/createContact"><i
									class="fa fa-plus"></i>Créer Contacte</a></li>
							<li><a
								href="${pageContext.request.contextPath}/createCompany"><i
									class="fa fa-plus"></i>Créer société</a></li>
							<li><a
								href="${pageContext.request.contextPath}/afficherContacts"><i
									class="fa fa-list"></i></i>Liste Contacte</a></li>

						</ul></li>

					<li><a href="${pageContext.request.contextPath}/stats"><i
							class="fa fa-bar-chart-o"></i></i> <span class="nav-label">Statistique
						</span></a></li>
			</div>
		</nav>

		<div id="page-wrapper" class="gray-bg">
			<div class="row border-bottom">
				<nav class="navbar navbar-static-top" role="navigation"
					style="margin-bottom: 0">
					
					<ul class="nav navbar-top-links navbar-right">
						<li><span class="m-r-sm text-muted welcome-message">Welcome
								${pageContext.request.userPrincipal.name}</span></li>
						<li class="dropdown"><a class="dropdown-toggle count-info"
							data-toggle="dropdown" href="resources/#"> <i
								class="fa fa-envelope"></i> <span class="label label-warning">16</span>
						</a>
							<ul class="dropdown-menu dropdown-messages">
								<li>
									<div class="dropdown-messages-box">
										<a href="resources/profile.html" class="pull-left"> <img
											alt="image" class="img-circle" src="../img/a7.jpg">
										</a>
										<div class="media-body">
											<small class="pull-right">46h ago</small> <strong>Mike
												Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
											<small class="text-muted">3 days ago at 7:58 pm -
												10.06.2014</small>
										</div>
									</div>
								</li>
								<li class="divider"></li>
								<li>
									<div class="dropdown-messages-box">
										<a href="resources/profile.html" class="pull-left"> <img
											alt="image" class="img-circle" src="../img/a4.jpg">
										</a>
										<div class="media-body ">
											<small class="pull-right text-navy">5h ago</small> <strong>Chris
												Johnatan Overtunk</strong> started following <strong>Monica
												Smith</strong>. <br> <small class="text-muted">Yesterday
												1:21 pm - 11.06.2014</small>
										</div>
									</div>
								</li>
								<li class="divider"></li>
								<li>
									<div class="dropdown-messages-box">
										<a href="resources/profile.html" class="pull-left"> <img
											alt="image" class="img-circle" src="../img/profile.jpg">
										</a>
										<div class="media-body ">
											<small class="pull-right">23h ago</small> <strong>Monica
												Smith</strong> love <strong>Kim Smith</strong>. <br> <small
												class="text-muted">2 days ago at 2:30 am -
												11.06.2014</small>
										</div>
									</div>
								</li>
								<li class="divider"></li>
								<li>
									<div class="text-center link-block">
										<a href="resources/mailbox.html"> <i
											class="fa fa-envelope"></i> <strong>Read All
												Messages</strong>
										</a>
									</div>
								</li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle count-info"
							data-toggle="dropdown" href="resources/#"> <i
								class="fa fa-bell"></i> <span class="label label-primary">8</span>
						</a>
							<ul class="dropdown-menu dropdown-alerts">
								<li><a href="resources/mailbox.html">
										<div>
											<i class="fa fa-envelope fa-fw"></i> You have 16 messages <span
												class="pull-right text-muted small">4 minutes ago</span>
										</div>
								</a></li>
								<li class="divider"></li>
								<li><a href="resources/profile.html">
										<div>
											<i class="fa fa-twitter fa-fw"></i> 3 New Followers <span
												class="pull-right text-muted small">12 minutes ago</span>
										</div>
								</a></li>
								<li class="divider"></li>
								<li><a href="resources/grid_options.html">
										<div>
											<i class="fa fa-upload fa-fw"></i> Server Rebooted <span
												class="pull-right text-muted small">4 minutes ago</span>
										</div>
								</a></li>
								<li class="divider"></li>
								<li>
									<div class="text-center link-block">
										<a href="resources/notifications.html"> <strong>See
												All Alerts</strong> <i class="fa fa-angle-right"></i>
										</a>
									</div>
								</li>
							</ul></li>


						<li><a href="${pageContext.request.contextPath}/logout">
								<i class="fa fa-sign-out"></i> Log out
						</a></li>
					</ul>
				</nav>

        </div>
      <div class="row">
                    <div class="col-lg-4">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <span class="label label-success pull-right">Monthly</span>
                                <h5>Income</h5>
                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins">40 886,200</h1>
                                <div class="stat-percent font-bold text-success">98% <i class="fa fa-bolt"></i></div>
                                <small>Total income</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <span class="label label-info pull-right">Annual</span>
                                <h5>Orders</h5>
                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins">275,800</h1>
                                <div class="stat-percent font-bold text-info">20% <i class="fa fa-level-up"></i></div>
                                <small>New orders</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <span class="label label-primary pull-right">Today</span>
                                <h5>Vistits</h5>
                            </div>
                            <div class="ibox-content">
                                <h1 class="no-margins">106,120</h1>
                                <div class="stat-percent font-bold text-navy">44% <i class="fa fa-level-up"></i></div>
                                <small>New visits</small>
                            </div>
                        </div>
                    </div>
                    </div>
        <div class="row">
                                                       <c:forEach items="${finishedCourrier }" var="map">
        
            <div class="col-lg-6">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><c:out value="${map.objet }" /></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="resources/#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="resources/#">Config option 1</a>
                                </li>
                                <li><a href="resources/#">Config option 2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    
                    <div class="ibox-content">
                        <div class="list-group">
                            

                            <a class="list-group-item" href="${pageContext.request.contextPath}/mail_detail?id=<c:out value="${map.idCourrier}"/>">
											
                           <strong>expéditeur:</strong><c:out value="${map.expéditeur }" /><br>
                           <strong>Date:</strong><c:out value="${map.date }" /><br>
                            </a>

                            
                        </div>
                    </div>
                    
                </div>
            </div>
            
            
            
            
                                							</c:forEach>
            
        </div>
        <div class="footer">
            <div class="pull-right">
                10GB of <strong>250GB</strong> Free.
            </div>
            <div>
                <strong>Copyright</strong> Example Company &copy; 2014-2015
            </div>
        </div>

        </div>
        </div>


    <!-- Mainly scripts -->
    <script src="resources/js/jquery-2.1.1.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="resources/js/inspinia.js"></script>
    <script src="resources/js/plugins/pace/pace.min.js"></script>


</body>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.4/typography.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 24 Mar 2016 21:44:55 GMT -->
</html>
