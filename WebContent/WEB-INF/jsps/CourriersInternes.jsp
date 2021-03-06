<!DOCTYPE html>
<html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.4/table_foo_table.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 24 Mar 2016 21:44:57 GMT -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>INSPINIA | FooTable</title>

<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/font-awesome/css/font-awesome.css"
	rel="stylesheet">

<!-- FooTable -->
<link href="resources/css/plugins/footable/footable.core.css"
	rel="stylesheet">

<link href="resources/css/animate.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">



<link href="resources/css/plugins/datapicker/datepicker3.css"
	rel="stylesheet">

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
								href="${pageContext.request.contextPath}/CourriersArriv�es">Courriers
									Arriv�es</a></li>
							<li><a href="${pageContext.request.contextPath}/CourriersSorties">Courriers Sorties</a></li>
							<li><a href="${pageContext.request.contextPath}/CourriersInternes">Courriers Internes</a></li>

						</ul></li>
					<li><a href="#"><i class="fa fa-user"></i> <span
							class="nav-label">Contactes</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
							<li><a
								href="${pageContext.request.contextPath}/createContact"><i
									class="fa fa-plus"></i>Cr�er Contacte</a></li>
							<li><a
								href="${pageContext.request.contextPath}/createCompany"><i
									class="fa fa-plus"></i>Cr�er soci�t�</a></li>
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
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-10">
					<h2>FooTable</h2>
					<ol class="breadcrumb">
						<li><a href="resources/index-2.html">Home</a></li>
						<li><a>Tables</a></li>
						<li class="active"><strong>FooTable</strong></li>
					</ol>
				</div>
				<div class="col-lg-2"></div>
			</div>
			<div class="wrapper wrapper-content animated fadeInRight">

				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Simple FooTable with pagination, sorting and filter</h5>

								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a> <a class="dropdown-toggle" data-toggle="dropdown"
										href="resources/#"> <i class="fa fa-wrench"></i>
									</a>
									<ul class="dropdown-menu dropdown-user">
										<li><a href="resources/#">Config option 1</a></li>
										<li><a href="resources/#">Config option 2</a></li>
									</ul>
									<a class="close-link"> <i class="fa fa-times"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label class="control-label" for="date_added">A
												partir </label>
											<div class="input-group date">
												<span class="input-group-addon"><i
													class="fa fa-calendar"></i></span><input id="date_added"
													type="text" class="form-control" value="03/04/2014">
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label class="control-label" for="date_modified">jusqu'au</label>
											<div class="input-group date">
												<span class="input-group-addon"><i
													class="fa fa-calendar"></i></span><input id="date_modified"
													type="text" class="form-control" value="03/06/2014">
											</div>
										</div>
									</div>
								</div>


								<input type="text" class="form-control input-sm m-b-xs"
									id="filter" placeholder="Search in table">

								<table class="table table-hover footable" data-page-size="8"
									data-filter=#filter data-filter-control="true">
									<thead>
										<tr>
											<th>Exp�diteur</th>
											<th>Soci�t�</th>
											<th data-hide="phone,tablet">Date</th>
											<th>Objet</th>
											



										</tr>
									</thead>
									<tbody>
										<c:choose>
											<c:when test="${allCourrier != null}">
												<c:forEach items="${allCourrier}" var="map">
													<tr class="gradeX clickable-row" data-href="${pageContext.request.contextPath}/mail_detail_interne?id=<c:out value="${map['idCourrier']}"/>">
														<c:forEach items="${map}" var="entry">
															<c:if test="${entry.key=='exp�diteur'}">
																<td>${entry.value}//<c:out value="${map['idCourrier']}"/></td>
															</c:if>
															<c:if test="${entry.key=='date'}">
																<td>${entry.value}</td>
															</c:if>
															<c:if test="${entry.key=='objet'}">
																<td>${entry.value}</td>
															</c:if>
															<c:if test="${entry.key=='soci�t�'}">
																<td>${entry.value}</td>
															</c:if>
														</c:forEach>
													</tr>
												</c:forEach>
											</c:when>
											<c:when test="${finishedCourrier != null}">
												<c:forEach items="${finishedCourrier}" var="map" >
													<tr class="gradeX clickable-row" data-href="${pageContext.request.contextPath}/mail_detail_interne?id=<c:out value="${map['idCourrier']}"/>">
														<c:forEach items="${map}" var="entry">
															<c:if test="${entry.key=='exp�diteur'}">
																<td>${entry.value}</td>
															</c:if>
															<c:if test="${entry.key=='date'}">
																<td>${entry.value}</td>
															</c:if>
															<c:if test="${entry.key=='objet'}">
																<td>${entry.value}</td>
															</c:if>
															<c:if test="${entry.key=='soci�t�'}">
																<td>${entry.value}</td>
															</c:if>
														</c:forEach>
													</tr>
												</c:forEach>
											</c:when>
											<c:otherwise></c:otherwise>
										</c:choose>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="5">
												<ul class="pagination pull-right"></ul>
											</td>
										</tr>
									</tfoot>
								</table>
							</div>
						</div>
					</div>
				</div>
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

	<!-- FooTable -->
	<script src="resources/js/plugins/footable/footable.all.min.js"></script>
	<!-- Data picker -->
	<script src="resources/js/plugins/datapicker/bootstrap-datepicker.js"></script>
	<!-- Custom and plugin javascript -->
	<script src="resources/js/inspinia.js"></script>
	<script src="resources/js/plugins/pace/pace.min.js"></script>

	<!-- Page-Level Scripts -->
	<script>
		$(document).ready(function() {

			$('.footable').footable();
			$('.footable2').footable();

		});
	</script>
	<script type="text/javascript">
	jQuery(document).ready(function($) {
	    $(".clickable-row").click(function() {
	        window.location = $(this).data("href");
	    });
	});
	</script>
	<script>
		var fromTimeInput = $('#date_added');
		var toTimeInput = $('#date_modified');
		var fromTime = fromTimeInput.val();
		var toTime = toTimeInput.val();

		fromTimeInput.datepicker({
			keyboardNavigation : false,
			forceParse : false,
			calendarWeeks : true,
			autoclose : true,
			endDate : toTime
		});
		toTimeInput.datepicker({
			keyboardNavigation : false,
			forceParse : false,
			calendarWeeks : true,
			autoclose : true,
			startDate : fromTime
		});
		fromTimeInput.on("changeDate", function(e) {
			toTimeInput.datepicker('setStartDate', e.date);
		});
		toTimeInput.on("changeDate", function(e) {
			fromTimeInput.datepicker('setEndDate', e.date);
		});
	</script>

	<script>
		$(document).ready(function() {
			var fromTimeInput = $('#date_added');
			var toTimeInput = $('#date_modified');
			var fromTime = fromTimeInput.val();
			var toTime = toTimeInput.val();

			fromTimeInput.datepicker({
				keyboardNavigation : false,
				forceParse : false,
				calendarWeeks : true,
				autoclose : true,
				endDate : toTime
			});
			toTimeInput.datepicker({
				keyboardNavigation : false,
				forceParse : false,
				calendarWeeks : true,
				autoclose : true,
				startDate : fromTime
			});
			fromTimeInput.on("changeDate", function(e) {
				toTimeInput.datepicker('setStartDate', e.date);
			});
			toTimeInput.on("changeDate", function(e) {
				fromTimeInput.datepicker('setEndDate', e.date);
			});

		});
	</script>

</body>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.4/table_foo_table.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 24 Mar 2016 21:44:58 GMT -->
</html>
