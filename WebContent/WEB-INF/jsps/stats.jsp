<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.4/graph_morris.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 24 Mar 2016 21:42:26 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | Morris.js Charts</title>

    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- morris -->
    <link href="resources/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">

    <link href="resources/css/animate.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">

</head>

<body>

    <div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="resources/img/profile_small.jpg" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="resources/#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">David Williams</strong>
                             </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="resources/profile.html">Profile</a></li>
                            <li><a href="resources/contacts.html">Contacts</a></li>
                            <li><a href="resources/mailbox.html">Mailbox</a></li>
                            <li class="divider"></li>
                            <li><a href="resources/login.html">Logout</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li>
                    <a href="resources/index-2.html"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboards</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="resources/index-2.html">Dashboard v.1</a></li>
                        <li><a href="resources/dashboard_2.html">Dashboard v.2</a></li>
                        <li><a href="resources/dashboard_3.html">Dashboard v.3</a></li>
                        <li><a href="resources/dashboard_4_1.html">Dashboard v.4</a></li>
                        <li><a href="resources/dashboard_5.html">Dashboard v.5 <span class="label label-primary pull-right">NEW</span></a></li>
                    </ul>
                </li>
                <li>
                    <a href="resources/layouts.html"><i class="fa fa-diamond"></i> <span class="nav-label">Layouts</span></a>
                </li>
                <li class="active">
                    <a href="resources/#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">Graphs</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a href="resources/graph_flot.html">Flot Charts</a></li>
                        <li class="active"><a href="resources/graph_morris.html">Morris.js Charts</a></li>
                        <li><a href="resources/graph_rickshaw.html">Rickshaw Charts</a></li>
                        <li><a href="resources/graph_chartjs.html">Chart.js</a></li>
                        <li><a href="resources/graph_chartist.html">Chartist</a></li>
                        <li><a href="resources/c3.html">c3 charts</a></li>
                        <li><a href="resources/graph_peity.html">Peity Charts</a></li>
                        <li><a href="resources/graph_sparkline.html">Sparkline Charts</a></li>
                    </ul>
                </li>
                <li>
                    <a href="resources/mailbox.html"><i class="fa fa-envelope"></i> <span class="nav-label">Mailbox </span><span class="label label-warning pull-right">16/24</span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="resources/mailbox.html">Inbox</a></li>
                        <li><a href="resources/mail_detail.html">Email view</a></li>
                        <li><a href="resources/mail_compose.html">Compose email</a></li>
                        <li><a href="resources/email_template.html">Email templates</a></li>
                    </ul>
                </li>
                <li>
                    <a href="resources/metrics.html"><i class="fa fa-pie-chart"></i> <span class="nav-label">Metrics</span>  </a>
                </li>
                <li>
                    <a href="resources/widgets.html"><i class="fa fa-flask"></i> <span class="nav-label">Widgets</span></a>
                </li>
                <li>
                    <a href="resources/#"><i class="fa fa-edit"></i> <span class="nav-label">Forms</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="resources/form_basic.html">Basic form</a></li>
                        <li><a href="resources/form_advanced.html">Advanced Plugins</a></li>
                        <li><a href="resources/form_wizard.html">Wizard</a></li>
                        <li><a href="resources/form_file_upload.html">File Upload</a></li>
                        <li><a href="resources/form_editors.html">Text Editor</a></li>
                        <li><a href="resources/form_markdown.html">Markdown</a></li>
                    </ul>
                </li>
                <li>
                    <a href="resources/#"><i class="fa fa-desktop"></i> <span class="nav-label">App Views</span>  <span class="pull-right label label-primary">SPECIAL</span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="resources/contacts.html">Contacts</a></li>
                        <li><a href="resources/profile.html">Profile</a></li>
                        <li><a href="resources/profile_2.html">Profile v.2</a></li>
                        <li><a href="resources/contacts_2.html">Contacts v.2</a></li>
                        <li><a href="resources/projects.html">Projects</a></li>
                        <li><a href="resources/project_detail.html">Project detail</a></li>
                        <li><a href="resources/teams_board.html">Teams board</a></li>
                        <li><a href="resources/social_feed.html">Social feed</a></li>
                        <li><a href="resources/clients.html">Clients</a></li>
                        <li><a href="resources/full_height.html">Outlook view</a></li>
                        <li><a href="resources/vote_list.html">Vote list</a></li>
                        <li><a href="resources/file_manager.html">File manager</a></li>
                        <li><a href="resources/calendar.html">Calendar</a></li>
                        <li><a href="resources/issue_tracker.html">Issue tracker</a></li>
                        <li><a href="resources/blog.html">Blog</a></li>
                        <li><a href="resources/article.html">Article</a></li>
                        <li><a href="resources/faq.html">FAQ</a></li>
                        <li><a href="resources/timeline.html">Timeline</a></li>
                        <li><a href="resources/pin_board.html">Pin board</a></li>
                    </ul>
                </li>
                <li>
                    <a href="resources/#"><i class="fa fa-files-o"></i> <span class="nav-label">Other Pages</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="resources/search_results.html">Search results</a></li>
                        <li><a href="resources/lockscreen.html">Lockscreen</a></li>
                        <li><a href="resources/invoice.html">Invoice</a></li>
                        <li><a href="resources/login.html">Login</a></li>
                        <li><a href="resources/login_two_columns.html">Login v.2</a></li>
                        <li><a href="resources/forgot_password.html">Forget password</a></li>
                        <li><a href="resources/register.html">Register</a></li>
                        <li><a href="resources/404.html">404 Page</a></li>
                        <li><a href="resources/500.html">500 Page</a></li>
                        <li><a href="resources/empty_page.html">Empty page</a></li>
                    </ul>
                </li>
                <li>
                    <a href="resources/#"><i class="fa fa-globe"></i> <span class="nav-label">Miscellaneous</span><span class="label label-info pull-right">NEW</span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="resources/toastr_notifications.html">Notification</a></li>
                        <li><a href="resources/nestable_list.html">Nestable list</a></li>
                        <li><a href="resources/agile_board.html">Agile board</a></li>
                        <li><a href="resources/timeline_2.html">Timeline v.2</a></li>
                        <li><a href="resources/diff.html">Diff</a></li>
                        <li><a href="resources/i18support.html">i18 support</a></li>
                        <li><a href="resources/sweetalert.html">Sweet alert</a></li>
                        <li><a href="resources/idle_timer.html">Idle timer</a></li>
                        <li><a href="resources/truncate.html">Truncate</a></li>
                        <li><a href="resources/spinners.html">Spinners</a></li>
                        <li><a href="resources/tinycon.html">Live favicon</a></li>
                        <li><a href="resources/google_maps.html">Google maps</a></li>
                        <li><a href="resources/code_editor.html">Code editor</a></li>
                        <li><a href="resources/modal_window.html">Modal window</a></li>
                        <li><a href="resources/clipboard.html">Clipboard</a></li>
                        <li><a href="resources/forum_main.html">Forum view</a></li>
                        <li><a href="resources/validation.html">Validation</a></li>
                        <li><a href="resources/tree_view.html">Tree view</a></li>
                        <li><a href="resources/loading_buttons.html">Loading buttons</a></li>
                        <li><a href="resources/chat_view.html">Chat view</a></li>
                        <li><a href="resources/masonry.html">Masonry</a></li>
                        <li><a href="resources/tour.html">Tour</a></li>
                    </ul>
                </li>
                <li>
                    <a href="resources/#"><i class="fa fa-flask"></i> <span class="nav-label">UI Elements</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="resources/typography.html">Typography</a></li>
                        <li><a href="resources/icons.html">Icons</a></li>
                        <li><a href="resources/draggable_panels.html">Draggable Panels</a></li> <li><a href="resources/resizeable_panels.html">Resizeable Panels</a></li>
                        <li><a href="resources/buttons.html">Buttons</a></li>
                        <li><a href="resources/video.html">Video</a></li>
                        <li><a href="resources/tabs_panels.html">Panels</a></li>
                        <li><a href="resources/tabs.html">Tabs</a></li>
                        <li><a href="resources/notifications.html">Notifications & Tooltips</a></li>
                        <li><a href="resources/badges_labels.html">Badges, Labels, Progress</a></li>
                    </ul>
                </li>

                <li>
                    <a href="resources/grid_options.html"><i class="fa fa-laptop"></i> <span class="nav-label">Grid options</span></a>
                </li>
                <li>
                    <a href="resources/#"><i class="fa fa-table"></i> <span class="nav-label">Tables</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="resources/table_basic.html">Static Tables</a></li>
                        <li><a href="resources/table_data_tables.html">Data Tables</a></li>
                        <li><a href="resources/table_foo_table.html">Foo Tables</a></li>
                        <li><a href="resources/jq_grid.html">jqGrid</a></li>
                    </ul>
                </li>
                <li>
                    <a href="resources/#"><i class="fa fa-shopping-cart"></i> <span class="nav-label">E-commerce</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="resources/ecommerce_products_grid.html">Products grid</a></li>
                        <li><a href="resources/ecommerce_product_list.html">Products list</a></li>
                        <li><a href="resources/ecommerce_product.html">Product edit</a></li>
                        <li><a href="resources/ecommerce_product_detail.html">Product detail</a></li>
                        <li><a href="resources/ecommerce-cart.html">Cart</a></li>
                        <li><a href="resources/ecommerce-orders.html">Orders</a></li>
                        <li><a href="resources/ecommerce_payments.html">Credit Card form</a></li>
                    </ul>
                </li>
                <li>
                    <a href="resources/#"><i class="fa fa-picture-o"></i> <span class="nav-label">Gallery</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="resources/basic_gallery.html">Lightbox Gallery</a></li>
                        <li><a href="resources/slick_carousel.html">Slick Carousel</a></li>
                        <li><a href="resources/carousel.html">Bootstrap Carousel</a></li>

                    </ul>
                </li>
                <li>
                    <a href="resources/#"><i class="fa fa-sitemap"></i> <span class="nav-label">Menu Levels </span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li>
                            <a href="resources/#">Third Level <span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a href="resources/#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="resources/#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="resources/#">Third Level Item</a>
                                </li>

                            </ul>
                        </li>
                        <li><a href="resources/#">Second Level Item</a></li>
                        <li>
                            <a href="resources/#">Second Level Item</a></li>
                        <li>
                            <a href="resources/#">Second Level Item</a></li>
                    </ul>
                </li>
                <li>
                    <a href="resources/css_animation.html"><i class="fa fa-magic"></i> <span class="nav-label">CSS Animations </span><span class="label label-info pull-right">62</span></a>
                </li>
                <li class="landing_link">
                    <a target="_blank" href="resources/landing.html"><i class="fa fa-star"></i> <span class="nav-label">Landing Page</span> <span class="label label-warning pull-right">NEW</span></a>
                </li>
                <li class="special_link">
                    <a href="resources/package.html"><i class="fa fa-database"></i> <span class="nav-label">Package</span></a>
                </li>
            </ul>

        </div>
    </nav>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="resources/#"><i class="fa fa-bars"></i> </a>
            <form role="search" class="navbar-form-custom" action="http://webapplayers.com/inspinia_admin-v2.4/search_results.html">
                <div class="form-group">
                    <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                </div>
            </form>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">Welcome to INSPINIA+ Admin Theme.</span>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="resources/#">
                        <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="resources/profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="resources/img/a7.jpg">
                                </a>
                                <div class="media-body">
                                    <small class="pull-right">46h ago</small>
                                    <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                    <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="resources/profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="resources/img/a4.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right text-navy">5h ago</small>
                                    <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
                                    <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="resources/profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="resources/img/profile.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right">23h ago</small>
                                    <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                    <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="resources/mailbox.html">
                                    <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="resources/#">
                        <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="resources/mailbox.html">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="resources/profile.html">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="resources/grid_options.html">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="resources/notifications.html">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>


                <li>
                    <a href="resources/login.html">
                        <i class="fa fa-sign-out"></i> Log out
                    </a>
                </li>
            </ul>

        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Morris.js Charts</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="resources/index-2.html">Home</a>
                        </li>
                        <li>
                            <a>Graphs</a>
                        </li>
                        <li class="active">
                            <strong>Morris.js Charts</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight" >
            <div class="row">
                
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Bar Chart Example </h5>
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
                        <div id="morris-bar-chart"></div>
                    </div>
                </div>
            </div>
            </div>
			
         <div class="row">
                
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Bar Chart Example </h5>
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
                        <div id="morris-bar-societe"></div>
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

    <!-- Morris -->
    <script src="resources/js/plugins/morris/raphael-2.1.0.min.js"></script>
    <script src="resources/js/plugins/morris/morris.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="resources/js/inspinia.js"></script>
    <script src="resources/js/plugins/pace/pace.min.js"></script>
<script>
Morris.Bar({
  element: 'morris-bar-chart',
  data: [
    { y: 'courriers arrivees', a: 100, b: 90 },
    { y: 'courriers sorties', a: 75,  b: 65 },
    { y: 'courriers internes', a: 50,  b: 40 }
  ],
  xkey: 'y',
  ykeys: ['a', 'b'],
  labels: ['courriers actives', 'courriers finis'],
  hideHover: 'auto',
  barColors: ['#1ab394','#cacaca']
});
</script>
<script>
Morris.Bar({
  element: 'morris-bar-societe',
  data: [
    { y: 'soc1', a: 100 },
    { y: 'soc2', a: 75 },
    { y: 'soc3', a: 65 },
    { y: 'soc4', a: 55 },
    { y: 'soc5', a: 50 }
  ],
  xkey: 'y',
  ykeys: ['a'],
  labels: ['courriers actives'],
  hideHover: 'auto',
  barColors: ['#1ab394']
});
</script>

</body>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.4/graph_morris.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 24 Mar 2016 21:42:32 GMT -->
</html>
