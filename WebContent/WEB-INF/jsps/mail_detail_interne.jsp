<!DOCTYPE html>
<html>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.4/mail_detail.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 24 Mar 2016 21:42:40 GMT -->
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="_csrf_param" content="${_csrf.parameterName}" />
<meta name="_csrf" content="${_csrf.token}" />
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}" />
<title>INSPINIA | Mailbox</title>

<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/plugins/iCheck/custom.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/animate.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/style.css"
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
								src="${pageContext.request.contextPath}/resources/img/profile_small.jpg" />
							</span> <a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<span class="clear"> <span class="block m-t-xs"> <strong
										class="font-bold">David Williams</strong>
								</span> <span class="text-muted text-xs block">Art Director <b
										class="caret"></b></span>
							</span>
							</a>
							<ul class="dropdown-menu animated fadeInRight m-t-xs">
								<li><a href="profile.html">Profile</a></li>
								<li><a href="contacts.html">Contacts</a></li>
								<li><a href="mailbox.html">Mailbox</a></li>
								<li class="divider"></li>
								<li><a href="login.html">Logout</a></li>
							</ul>
						</div>
						<div class="logo-element">IN+</div>
					</li>
					<li><a href="index-2.html"><i class="fa fa-th-large"></i>
							<span class="nav-label">Dashboards</span> <span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
							<li><a href="index-2.html">Dashboard v.1</a></li>
							<li><a href="dashboard_2.html">Dashboard v.2</a></li>
							<li><a href="dashboard_3.html">Dashboard v.3</a></li>
							<li><a href="dashboard_4_1.html">Dashboard v.4</a></li>
							<li><a href="dashboard_5.html">Dashboard v.5 <span
									class="label label-primary pull-right">NEW</span></a></li>
						</ul></li>
					<li><a href="layouts.html"><i class="fa fa-diamond"></i> <span
							class="nav-label">Layouts</span></a></li>
					<li><a href="#"><i class="fa fa-bar-chart-o"></i> <span
							class="nav-label">Graphs</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
							<li><a href="graph_flot.html">Flot Charts</a></li>
							<li><a href="graph_morris.html">Morris.js Charts</a></li>
							<li><a href="graph_rickshaw.html">Rickshaw Charts</a></li>
							<li><a href="graph_chartjs.html">Chart.js</a></li>
							<li><a href="graph_chartist.html">Chartist</a></li>
							<li><a href="c3.html">c3 charts</a></li>
							<li><a href="graph_peity.html">Peity Charts</a></li>
							<li><a href="graph_sparkline.html">Sparkline Charts</a></li>
						</ul></li>
					<li class="active"><a href="mailbox.html"><i
							class="fa fa-envelope"></i> <span class="nav-label">Mailbox
						</span><span class="label label-warning pull-right">16/24</span></a>
						<ul class="nav nav-second-level">
							<li><a href="mailbox.html">Inbox</a></li>
							<li class="active"><a href="mail_detail.html">Email view</a></li>
							<li><a href="mail_compose.html">Compose email</a></li>
							<li><a href="email_template.html">Email templates</a></li>
						</ul></li>
					<li><a href="metrics.html"><i class="fa fa-pie-chart"></i>
							<span class="nav-label">Metrics</span> </a></li>
					<li><a href="widgets.html"><i class="fa fa-flask"></i> <span
							class="nav-label">Widgets</span></a></li>
					<li><a href="#"><i class="fa fa-edit"></i> <span
							class="nav-label">Forms</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
							<li><a href="form_basic.html">Basic form</a></li>
							<li><a href="form_advanced.html">Advanced Plugins</a></li>
							<li><a href="form_wizard.html">Wizard</a></li>
							<li><a href="form_file_upload.html">File Upload</a></li>
							<li><a href="form_editors.html">Text Editor</a></li>
							<li><a href="form_markdown.html">Markdown</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-desktop"></i> <span
							class="nav-label">App Views</span> <span
							class="pull-right label label-primary">SPECIAL</span></a>
						<ul class="nav nav-second-level collapse">
							<li><a href="contacts.html">Contacts</a></li>
							<li><a href="profile.html">Profile</a></li>
							<li><a href="profile_2.html">Profile v.2</a></li>
							<li><a href="contacts_2.html">Contacts v.2</a></li>
							<li><a href="projects.html">Projects</a></li>
							<li><a href="project_detail.html">Project detail</a></li>
							<li><a href="teams_board.html">Teams board</a></li>
							<li><a href="social_feed.html">Social feed</a></li>
							<li><a href="clients.html">Clients</a></li>
							<li><a href="full_height.html">Outlook view</a></li>
							<li><a href="vote_list.html">Vote list</a></li>
							<li><a href="file_manager.html">File manager</a></li>
							<li><a href="calendar.html">Calendar</a></li>
							<li><a href="issue_tracker.html">Issue tracker</a></li>
							<li><a href="blog.html">Blog</a></li>
							<li><a href="article.html">Article</a></li>
							<li><a href="faq.html">FAQ</a></li>
							<li><a href="timeline.html">Timeline</a></li>
							<li><a href="pin_board.html">Pin board</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-files-o"></i> <span
							class="nav-label">Other Pages</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
							<li><a href="search_results.html">Search results</a></li>
							<li><a href="lockscreen.html">Lockscreen</a></li>
							<li><a href="invoice.html">Invoice</a></li>
							<li><a href="login.html">Login</a></li>
							<li><a href="login_two_columns.html">Login v.2</a></li>
							<li><a href="forgot_password.html">Forget password</a></li>
							<li><a href="register.html">Register</a></li>
							<li><a href="404.html">404 Page</a></li>
							<li><a href="500.html">500 Page</a></li>
							<li><a href="empty_page.html">Empty page</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-globe"></i> <span
							class="nav-label">Miscellaneous</span><span
							class="label label-info pull-right">NEW</span></a>
						<ul class="nav nav-second-level collapse">
							<li><a href="toastr_notifications.html">Notification</a></li>
							<li><a href="nestable_list.html">Nestable list</a></li>
							<li><a href="agile_board.html">Agile board</a></li>
							<li><a href="timeline_2.html">Timeline v.2</a></li>
							<li><a href="diff.html">Diff</a></li>
							<li><a href="i18support.html">i18 support</a></li>
							<li><a href="sweetalert.html">Sweet alert</a></li>
							<li><a href="idle_timer.html">Idle timer</a></li>
							<li><a href="truncate.html">Truncate</a></li>
							<li><a href="spinners.html">Spinners</a></li>
							<li><a href="tinycon.html">Live favicon</a></li>
							<li><a href="google_maps.html">Google maps</a></li>
							<li><a href="code_editor.html">Code editor</a></li>
							<li><a href="modal_window.html">Modal window</a></li>
							<li><a href="clipboard.html">Clipboard</a></li>
							<li><a href="forum_main.html">Forum view</a></li>
							<li><a href="validation.html">Validation</a></li>
							<li><a href="tree_view.html">Tree view</a></li>
							<li><a href="loading_buttons.html">Loading buttons</a></li>
							<li><a href="chat_view.html">Chat view</a></li>
							<li><a href="masonry.html">Masonry</a></li>
							<li><a href="tour.html">Tour</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-flask"></i> <span
							class="nav-label">UI Elements</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
							<li><a href="typography.html">Typography</a></li>
							<li><a href="icons.html">Icons</a></li>
							<li><a href="draggable_panels.html">Draggable Panels</a></li>
							<li><a href="resizeable_panels.html">Resizeable Panels</a></li>
							<li><a href="buttons.html">Buttons</a></li>
							<li><a href="video.html">Video</a></li>
							<li><a href="tabs_panels.html">Panels</a></li>
							<li><a href="tabs.html">Tabs</a></li>
							<li><a href="notifications.html">Notifications &
									Tooltips</a></li>
							<li><a href="badges_labels.html">Badges, Labels,
									Progress</a></li>
						</ul></li>

					<li><a href="grid_options.html"><i class="fa fa-laptop"></i>
							<span class="nav-label">Grid options</span></a></li>
					<li><a href="#"><i class="fa fa-table"></i> <span
							class="nav-label">Tables</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
							<li><a href="table_basic.html">Static Tables</a></li>
							<li><a href="table_data_tables.html">Data Tables</a></li>
							<li><a href="table_foo_table.html">Foo Tables</a></li>
							<li><a href="jq_grid.html">jqGrid</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-shopping-cart"></i> <span
							class="nav-label">E-commerce</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
							<li><a href="ecommerce_products_grid.html">Products grid</a></li>
							<li><a href="ecommerce_product_list.html">Products list</a></li>
							<li><a href="ecommerce_product.html">Product edit</a></li>
							<li><a href="ecommerce_product_detail.html">Product
									detail</a></li>
							<li><a href="ecommerce-cart.html">Cart</a></li>
							<li><a href="ecommerce-orders.html">Orders</a></li>
							<li><a href="ecommerce_payments.html">Credit Card form</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-picture-o"></i> <span
							class="nav-label">Gallery</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
							<li><a href="basic_gallery.html">Lightbox Gallery</a></li>
							<li><a href="slick_carousel.html">Slick Carousel</a></li>
							<li><a href="carousel.html">Bootstrap Carousel</a></li>

						</ul></li>
					<li><a href="#"><i class="fa fa-sitemap"></i> <span
							class="nav-label">Menu Levels </span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
							<li><a href="#">Third Level <span class="fa arrow"></span></a>
								<ul class="nav nav-third-level">
									<li><a href="#">Third Level Item</a></li>
									<li><a href="#">Third Level Item</a></li>
									<li><a href="#">Third Level Item</a></li>

								</ul></li>
							<li><a href="#">Second Level Item</a></li>
							<li><a href="#">Second Level Item</a></li>
							<li><a href="#">Second Level Item</a></li>
						</ul></li>
					<li><a href="css_animation.html"><i class="fa fa-magic"></i>
							<span class="nav-label">CSS Animations </span><span
							class="label label-info pull-right">62</span></a></li>
					<li class="landing_link"><a target="_blank"
						href="landing.html"><i class="fa fa-star"></i> <span
							class="nav-label">Landing Page</span> <span
							class="label label-warning pull-right">NEW</span></a></li>
					<li class="special_link"><a href="package.html"><i
							class="fa fa-database"></i> <span class="nav-label">Package</span></a>
					</li>
				</ul>

			</div>
		</nav>

		<div id="page-wrapper" class="gray-bg">
			<div class="row border-bottom">
				<nav class="navbar navbar-static-top white-bg" role="navigation"
					style="margin-bottom: 0">
					
					<ul class="nav navbar-top-links navbar-right">
						<li><span class="m-r-sm text-muted welcome-message">Welcome
								to INSPINIA+ Admin Theme.</span></li>
						<li class="dropdown"><a class="dropdown-toggle count-info"
							data-toggle="dropdown" href="#"> <i class="fa fa-envelope"></i>
								<span class="label label-warning">16</span>
						</a>
							<ul class="dropdown-menu dropdown-messages">
								<li>
									<div class="dropdown-messages-box">
										<a href="profile.html" class="pull-left"> <img alt="image"
											class="img-circle"
											src="${pageContext.request.contextPath}/resources/img/a7.jpg">
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
										<a href="profile.html" class="pull-left"> <img alt="image"
											class="img-circle"
											src="${pageContext.request.contextPath}/resources/img/a4.jpg">
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
										<a href="profile.html" class="pull-left"> <img alt="image"
											class="img-circle"
											src="${pageContext.request.contextPath}/resources/img/profile.jpg">
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
										<a href="mailbox.html"> <i class="fa fa-envelope"></i> <strong>Read
												All Messages</strong>
										</a>
									</div>
								</li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle count-info"
							data-toggle="dropdown" href="#"> <i class="fa fa-bell"></i> <span
								class="label label-primary">8</span>
						</a>
							<ul class="dropdown-menu dropdown-alerts">
								<li><a href="mailbox.html">
										<div>
											<i class="fa fa-envelope fa-fw"></i> You have 16 messages <span
												class="pull-right text-muted small">4 minutes ago</span>
										</div>
								</a></li>
								<li class="divider"></li>
								<li><a href="profile.html">
										<div>
											<i class="fa fa-twitter fa-fw"></i> 3 New Followers <span
												class="pull-right text-muted small">12 minutes ago</span>
										</div>
								</a></li>
								<li class="divider"></li>
								<li><a href="grid_options.html">
										<div>
											<i class="fa fa-upload fa-fw"></i> Server Rebooted <span
												class="pull-right text-muted small">4 minutes ago</span>
										</div>
								</a></li>
								<li class="divider"></li>
								<li>
									<div class="text-center link-block">
										<a href="notifications.html"> <strong>See All
												Alerts</strong> <i class="fa fa-angle-right"></i>
										</a>
									</div>
								</li>
							</ul></li>


						<li><a href="login.html"> <i class="fa fa-sign-out"></i>
								Log out
						</a></li>
					</ul>

				</nav>
			</div>

			<div class="wrapper wrapper-content">
				<!--start of mail view zone-->
				<div class="col-lg-12 animated fadeInRight">
					<div class="mail-box-header">
					<c:choose>
										<c:when test="${selectedCourrier['isChecked']==true}">
						<div class="pull-right tooltip-demo">
							<a href="${pageContext.request.contextPath}/forwardInterne?id=<c:out value="${selectedCourrier['idCourrier']}"/>" class="btn btn-white btn-sm"
								data-toggle="tooltip" data-placement="top" title="transf�rer"><i
								class="fa fa-mail-forward"></i> transf�rer</a> <a href="${pageContext.request.contextPath}/archiverCourrier?id=<c:out value="${selectedCourrier['idCourrier']}"/>"
								class="btn btn-white btn-sm" data-toggle="tooltip"
								data-placement="top" title="archiver"><i
								class="fa fa-archive"></i>archiver </a> 
						</div>
							</c:when>
										<c:otherwise>
											
										</c:otherwise>
									</c:choose>
						<h2>Courrier</h2>
						<div class="mail-tools tooltip-demo m-t-md">


							<h3>
								<span class="font-noraml">Sujet: </span>
								<c:out value="${selectedCourrier['objet']}" />
							</h3>
							<h5>
								<span class="pull-right font-noraml"><c:out
										value="${selectedCourrier['date']}" /></span> <span
									class="font-noraml">From: </span>
								<c:out value="${selectedCourrier['exp�diteur']}" />
							</h5>
						</div>
					</div>
					<div class="mail-box">


						<div class="mail-body">

							<c:out value="${paths}" />


							<c:out value="${selectedCourrier}" />
							<h3>Hello Jonathan!</h3>
							dummy text of the printing and typesetting industry. <strong>Lorem
								Ipsum has been the industry's</strong> standard dummy text ever since the
							1500s, when an unknown printer took a galley of type and
							scrambled it to make a type specimen book. It has survived not
							only five centuries, but also the leap into electronic
							typesetting, remaining essentially unchanged. It was popularised
							in the 1960s with the release of Letraset sheets containing Lorem
							Ipsum passages, and more recently with <br /> <br />


						</div>
						<div class="mail-attachment">
							<p>
								<span><i class="fa fa-paperclip"></i> <c:choose>
										<c:when
											test="${fn:length(selectedCourrier['listePi�cesJointes'])==1}">
														${fn:length(selectedCourrier['listePi�cesJointes'])} -pi�ce jointe

													</c:when>
										<c:otherwise>${fn:length(selectedCourrier['listePi�cesJointes'])} -pi�ces jointes</c:otherwise>
									</c:choose></span> <a href="#">Download all</a> | <a href="#">View all images</a>
							</p>
							<div class="attachment">


								<c:forEach var="i" begin="1"
									end="${fn:length(selectedCourrier['listePi�cesJointes'])}"
									varStatus="loop">
									<c:set var="aa" value="${paths[loop.index-1]}" />
									<c:set var="basename" value="${fn:split(aa, '.')[1]}" />
									<c:choose>
										<c:when test="${basename=='pdf'}">
											<div class="file-box">
												<div class="file">
													<a href="#" data-toggle="modal" data-target=".pop-up-1"
														data-book-id="my_id_value"> <span class="corner"></span>
														<div class="icon">
															<i class="fa fa-file"></i>
														</div>
														<div class="file-name">

															${paths[loop.index-1]} <br /> <small>Added: Jan
																11, 2014</small>
														</div>
													</a>
												</div>
											</div>
										</c:when>
										<c:otherwise>
											<div class="file-box">
												<div class="file">
													<a href="#" data-toggle="modal" data-target=".pop-up-1">
														<span class="corner"></span>
														<div class="image">
															<img alt="image" class="img-responsive"
																src="resources/img/${paths[loop.index-1]}"
																id="${basename}">
														</div>

														<div class="file-name">
															<input type="hidden" value="${basename}">

															${paths[loop.index-1] } <br /> <small>Added: Jan
																6, 2014</small>
														</div>
													</a>
												</div>
											</div>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<div class="container"></div>
								<!-- /.container -->
								<div class="clearfix"></div>
							</div>
							<div class="container">
								<!--  Modal content for the mixer image example -->
								<div class="modal fade pop-up-1" tabindex="-1" role="dialog"
									aria-labelledby="myLargeModalLabel-1" aria-hidden="true"
									id="modal1">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">

											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">�</button>
												<h4 class="modal-title" id="myLargeModalLabel-1">Mixer
													Board</h4>
											</div>
											<div class="modal-body">
												<c:choose>
													<c:when test="${invoker=='pdf'}">
													${basename }
														<embed src="resources/img/${paths[0]}" width="850px"
															height="700px" />
													</c:when>
													<c:otherwise>
													${basename }
														<img alt="image" class="img-responsive"
															src="resources/img/${paths[0]}">
													</c:otherwise>
												</c:choose>
											</div>
										</div>
									</div>
								</div>


							</div>
							<!-- /.container -->
							<c:choose>
										<c:when test="${selectedCourrier['isChecked']==false}">
									
							<div class="mail-body text-right tooltip-demo">
								<button class="btn btn-primary "
									onclick="sendDataWithJson(true);" type="button">
									<i class="fa fa-check"></i>&nbsp;approuver
								</button>
								<button class="btn btn-primary "
									onclick="sendDataWithJson(false);" type="button">
									<i class="fa fa-times"></i>&nbsp;rejeter
								</button>

							</div>
							<div class="clearfix"></div>
	
										</c:when>
										<c:otherwise>
											
										</c:otherwise>
									</c:choose>

						</div>
					</div>
					<!--end of mail view zone -->
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
		<script
			src="${pageContext.request.contextPath}/resources/js/jquery-2.1.1.js"></script>

		<script
			src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

		<!-- Custom and plugin javascript -->
		<script
			src="${pageContext.request.contextPath}/resources/js/inspinia.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/plugins/pace/pace.min.js"></script>

		<!-- iCheck -->
		<script
			src="${pageContext.request.contextPath}/resources/js/plugins/iCheck/icheck.min.js"></script>
		<script>
			$(document).ready(function() {
				$('.i-checks').iCheck({
					checkboxClass : 'icheckbox_square-green',
					radioClass : 'iradio_square-green',
				});
			});
		</script>
		<script type="text/javascript">
			function success(data) {
				alert(data.text);
			}
			function error(data) {
				alert("error");
			}
			function sendDataWithJson(isValidated) {

				$
						.ajax({
							type : 'POST',
							url : '<c:url value="/r�viserCourrierInterne" />',
							data : JSON
									.stringify({
										"idCourrier" : <c:out value="${selectedCourrier['idCourrier']}" />,
										"isValidated" : isValidated
									}),
									success : success,
									error : error,
							contentType : "application/json; charset=utf-8",
							dataType : "json"

						});

			}
		</script>
		<div id="doc2"></div>
		<script>
			$("#cde")
					.click(
							function() {
								alert('here');
								$
										.ajax({
											type : "GET",
											url : 'cde',
											contentType : "application/json; charset=utf-8",
											data : "",

											error : function(XMLHttpRequest,
													error, errorThrown) {
												alert(error);
												alert(errorThrown);
											},
											success : function(data) {
												alert('success');
												alert(data);
												var obj = $('<object type="application/pdf" width="100%" height="100%" border="2"></object>');
												obj.attr('data',
														'data:application/pdf;base64,'
																+ data);

												$("#doc2").append(obj);
											}
										});
							});
		</script>
		<script type="text/javascript">
		$('#modal1').on('show.bs.modal', function(e) {
			console.log("eee");
		    var bookId = $(e.relatedTarget).data('book-id');
		    console.log($(e.currentTarget).find('input[name="bookId"]').val());
		    $(e.currentTarget).find('basename').val(bookId);
		});
		</script>
</body>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.4/mail_detail.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 24 Mar 2016 21:42:41 GMT -->
</html>
