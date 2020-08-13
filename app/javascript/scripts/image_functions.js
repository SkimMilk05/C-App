var correctSound = new Audio("<%= audio_path 'Correct.mp3' %>");
var wrongSound = new Audio("<%= audio_path 'Wrong.mp3' %>");
var okaySound = new Audio("<%= audio_path 'Okay.mp3' %>")

//can't use erb within script

var numGreenAreas = <%= @image.green_areas.length() %>; //global variable
var numBlueAreas = <%= @image.blue_areas.length() %>;

var greenAreasLeft = numGreenAreas;
var blueAreasLeft = numBlueAreas;

//statistics

//right answers
var blueAreasClickedRight = 0;
var greenAreasClickedRight = 0;

//wrong answeres
var blueAreasClickedWrong = 0;
var greenAreasClickedWrong = 0;
var colorlessAreasClicked = 0;

//function to respond to clicks

function greenClicked() {
  if (greenAreasLeft > 0) {
  greenAreasClickedRight++;
  greenAreasLeft--;
  correctSound.play();
  alert("You clicked green!");
  $('#image').addClass('right');
} else {
  greenAreasClickedWrong++;
  wrongSound.play();
  alert("Wrong!");
  $('#image').addClass('wrong');
  }
}

function blueClicked() {
  if (greenAreasLeft == 0 && blueAreasLeft > 0) {
    blueAreasClickedRight++;
    blueAreasLeft--;
    correctSound.play();
    alert("You clicked blue!");
    $('#image').addClass('right');
  } else {
    blueAreasClickedWrong++;
    okaySound.play();
    alert("Not yet!");
    $('#image').addClass('okay');
  }
}

function colorlessClicked() {
  colorlessAreasClicked++;
  wrongSound.play();
  alert("Wrong!");
  $('#image').addClass('wrong');
}

//checking for score. This will be overview page later
function showScore() {
  alert("Number of green areas: " + numGreenAreas + "\n" +
  "Number of green areas remaining: " + greenAreasLeft + "\n" +
  "Green Areas Clicked right: " + greenAreasClickedRight + "\n" +
  "Blue Areas Clicked right: " + blueAreasClickedRight + "\n" +
  "Green Areas Clicked wrong: " + greenAreasClickedWrong + "\n" +
  "Blue Areas Clicked wrong: " + blueAreasClickedWrong + "\n" +
  "Colorless Areas Clicked (always wrong): " + colorlessAreasClicked
  );
}

//function to scale image-map
!function(){"use strict";function r(){function e(){var r={width:u.width/u.naturalWidth,height:u.height/u.naturalHeight},a={width:parseInt(window.getComputedStyle(u,null).getPropertyValue("padding-left"),10),height:parseInt(window.getComputedStyle(u,null).getPropertyValue("padding-top"),10)};i.forEach(function(e,t){var n=0;o[t].coords=e.split(",").map(function(e){var t=1==(n=1-n)?"width":"height";return a[t]+Math.floor(Number(e)*r[t])}).join(",")})}function t(e){return e.coords.replace(/ *, */g,",").replace(/ +/g,",")}function n(){clearTimeout(d),d=setTimeout(e,250)}function r(e){return document.querySelector('img[usemap="'+e+'"]')}var a=this,o=null,i=null,u=null,d=null;"function"!=typeof a._resize?(o=a.getElementsByTagName("area"),i=Array.prototype.map.call(o,t),u=r("#"+a.name)||r(a.name),a._resize=e,u.addEventListener("load",e,!1),window.addEventListener("focus",e,!1),window.addEventListener("resize",n,!1),window.addEventListener("readystatechange",e,!1),document.addEventListener("fullscreenchange",e,!1),u.width===u.naturalWidth&&u.height===u.naturalHeight||e()):a._resize()}function e(){function t(e){e&&(!function(e){if(!e.tagName)throw new TypeError("Object is not a valid DOM element");if("MAP"!==e.tagName.toUpperCase())throw new TypeError("Expected <MAP> tag, found <"+e.tagName+">.")}(e),r.call(e),n.push(e))}var n;return function(e){switch(n=[],typeof e){case"undefined":case"string":Array.prototype.forEach.call(document.querySelectorAll(e||"map"),t);break;case"object":t(e);break;default:throw new TypeError("Unexpected data type ("+typeof e+").")}return n}}"function"==typeof define&&define.amd?define([],e):"object"==typeof module&&"object"==typeof module.exports?module.exports=e():window.imageMapResize=e(),"jQuery"in window&&(window.jQuery.fn.imageMapResize=function(){return this.filter("map").each(r).end()})}();
