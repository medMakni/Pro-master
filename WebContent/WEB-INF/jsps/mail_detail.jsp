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
						


						<li><a href="${pageContext.request.contextPath}/logout">
								<i class="fa fa-sign-out"></i> Log out
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
							<a href="${pageContext.request.contextPath}/forward?id=<c:out value="${selectedCourrier['idCourrier']}"/>" class="btn btn-white btn-sm"
								data-toggle="tooltip" data-placement="top" title="transférer"><i
								class="fa fa-mail-forward"></i> transférer</a> <a href="${pageContext.request.contextPath}/archiverCourrier?id=<c:out value="${selectedCourrier['idCourrier']}"/>"
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
								<c:out value="${selectedCourrier['expéditeur']}" />
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
											test="${fn:length(selectedCourrier['listePiécesJointes'])==1}">
														${fn:length(selectedCourrier['listePiécesJointes'])} -piéce jointe

													</c:when>
										<c:otherwise>${fn:length(selectedCourrier['listePiécesJointes'])} -piéces jointes</c:otherwise>
									</c:choose></span> <a href="#">Download all</a> | <a href="#">View all images</a>
							</p>
							<div class="attachment">


								<c:forEach var="i" begin="1"
									end="${fn:length(selectedCourrier['listePiécesJointes'])}"
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
													aria-hidden="true">×</button>
												<h4 class="modal-title" id="myLargeModalLabel-1">Mixer
													Board</h4>
											</div>
											<div class="modal-body">
												<c:choose>
													<c:when test="${basename=='pdf'}">
													
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
							url : '<c:url value="/réviserCourrier" />',
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
