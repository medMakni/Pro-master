<!DOCTYPE html>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<html>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.4/table_foo_table.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 24 Mar 2016 21:44:57 GMT -->
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="_csrf_param" content="${_csrf.parameterName}"/>
<meta name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}"/>

<title>INSPINIA | FooTable</title>

<s:url value="resources/css/bootstrap.min.css" var="bootstrapCss" />
<s:url value="resources/css/plugins/datapicker/datepicker3.css" var="datepicker" />


<link href="${bootstrapCss}" rel="stylesheet">
<link href="${datepicker}" rel="stylesheet">

<link href="resources/font-awesome/css/font-awesome.css"
	rel="stylesheet">

<!-- FooTable -->
<link href="resources/css/plugins/footable/footable.core.css"
	rel="stylesheet">

<link href="resources/css/animate.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">

<link href="resources/font-awesome/css/font-awesome.css"
	rel="stylesheet">
<link href="resources/css/plugins/iCheck/custom.css"
	rel="stylesheet">
<link href="resources/css/plugins/summernote/summernote.css"
	rel="stylesheet">
<link href="resources/css/plugins/summernote/summernote-bs3.css"
	rel="stylesheet">
<link href="resources/css/animate.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/plugins/dropzone/basic.css"
	rel="stylesheet">
<link href="resources/css/plugins/dropzone/dropzone.css"
	rel="stylesheet">
    <link href="resources/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <!-- canvas-to-blob.min.js is only needed if you wish to resize images before upload.
         This must be loaded before fileinput.min.js -->
    <script src="resources/js/plugins/canvas-to-blob.min.js" type="text/javascript"></script>
    <!-- sortable.min.js is only needed if you wish to sort / rearrange files in initial preview.
         This must be loaded before fileinput.min.js -->
    <script src="resources/js/plugins/sortable.min.js" type="text/javascript"></script>
    <!-- purify.min.js is only needed if you wish to purify HTML content in your preview for HTML files.
         This must be loaded before fileinput.min.js -->
    <script src="resources/js/plugins/purify.min.js" type="text/javascript"></script>
    <!-- the main fileinput plugin file -->
    <script src="resources/js/fileinput.min.js"></script>
    <!-- bootstrap.js below is needed if you wish to zoom and view file content
         in a larger detailed modal dialog -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- optionally if you need a theme like font awesome theme you can include
        it as mentioned below -->
    <script src="resources/themes/fa/theme.js"></script>
    <!-- optionally if you need translation for your language then include
        locale file as mentioned below -->
    <script src="resources/js/locales/<lang>.js"></script>

</head>

<body>

	<div id="wrapper">

		<nav class="navbar-default navbar-static-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav metismenu" id="side-menu">
					<li class="nav-header">
						<div class="dropdown profile-element">
							<span> <img alt="image" class="img-circle"
								src="resources/img/profile_small.jpg" />
							</span> <a data-toggle="dropdown" class="dropdown-toggle"
								href="resources/#"> <span class="clear"> <span
									class="block m-t-xs"> <strong class="font-bold">David
											Williams</strong>
								</span> <span class="text-muted text-xs block">Art Director <b
										class="caret"></b></span>
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
							<li><a href="CourriersArriv�es.html">Courriers
									Arriv�es</a></li>
							<li><a href="CourriersD�parts.html">Courriers Sorties</a></li>
							<li><a href="CourriersInternes.html">Courriers Internes</a></li>

						</ul></li>
					<li><a href="#"><i class="fa fa-user"></i> <span
							class="nav-label">Contactes</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level collapse">
							<li><a href="CourriersArriv�es.html"><i
									class="fa fa-plus"></i>Cr�er Contacte</a></li>
							<li><a href="CourriersD�parts.html"><i
									class="fa fa-list"></i></i>Liste Contacte</a></li>

						</ul></li>

					<li><a href="resources/mailbox.html"><i
							class="fa fa-bar-chart-o"></i></i> <span class="nav-label">Statistique
						</span></a></li>
			</div>
		</nav>

		<div id="page-wrapper" class="gray-bg">
			<div class="row border-bottom">
				<nav class="navbar navbar-static-top" role="navigation"
					style="margin-bottom: 0">
					<div class="navbar-header">
						<a class="navbar-minimalize minimalize-styl-2 btn btn-primary "
							href="resources/#"><i class="fa fa-bars"></i> </a>
						<form role="search" class="navbar-form-custom"
							action="http://webapplayers.com/inspinia_admin-v2.4/search_results.html">
							<div class="form-group">
								<input type="text" placeholder="Search for something..."
									class="form-control" name="top-search" id="top-search">
							</div>
						</form>
					</div>
					<ul class="nav navbar-top-links navbar-right">
						<li><span class="m-r-sm text-muted welcome-message">Welcome
								to INSPINIA+ Admin Theme.</span></li>
						<li class="dropdown"><a class="dropdown-toggle count-info"
							data-toggle="dropdown" href="resources/#"> <i
								class="fa fa-envelope"></i> <span class="label label-warning">16</span>
						</a>
							<ul class="dropdown-menu dropdown-messages">
								<li>
									<div class="dropdown-messages-box">
										<a href="resources/profile.html" class="pull-left">
											<img alt="image" class="img-circle" src="../img/a7.jpg">
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
										<a href="resources/profile.html" class="pull-left">
											<img alt="image" class="img-circle" src="../img/a4.jpg">
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
										<a href="resources/profile.html" class="pull-left">
											<img alt="image" class="img-circle" src="../img/profile.jpg">
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


						<li><a href="resources/login.html"> <i
								class="fa fa-sign-out"></i> Log out
						</a></li>
					</ul>
				</nav>
				<div class="col-lg-12">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5>G�n�rale</h5>
							<div class="ibox-tools">
								<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
								</a> <a class="dropdown-toggle" data-toggle="dropdown" href="#">
									<i class="fa fa-wrench"></i>
								</a>
								<ul class="dropdown-menu dropdown-user">
									<li><a href="#">Config option 1</a></li>
									<li><a href="#">Config option 2</a></li>
								</ul>
								<a class="close-link"> <i class="fa fa-times"></i>
								</a>
							</div>
						</div>
						<div class="ibox-content">
							<form class="form-horizontal" method="get">
								<p>
									<span class="label label-info">Courrier</span>
								</p>
								<div class="form-group">
									<label class="col-sm-2 control-label">Objet:</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" value="">
									</div>
								</div>
								<br>
								<div class="form-group">

									<label class="col-sm-2 control-label">Nature:</label>

									<div class="col-sm-5">
										<div class="btn-group" data-toggle="buttons">
											<label class="btn btn-primary active"> <input
												type="radio" name="options" id="lettre" autocomplete="off"
												checked> Lettre
											</label> <label class="btn btn-primary"> <input type="radio"
												name="options" id="mail" autocomplete="off"> Mail
											</label> <label class="btn btn-primary"> <input type="radio"
												name="options" id="fax" autocomplete="off"> Fax
											</label>
										</div>
									</div>


									<label class="col-sm-1 control-label">Cat�gorie:</label>

									<div class="btn-group">
										<button data-toggle="dropdown"
											class="btn btn-default dropdown-toggle">
											Courrier Normal<span class="caret"></span>
										</button>
										<ul class="dropdown-menu">
											<li><a href="#" class="font-bold">Courrier Normal</a></li>
											<li><a href="#" class="font-bold">Courrier à la
													clientèle</a></li>
											<li><a href="#" class="font-bold">Autre</a></li>

										</ul>
									</div>
								</div>


								<br>

								<div class="row">
									<div class="col-sm-5">
										<div class="form-group">
											<label class="control-label col-sm-5" for="date_added">Date
												Courrier</label>
											<div class="input-group date">
												<span class="input-group-addon"><i
													class="fa fa-calendar"></i></span><input id="date_added"
													type="text" class="form-control" value="03/04/2014">
											</div>
										</div>
									</div>
									<div class="col-sm-5">
										<div class="form-group">
											<label class="control-label col-sm-7" for="date_modified">Date
												Arriv�e</label>
											<div class="input-group date">
												<span class="input-group-addon"><i
													class="fa fa-calendar"></i></span><input id="date_modified"
													type="text" class="form-control" value="03/06/2014">
											</div>
										</div>
									</div>

								</div>


								<p>
									<span class="label label-info">Origine</span>
								</p>
								<br>
								<div class="form-group">
									<label class="col-sm-2 control-label">Organisme:</label>

									<div class="btn-group">
										<button data-toggle="dropdown"
											class="btn btn-default dropdown-toggle">
											Courrier Normal<span class="caret"></span>
										</button>
										<ul class="dropdown-menu">
											<li><a href="#" class="font-bold">Courrier Normal</a></li>
											<li><a href="#" class="font-bold">Courrier à la
													clientèle</a></li>
											<li><a href="#" class="font-bold">Autre</a></li>

										</ul>
									</div>
								</div>
								<br>
								<div class="form-group">

									<label class="col-sm-2 control-label">Contact:</label>
									<div class="btn-group">
										<button data-toggle="dropdown"
											class="btn btn-default dropdown-toggle">
											Courrier Normal<span class="caret"></span>
										</button>
										<ul class="dropdown-menu">
											<li><a href="#" class="font-bold">Courrier Normal</a></li>
											<li><a href="#" class="font-bold">Courrier à la
													clientèle</a></li>
											<li><a href="#" class="font-bold">Autre</a></li>

										</ul>
									</div>


								</div>




								<div class="form-group">
									<label class="col-sm-2 control-label">E-mail:</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" value="">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">Fax:</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" value="">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">Adresse:</label>

									<div class="col-sm-10">
										<input type="text" class="form-control" value="">
									</div>
								</div>
								<br>
								<p>
									<span class="label label-info">Corps</span>
								</p>
								<div class="animated fadeInRight">

									<div class="mail-box">


										<div class="mail-body">

											<form class="form-horizontal" method="get">
												<div class="form-group">
													<label class="col-sm-2 control-label">To:</label>

													<div class="col-sm-10">
														<input type="text" class="form-control"
															value="alex.smith@corporat.com">
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-2 control-label">Subject:</label>

													<div class="col-sm-10">
														<input type="text" class="form-control" value="">
													</div>
												</div>
											</form>



											<div class="mail-text h-200">
												<form method="POST" action="uploadMultipleFile" enctype="multipart/form-data">
												<div class="summernote">
													<h3>Hello Jonathan!</h3>
													dummy text of the printing and typesetting industry. <strong>Lorem
														Ipsum has been the industry's</strong> standard dummy text ever
													since the 1500s, when an unknown printer took a galley of
													type and scrambled it to make a type specimen book. It has
													survived not only five centuries, but also the leap into
													electronic typesetting, remaining essentially unchanged. It
													was popularised in the 1960s with the release of Letraset
													sheets containing Lorem Ipsum passages, and more recently
													with <br /> <br />

												</div>
												<div>
                                                <script src="resource/js/fileinput.js"></script>
                                                <script src="resource/themes/fa/theme.js"></script>
												
                                                <label class="control-label">Select File</label>
                                                <input id="input-fa" name="name" type="file" multiple class="file-loading">

                                              
												
                                                <script>


                                                $("#imgInp").change(function(){
                                                    readURL(this);
                                                });
                                                    $("#input-fa").fileinput({
                                                        theme: "fa",
                                                        uploadUrl: "/file-upload-batch/2",
                                                        	
                                                    });
                                                </script>

                                            </div>
												<div class="clearfix"></div>
											
											<div class="mail-body text-right tooltip-demo">
												<input type="submit" class="btn btn-sm btn-primary" data-toggle="tooltip" data-placement="top" title="Send" value= "send"/><!-- <i class="fa fa-reply"></i> --> 
											</div>
											</form>
											</div>
											<div class="clearfix"></div>
										</div>

									</div>

								</div>
							</form>
						</div>
					</div>


				</div>









				<div class="col-lg-12">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5>Traitement</h5>
							<div class="ibox-tools">
								<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
								</a> <a class="dropdown-toggle" data-toggle="dropdown" href="#">
									<i class="fa fa-wrench"></i>
								</a>
								<ul class="dropdown-menu dropdown-user">
									<li><a href="#">Config option 1</a></li>
									<li><a href="#">Config option 2</a></li>
								</ul>
								<a class="close-link"> <i class="fa fa-times"></i>
								</a>
							</div>
						</div>
						<div class="ibox-content">
							<form class="form-horizontal" method="get">
								<p>
									<span class="label label-info">Intervenants</span>
								</p>
								<div class="form-group">
									<label class="col-sm-2 control-label">Responsable:</label>
									<div class="col-sm-10">
										<div data-toggle="buttons-checkbox" class="btn-group">
											<button class="btn btn-primary btn-outline" type="button">
												Lettre</button>
											<button class="btn btn-primary btn-outline" type="button">
												Mail</button>
											<button class="btn btn-primary btn-outline" type="button">
												Fax</button>
										</div>
									</div>
								</div>
								<br>
								<div class="form-group">

									<label class="col-sm-2 control-label">En copie:</label>

									<div class="col-sm-10">

										<div class="btn-group" data-toggle="buttons">
											<label class="btn btn-primary active"> <input
												type="radio" name="options" id="option1" autocomplete="off"
												checked> Radio 1 (preselected)
											</label> <label class="btn btn-primary"> <input type="radio"
												name="options" id="option2" autocomplete="off">
												Radio 2
											</label> <label class="btn btn-primary"> <input type="radio"
												name="options" id="option3" autocomplete="off">
												Radio 3
											</label>
										</div>
									</div>



								</div>


								<p>
									<span class="label label-info">Workflow</span>
								</p>
								<div class="form-group">
									<label class="col-sm-2 control-label">Commantaire:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" value="">
									</div>
								</div>

								<button class="btn btn-primary " type="button">
									<i class="fa fa-check"></i>&nbsp;Submit
								</button>
								<button class="btn btn-warning " type="button">
									<i class="fa fa-warning"></i> <span class="bold">annuler</span>
								</button>

							</form>

						</div>

					</div>


				</div>
			</div>





		</div>
	</div>







	<!-- FooTable -->
	<script src="resources/js/plugins/footable/footable.all.min.js"></script>

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
$(function () {
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    $(document).ajaxSend(function(e, xhr, options) {
        xhr.setRequestHeader(header, token);
    });
});
</script>
	<!-- Mainly scripts -->
	<script src="resources/js/jquery-2.1.1.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script
		src="resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="resources/js/inspinia.js"></script>
	<script src="resources/js/plugins/pace/pace.min.js"></script>

	<!-- iCheck -->
	<script src="resources/js/plugins/iCheck/icheck.min.js"></script>
	<!-- Data picker -->
	<script
		src="resources/js/plugins/datapicker/bootstrap-datepicker.js"></script>
	<!-- SUMMERNOTE -->
	<script src="resources/js/plugins/summernote/summernote.min.js"></script>
	<script src="resources/js/plugins/footable/footable.all.min.js"></script>
	<!-- DROPZONE -->
	<script src="resources/js/plugins/dropzone/dropzone.js"></script>
	<script>
		$(document).ready(function() {
			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
			});

			$('.summernote').summernote();

		});
		var edit = function() {
			$('.click2edit').summernote({
				focus : true
			});
		};
		var save = function() {
			var aHTML = $('.click2edit').code(); //save HTML If you need(aHTML: array).
			$('.click2edit').destroy();

		};
	</script>
	<script>
		$(document).ready(function() {

			$('#date_added').datepicker({
				todayBtn : "linked",
				keyboardNavigation : false,
				forceParse : false,
				calendarWeeks : true,
				autoclose : true
			});

			$('#date_modified').datepicker({
				todayBtn : "linked",
				keyboardNavigation : false,
				forceParse : false,
				calendarWeeks : true,
				autoclose : true
			});

		});
	</script>
	<script>
		$(document).ready(
				function() {

					Dropzone.options.myAwesomeDropzone = {

						autoProcessQueue : false,
						uploadMultiple : true,
						parallelUploads : 100,
						maxFiles : 100,

						// Dropzone settings
						init : function() {
							var myDropzone = this;

							this.element.querySelector("button[type=submit]")
									.addEventListener("click", function(e) {
										e.preventDefault();
										e.stopPropagation();
										myDropzone.processQueue();
									});
							this.on("sendingmultiple", function() {
							});
							this.on("successmultiple",
									function(files, response) {
									});
							this.on("errormultiple", function(files, response) {
							});
						}

					}

				});
	</script>

</body>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.4/table_foo_table.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 24 Mar 2016 21:44:58 GMT -->
</html>
