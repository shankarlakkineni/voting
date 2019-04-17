 <html>
         <head>
		 <h1 align="center">LOGIN </h1>
		 <style>
		 body{
		 background-image:linear-gradient(pink,blue);
		 }
		 </style>
             <script type="text/javascript">
			 var code;
                 function Captcha()
				 {
                     var alpha = new Array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9');
                     var i;
                       var a = alpha[Math.floor(Math.random() * 62)];
                       var b = alpha[Math.floor(Math.random() * 62)];
                       var c = alpha[Math.floor(Math.random() * 62)];
                       var d = alpha[Math.floor(Math.random() * 62)];
                       var e = alpha[Math.floor(Math.random() * 62)];
                       var f = alpha[Math.floor(Math.random() * 62)];
                       var g = alpha[Math.floor(Math.random() * 62)];
                     
                     code = a+b+c+d+e+f+g;
                    document.getElementById("mainCaptcha").value = code;
                  }
                  function fun(){
                     var t=document.getElementById("txtInput").value;
					 
                      if (t==code){
                        document.getElementById("pid").innerHTML="valid captcha";
                      }
                      else{        
                        document.getElementById("pid").innerHTML="invalid captcha";
                      }
                  }
                
             </script>   
			 <body style="text-transform:uppercase " onload="Captcha()" >
			 <form align="center" action="val.jsp">
			 <table >
	<tr><td>aadhaar</td><td><input type="text"		 pattern="[0-9]{12,}" title="invalid aadhaar" name="t1" ></td></tr>
	 <tr><td>VOTER ID</td><td><input type="text" pattern="[a-zA-Z0-9]{9,}" title="invalid voter"></td></tr>
	<tr>
       
                <td> Text Captcha</td>

             <td><input type="text" id="mainCaptcha" disabled style="font-family:consolas" /></td></tr>
            
         
           <tr><td> <input type="text" id="txtInput"/>  </td>  
                     <td> <input type="button" id="Button1" value="Check" onclick="fun()"/>
					   <input type="button" id="refresh" value="Refresh" onclick="Captcha()" /></td></tr>
          <tr><td><p id="pid"></p></td></tr>
		  <tr><td><input type="submit"  ></td></tr>
		  
 
	
 
