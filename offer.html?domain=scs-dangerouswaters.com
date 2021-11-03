<!DOCTYPE html>
<html>
	
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	
	<title>Make an offer</title>		
    <link rel="stylesheet" href="/css/offer.css?rte=1&tm=2&dn=scs-dangerouswaters.com&tid=1020&def=Akamai%3aHostingURL%3dhttp%3a%2f%2fi.nuseek.com">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,500' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Asap:400,700' rel='stylesheet' type='text/css'>    
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script>
    <script type="text/javascript" src="http://makeanoffer.domainsalesolutions.com/js/ui/jquery.ui.dizzyninja.parkingofferrecommend.v1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#offer-recommend").offerrecommend({ ui_requireOffer: true });
        });
    </script>

</head>
	
<body class="primary">

<div id="offer-recommend"></div>

<div class="footer">  
    <p class="copy">Copyright &copy; 2008-2015. All rights reserved. <a href="http://acquirethisname.com/terms-of-use.aspx" title="Terms &amp; Conditions" target="_new">
       Terms &amp; Conditions</a>, <a href="http://acquirethisname.com/note-ip-policy.aspx" title="IP Policy" target="_new">IP Policy</a></p>        
</div>

</body>
</html>