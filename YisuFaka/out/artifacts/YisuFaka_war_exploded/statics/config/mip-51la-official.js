(window.MIP=window.MIP||[]).push({name:"mip-51la-official",func:function(){define("mip-51la-official/mip-51la-official",["require","customElement"],function(e){"use strict";var n=e("customElement").create();return n.prototype.firstInviewCallback=function(){var e=document.querySelector("[data-51laid]").attributes["data-51laid"],n=e?e.value:null;if(n){var a=document.createElement("script");a.src=document.location.protocol+"//js.users.51.la/"+n+".js",document.body.appendChild(a)}},n}),define("mip-51la-official",["mip-51la-official/mip-51la-official"],function(e){return e}),function(){function e(e,n){e.registerMipElement("mip-51la-official",n)}if(window.MIP)require(["web/WEB-INF/jsp/config/mip-51la-official"],function(n){e(window.MIP,n)});else require(["mip","web/WEB-INF/jsp/config/mip-51la-official"],e)}()}});