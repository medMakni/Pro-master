<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- PREVIEW DATA -->
<!-- load the JS files in the right order -->
<!-- sortable plugin for sorting/rearranging initial preview -->
<script src="resources/js/plugins/sortable.min.js"></script>
<!-- purify plugin for safe rendering HTML content in preview -->
<script src="resources/js/plugins/purify.min.js"></script>
<script src="resources/js/fileinput.js"></script>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="resources/css/animate.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
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
       
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 
<a href="#" id="trigger">this link</a>
<div id="dialog" style="display:yes">
    <div>
    <iframe src="C:\Users\Wassim\Desktop\Makni Med wassim\LM_MAKNI_Mohamed Wassim.pdf"></iframe>
    </div>
</div> 
<script language="javascript" type="text/javascript">
  $(document).ready(function() {
    $('#trigger').click(function(){
      $("#dialog").dialog();
    }); 
  });                  
</script>
<script>
$("#input-pd").fileinput({
    uploadUrl: "/file-upload-batch/1",
    uploadAsync: false,
    minFileCount: 2,
    maxFileCount: 5,
    overwriteInitial: false,
    initialPreview: [
        // IMAGE DATA
        "http://kartik-v.github.io/bootstrap-fileinput-samples/samples/Desert.jpg",
        // IMAGE DATA
        "http://kartik-v.github.io/bootstrap-fileinput-samples/samples/Lighthouse.jpg",
        // VIDEO DATA
        "http://kartik-v.github.io/bootstrap-fileinput-samples/samples/small.mp4",
        // PDF DATA
        'http://kartik-v.github.io/bootstrap-fileinput-samples/samples/pdf-sample.pdf',
        // TEXT DATA
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut mauris ut libero fermentum feugiat eu et dui. Mauris condimentum rhoncus enim, sed semper neque vestibulum id. Nulla semper, turpis ut consequat imperdiet, enim turpis aliquet orci, eget venenatis elit sapien non ante. Aliquam neque ipsum, rhoncus id ipsum et, volutpat tincidunt augue. Maecenas dolor libero, gravida nec est at, commodo tempor massa. Sed id feugiat massa. Pellentesque at est eu ante aliquam viverra ac sed est.",
        // HTML DATA
        '<div class="text-center">' + 
        '<h3>Lorem Ipsum</h3>' + 
        '<p><em>"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."</em></p>' + 
        '<h5><small>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."</small></h5>' + 
        '<hr>' + 
        '</div>' + 
        '<div class="text-justify">' + 
        '<p>' + 
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed convallis convallis dolor sed dignissim. Phasellus euismod mauris vel dolor maximus, sed fermentum mauris lobortis. Aliquam luctus, diam in luctus egestas, magna lacus luctus libero, scelerisque mattis ante dolor ac nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse varius orci ultricies massa euismod, at semper turpis fermentum. Quisque vitae augue vel lectus viverra facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla lacinia molestie diam, et volutpat nunc bibendum a. Cras a est sed augue commodo accumsan quis vitae nisi.' + 
        '</p>' + 
        '<p>' + 
        'Nunc sit amet metus et dui aliquet feugiat. Praesent lobortis, ipsum et elementum dignissim, urna libero fringilla justo, at tincidunt nisi mi sed mi. Integer vel est porttitor, tempor tortor non, lobortis felis. Curabitur porttitor nisi et volutpat iaculis. Fusce nec feugiat lectus, vitae ullamcorper lorem. Ut ultrices nunc imperdiet placerat malesuada. Proin commodo erat in egestas maximus.' + 
        '</p>'
    ],
    initialPreviewAsData: true, // identify if you are sending preview data only and not the raw markup
    initialPreviewFileType: 'image', // image is the default and can be overridden in config below
    initialPreviewConfig: [
        {caption: "Desert.jpg", size: 827000, width: "120px", url: "/file-upload-batch/2", key: 1},
        {caption: "Lighthouse.jpg", size: 549000, width: "120px", url: "/file-upload-batch/2", key: 2}, 
        {type: "video", size: 375000, filetype: "video/mp4", caption: "KrajeeSample.mp4", url: "/file-upload-batch/2", key: 3}, 
        {type: "pdf", size: 8000, caption: "About.pdf", url: "/file-upload-batch/2", key: 4},
        {type: "text", size: 1430, caption: "LoremIpsum.txt", url: "/file-upload-batch/2", key: 5}, 
        {type: "html", size: 3550, caption: "LoremIpsum.html", url: "/file-upload-batch/2", key: 6}
    ],
    purifyHtml: true, // this by default purifies HTML data for preview
    uploadExtraData: {
        img_key: "1000",
        img_keywords: "happy, places",
    }
}).on('filesorted', function(e, params) {
    console.log('File sorted params', params);
}).on('fileuploaded', function(e, params) {
    console.log('File uploaded params', params);
});
</script>
</body>
</html>