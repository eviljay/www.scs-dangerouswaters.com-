/*********************************************
Template: Offer Template
Date Created: 9/2014

6/9/15 Update: 
Moved image assets to image repository hosting

**********************************************/


/* =Browser Reset, Meyer v2.0 
------------------------------------------------------------------------------------------------------------------------------- */

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}



/* =Clear Floats 
------------------------------------------------------------------------------------------------------------------------------- */

.cf:before,
.cf:after {
    content: " "; 
    display: table; 
}
.cf:after {
    clear: both;
}   



/* =Defaults
------------------------------------------------------------------------------------------------------------------------------- */

html {font-size:100.01%;}  /* compensates cross-browser rounding errors */

body {
  font-size: 75%; /* browser default ~ 16px, so base font size of 75% = 12px = 1em */
  color: #222;
  background: #fff;
  font-family: "Helvetica Neue", Arial, Helvetica, sans-serif;        
  }

img {max-width:100%;}    
                            
.drop-shadow {-moz-box-shadow:    0px 1px 1px 0px #000;
              -webkit-box-shadow: 0px 1px 1px 0px #000;
              box-shadow:         0px 1px 1px 0px #000;                 
              }




/* =Layout 
------------------------------------------------------------------------------------------------------------------------------- */
.wrapper {border-top:4px solid #A7E77A;}
.secondary .wrapper {border:none;}


/* =Header
------------------------------------------------------------------------------------------------------------------------------- */   
.header {border:1px solid #E3F4D9;
         border-width:1px 0;
         border-bottom-color:#575656;
         /* background:url(http://rte-las.nuseek.com/templates/t1020/images/offer/imgStockTop.jpg) no-repeat 100% bottom; requires min width of 1200, apply at media query */
         }
         
.secondary .header {border:none;}         

.header p {margin:25px 40px 20px; 
           font-family: 'Asap', sans-serif;  
           color:#666;}                    
           
.header em {font-size:125%;
            font-weight:bold;
            text-transform:capitalize;}
           
.status p {font-size:300%;}   
  
.status em {color:#91c847; /* #1A7DE6 - blue */
            font-size:175%;}                        
       
.success p {padding:20px 30px;
            border:10px solid #A0E473;
            background:#EAF7E0;
            line-height:115%;
            font-size:200%;                 
            color:#333;
           
            /* rounded corners */
            -webkit-border-radius: 20px;
            -moz-border-radius: 20px;
            border-radius: 20px;                  
            } 
            
.note p {margin-bottom:25px;
         padding:20px 30px;
         border:10px solid #E5E579;
         background:#F7F7E5;
         line-height:115%;
         font-size:200%;                 
         color:#333;
           
         /* rounded corners */
         -webkit-border-radius: 20px;
         -moz-border-radius: 20px;
         border-radius: 20px;                  
         }             

  
    
    
/* =Tagline
------------------------------------------------------------------------------------------------------------------------------- */      
.tagline {color:#fff;}      
.tagline,
.table_1 caption {font-size:200%;
                  font-family: 'Roboto', sans-serif;
                  font-weight:300;}                  
          
    
                  
/* =Offer Form
------------------------------------------------------------------------------------------------------------------------------- */        

.pform-wrap {background:#51504F url(http://rte-las.nuseek.com/templates/t1020/images/offer/pattern.png);}
             
/* new */
.pform-wrap-inner {padding:40px 50px 30px;
                   /*background:transparent url(http://rte-las.nuseek.com/templates/t1020/images/offer/imgStockBtm.png) no-repeat right top; requires min width of 1200, apply at media query */
                   /* top inset */             
                   -moz-box-shadow:    inset 0 5px 10px 0 #333;
                   -webkit-box-shadow: inset 0 5px 10px 0 #333;
                   box-shadow:         inset 0 5px 10px -5px #333;                    
                   }

.pform {margin-top:25px;}

.pform ul {padding:25px;
           border:4px solid #797979; /* border-color:#9DC823; - green outline */ border-color:#CDCDCD;
           background:#F2F2F2;
        
           /* rounded corners */
           -webkit-border-radius: 10px;
           -moz-border-radius: 10px;
           border-radius: 10px; 

           /* drop shadow */
           -webkit-box-shadow: 0px 2px 1px 0px rgba(50, 50, 50, 0.75);
           -moz-box-shadow:    0px 2px 1px 0px rgba(50, 50, 50, 0.75);
           box-shadow:         0px 2px 1px 0px rgba(50, 50, 50, 0.75);          

            /* adds a light gray gradient */
            background: rgba(253,253,253,1);
            background: -moz-linear-gradient(top, rgba(253,253,253,1) 0%, rgba(246,246,246,1) 47%, rgba(237,237,237,1) 100%);
            background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(253,253,253,1)), color-stop(47%, rgba(246,246,246,1)), color-stop(100%, rgba(237,237,237,1)));
            background: -webkit-linear-gradient(top, rgba(253,253,253,1) 0%, rgba(246,246,246,1) 47%, rgba(237,237,237,1) 100%);
            background: -o-linear-gradient(top, rgba(253,253,253,1) 0%, rgba(246,246,246,1) 47%, rgba(237,237,237,1) 100%);
            background: -ms-linear-gradient(top, rgba(253,253,253,1) 0%, rgba(246,246,246,1) 47%, rgba(237,237,237,1) 100%);
            background: linear-gradient(to bottom, rgba(253,253,253,1) 0%, rgba(246,246,246,1) 47%, rgba(237,237,237,1) 100%);
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fdfdfd', endColorstr='#ededed', GradientType=0 );                 
            
   
           }


    /* clear float*/
    .pform ul:before,
    .pform ul:after {content: " ";display: table;}
    .pform ul:after {clear: both;}      

.pform li {float:left;
           margin:0 10px 10px 0;               
           position:relative;
           font-family:Arial;
           font-size:1.4em;}         

.pform label {display:inline-block;
              /* width:100px; configure for mobile */                            
              height:38px;
              line-height:38px;             
              padding:0 10px;
              border:1px solid #ccc;                                                
              background:#ccc; 
              color:#666;
              text-align:right;                                             
              }
                                    
.pform input {/*width:200px;*/ /************ mobile config */    
              height:38px;
              line-height:38px;
              border:1px solid #ccc;
              padding:0 10px;
              position:relative;
              font-size:1em;
              left:-3px;                       
              }



.secondary .pform ul {width:auto;}
.secondary .pform ul,
.secondary .pform li {float:none;}  
.secondary .pform label {width:100px;}   /************ mobile config */           
.secondary .pform input {width:65%;} 



p.cta_main {}
    
p.cta_main a {margin:25px 0 0;
              cursor:pointer;
              display:block;    
              width:300px;
              height:48px;
              line-height:48px;                   
              background:#62AD31;                       
              color:#fff;             
              font-size:2.4em;           
              text-decoration:none; 
              text-align:center;                              
              border:3px solid #6EB040 /*#A3E675*/;                      
              text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
                       
              /* inset                        
              -webkit-box-shadow: inset 0 0 5px #6FBB3C;
              -moz-box-shadow: inset 0 0 5px #6FBB3C;
              box-shadow: inset 0 0 5px #6FBB3C;   */                    

              /* drop shadow */
              -webkit-box-shadow: 0px 2px 1px 0px rgba(50, 50, 50, 0.75);
              -moz-box-shadow:    0px 2px 1px 0px rgba(50, 50, 50, 0.75);
              box-shadow:         0px 2px 1px 0px rgba(50, 50, 50, 0.75);
                        
              /* rounded corners */
              -webkit-border-radius: 8px;
              -moz-border-radius: 8px;
              border-radius: 8px;}
              
p.cta_main a:hover {background:#6FBB3C;}

p.required {margin-top:12px;
            color:#aaa;}

   
/* =Recommended Domains 
------------------------------------------------------------------------------------------------------------------------------- */  
        
#recommend {margin:35px 50px;}
.table_1 {width:100%;
          border:1px solid #E8E8E8;
          border-width:0 1px;
          border-collapse:collapse;
          background:#fff;
          font-size:16px;}     
.table_1 strong {font-weight:bold;}          
.table_1 caption {text-align:left;
                  line-height:50px;
                  font-size:150%;
                  color:#666;}          
.table_1 thead {display:none;}               
.table_1 tr.odd {background:#F0F9E4;} 
.table_1 tr.odd td {border:1px solid #E8E8E8;
                    border-width:1px 0;}
.table_1 td {padding:10px 25px;}   

td.col1 {/*width:70%;*/
         color:#666;}
td.col2 {/*width:20%;*/
         padding:10px 0;
         color:#888;
         text-transform:capitalize;
         text-align:right;}                 
td.col3 {width:12%;}         
td.col3 a,
td.col3 a:link,
td.col3 a:visited {display:block;min-width:75px;
                   /*
                    width:75px;
                    height:25px;
                    line-height:25px;
                    padding:0 8px;*/
                    padding:5px 10px;
                    background:#A3E776;                     
                    color:#636156;             
                    text-align:center;
                    text-decoration:none;                               
                    border:1px solid #6EB040;                       
                    
                    /* text-shadow: 1px 1px 1px rgba(0,0,0,0.3);       */                
                    
                    /* inset                       
                    -webkit-box-shadow: inset 0 0 5px #A3E776;
                    -moz-box-shadow: inset 0 0 5px #A3E776;
                    box-shadow: inset 0 0 5px #A3E776;  */ 
                                                              
                    /* rounded corners */
                    -webkit-border-radius: 3px;
                    -moz-border-radius: 3px;
                    border-radius: 3px;}    
                                                              
td.col3 a:hover {background:#6FBB3C;
                 color:#fff;}      

    
   

/* =Footer Elements 
------------------------------------------------------------------------------------------------------------------------------- */  
             
.footer-container {margin-top:100px;
                   border-top:3px solid #585858;
                   background:#333333; }
    
.footer p.copy {padding:15px 50px;
                font-size:1.2em;
                color:#aaa;}                    
                 
.footer p.copy a {color:#666;
                  text-decoration:none;}
.footer p a:hover {text-decoration:underline;}      
                   



/* =Form Feedback and Errors */   
         
.alert {/* position:absolute; */        
        width:100%;
        margin:0 auto;
        color:#999;
        font-family: 'Roboto', sans-serif;
        font-size:2em;
        line-height:120%;
        }

.alert .success {padding:25px;
                 background:#18c66d;
                    /* background:#F15A40; /* orange from R */
                 color:#fff4d8;
                 text-align:center;             
                 }  

.error  {
    z-index:10;
    display:inline-block;	 	
  	position:absolute;
    left:60px;
    top:39px;
    padding:5px 12px;
	border: 1px solid #EFCACA;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	background-color: #F7EBEB;
	color:#717171;	
	font-size:.9em;		
}     


.secondary .error {
    left:115px;
    top:39px;}          
          
 
/* Creates triangle for speech bubble:  http://nicolasgallagher.com/pure-css-speech-bubbles/demo/
------------------------------------------------------------------------------------------------------------------------------- */

.error:before {
  content:"";
  position:absolute;
  top:-10px;
  left:5px;
  bottom:auto; /* value = - border-top-width - border-bottom-width */
  left:auto; /* controls horizontal position */
  border-width:0 10px 10px; /* vary these values to change the angle of the vertex */
  border-style:solid;
  border-color:#EFCACA transparent;
  /* reduce the damage in FF3.0 */
  display:block;
  width:0;
}

.error:after {
  content:"";
  position:absolute;
  top:-8px;
  left:5px;
  bottom:auto; /* value = - border-top-width - border-bottom-width */
  left:auto; /* controls horizontal position */
  border-width:0 10px 10px; /* vary these values to change the angle of the vertex */
  border-style:solid;
  border-color:#F7EBEB transparent;
  /* reduce the damage in FF3.0 */
  display:block;
  width:0;
}
         



/***********************************
Media Queries
************************************/



/* Smartphones (landscape) ----------- */
@media only screen and (max-width : 480px) {
/* Styles */
.status em {font-size:100%;}
.note p, .success p, .status p {margin:25px 20px;}
.pform-wrap-inner {padding:30px 20px;}   
.pform ul {padding:25px 15px 15px;} 
.pform label {display:block;width:100%;text-align:left;} 
.pform input {display:block;width:100%;left:0;}
p.cta_main a {margin:25px 0 0;width:100%;}  
#recommend {margin:35px 0;}
.table_1 caption {text-indent:20px;}
.table_1 td {padding:15px 5px;}              
td.col1 {font-size:85%;text-indent:5px;}
td.col2 {font-size:75%;}
td.col3 {width:auto;font-size:70%;}
td.col3 a, 
td.col3 a:link,
td.col3 a:visited {min-width:50px;padding:6px 2px;}
.error {left:0;top:79px;}  
}


            /* Smartphones (portrait) ----------- */
            @media only screen and (max-width : 319px) {
            /* Styles */ 
            }


            /* Smartphones (portrait and landscape) ----------- */
            @media only screen and (min-width : 320px) and (max-width : 480px) {
            /* Styles */       
            }



/* iPads (portrait and landscape) ----------- */
@media only screen and (min-width : 481px) and (max-width : 1024px) {
/* Styles */ 
.pform label {width:100px;}                                    
.pform input {width:225px;}
}


/* iPads (portrait and landscape) ----------- */
@media only screen and (min-width : 768px) and (max-width : 1024px) {
/* Styles */
.pform label {width:100px;}                                    
.pform input {width:400px;}
}


/* Custom */
@media only screen and (max-width : 900px) {
/* Styles */
.status p {font-size:225%;}
}


/* Desktops and laptops ----------- */
@media only screen and (min-width : 1200px) {
/* Styles */

/* shows stock image only on lander and when resolution > 1200 px */
/*.primary .header {background:url(http://rte-las.nuseek.com/templates/t1020/images/offer/imgStockTop.jpg) no-repeat 100% bottom;}*/
.primary .header {background:url(http://i.nuseek.com/images/RTE/offer/imgStockTop.jpg) no-repeat 100% bottom;}
.primary .pform-wrap-inner {background:transparent url(http://i.nuseek.com/images/RTE/offer/imgStockBtm.png) no-repeat right top;}

}

     