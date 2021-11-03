
// The slideshow speed (in milliseconds)
var SlideShowSpeed = 5000;

// The duration of crossfade (in seconds)
var CrossFadeDuration = 2;

var Picture = new Array();
// var Caption = new Array();


Picture[1]  = 'images/LeftSide.jpg';
Picture[2]  = 'images/LeftSide2.jpg';
Picture[3]  = 'images/LeftSide3.jpg';
Picture[4]  = 'images/LeftSide4.jpg';
Picture[5]  = 'images/LeftSide5.jpg';

var tss;
var iss;
var jss = 1;
var pss = Picture.length-1;

var preLoad = new Array();
for (iss = 1; iss < pss+1; iss++){
preLoad[iss] = new Image();
preLoad[iss].src = Picture[iss];}

function runSlideShow(){
if (document.all){
if (document.images.PictureBox.filters)
	document.images.PictureBox.style.filter="blendTrans(duration=2)";
	document.images.PictureBox.style.filter="blendTrans(duration=CrossFadeDuration)";
	document.images.PictureBox.filters.blendTrans.Apply();
}
document.images.PictureBox.src = preLoad[jss].src;
// if (document.getElementById) document.getElementById("CaptionBox").innerHTML= Caption[jss];
if (document.all) document.images.PictureBox.filters.blendTrans.Play();
jss = jss + 1;
if (jss > (pss)) jss=1;
tss = setTimeout('runSlideShow()', SlideShowSpeed);
}
