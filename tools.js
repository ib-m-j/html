function getUrlVars() {
		var vars = {};
		var parts = location.search.replace(
						/[?&]+([^=&]+)=([^&]*)/gi,function(m,key,value) {vars[key] = value;});
return vars;
}

function getOrderedUrlVars() {
var vars = [];
var parts = location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, 
               function(m,key,value) {vars.push([key, value])});
return vars;
}

function setTextsOfRibbonElement(el, text) {
 //assuming text[0] is header and text[ 1] is content
    $(el).find('span').text(decodeURI(text[0]));
    $(el).find('.ribbonElementContent').html(decodeURI(text[1]));
}
