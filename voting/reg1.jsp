<html>

<head>
<style>
body{
background-image:linear-gradient(pink,blue);
}
</style>
<script>
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
function f1()
{
document.write("<b>you have been registered successfully</b>");
}

</script>
<h2 align="center" >REGISTRATION FORM</h2>
<body style="text-transform: uppercase;" onload="Captcha()" action="reg1.jsp">
<table align="center"  ><i>
<form name="f1" action="reg2.jsp">
<tr>
<td>first name:</td><td><input type="text" name="t1"  required></td></tr>
<tr>
<td>last name:</td><td><input type="text" name="t2" pattern="[a-zA-Z]{8,}" title="invalid last name" required></td></tr>
<tr>
<td>phone number:</td><td><input type="text" name="t3" pattern="[0-9]{10,}" title="invalid number" required></td></tr>
<tr>
<td>email id:</td><td><input type="email" name="t4" required></td></tr>
<tr>
<td>dob </td><td><input type="date"></td></tr>
<tr>
<td>Gender:</td><td><input type="radio" name="gender">male 
<input type="radio" name="gender">female
<input type="radio" name="gender">other</td></tr>
<tr>
<td>aadhaar card</td><td><input type="text" name="t5" pattern="[0-9]{12,}" title="invalid aadhaar no" required></td></tr>

<tr>
<td>house no:</td><td><input type="text" name="house" required></td></tr>
<tr><td>street/area/location:</td><td><input type="text" name="street" required></td></tr>
<tr><td>city/village:</td><td><input type="text" name="city" required></td></tr>
<tr><td>pin code:</td><td><input type="text" name="pin" pattern="[0-9]{6,}" title="invalid pin code" required></td></tr>
<tr><td>district:</td><td><input type="text" name="district" required></td></tr>

<tr>      
                <td> Text Captcha</td>
             <td><input type="text" id="mainCaptcha" disabled style="font-family:consolas" /></td></tr>
             
         
           <tr><td> <input type="text" id="txtInput" />  </td>  
                     <td> <input type="button" input  id="Button1" value="Check" onclick="fun()"/>
					 <input type="button" id="refresh" value="Refresh" onclick="Captcha()" /></td></tr>
          <tr><td><p id="pid"></p></td></tr>
		  <tr><td><input type="radio" name="tc">I accept <a href="tc1.html" target="middle" >onlinevote</a> term&condition</td></tr>
<tr><td><input type="submit" onclick="f1()"></td>
<td><input type="button" value="reset" onclick="fun()"></td>
</tr>
</table>
