<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Departments</title>
        <style>
       	 	h2{
        	text-align:center;
        	}
        	h3{
        	text-align:center;
        	}
        	.visually-hidden {
    				opacity: 0.5;
    		}
			th, td {
			 
			  padding: 50px;
			}
			table
			{ 
			margin-left: auto;
			margin-right: auto;
			border: 0.25px solid black;
			}
		</style>
        <script>
        	var st;
         	var allsub;
	         
	     //Get request to display student name
	       	window.onload=function (){
	       		var xhr=new XMLHttpRequest();
	       		xhr.open('GET','/department/StudentControl',true);
	       	 	xhr.onload=function()
	       	 	{
	       	 		if(this.status==200)
	       	 			{
	       	 				st=JSON.parse(this.responseText);
	       	 				document.getElementById("ECE").innerHTML=loop(st[0].sList);
	       	 				document.getElementById("EEE").innerHTML=loop(st[1].sList);
	       	 				document.getElementById("MECH").innerHTML=loop(st[2].sList);
	       	 				document.getElementById("CIVL").innerHTML=loop(st[3].sList);
	       	 			}
	       	 	}
	       	 	xhr.send();
	        }
	      	
	      // To send Post request and getstudent subject and all subject
	         function selectsub1(){
	           	var xhr=new XMLHttpRequest();
	       	 	xhr.open("POST","/department/EEEController?name="+document.getElementById("EEE").value+"&dept=EEE",true);
	       	 	xhr.onload=function()
	       	 	{
	       	 		if(this.status==200)
	       	 			{
	       	 				var stusub=JSON.parse((JSON.parse(this.responseText))[0]);
	       	 				allsub=JSON.parse((JSON.parse(this.responseText))[1]);
	    	 				document.getElementById("EEEstusub").innerHTML=loop1(stusub,"Selected Subjects");
	    	 				document.getElementById("EEEallsub").innerHTML=loop2(stusub,"All Subjects");
	       	 			}
	       	 	}
	       	 	xhr.send();
	        }
	      
	      
	         function selectsub2(){
		           	var xhr=new XMLHttpRequest();
		       	 	xhr.open("POST","/department/ECEController?name="+document.getElementById("ECE").value+"&dept=ECE",true);
		       	 	xhr.onload=function()
		       	 	{
		       	 		if(this.status==200)
		       	 			{
		       	 				var stusub=JSON.parse((JSON.parse(this.responseText))[0]);
		       	 				allsub=JSON.parse((JSON.parse(this.responseText))[1]);
		    	 				document.getElementById("ECEstusub").innerHTML=loop1(stusub,"Selected Subjects");
		    	 				document.getElementById("ECEallsub").innerHTML=loop2(stusub,"All Subjects");
		       	 			}
		       	 	}
		       	 	xhr.send();
		        }
	         
	         
	         function selectsub3(){
		           	var xhr=new XMLHttpRequest();
		       	 	xhr.open("POST","/department/MECHController?name="+document.getElementById("MECH").value+"&dept=Mech",true);
		       	 	xhr.onload=function()
		       	 	{
		       	 		if(this.status==200)
		       	 			{
		       	 				var stusub=JSON.parse((JSON.parse(this.responseText))[0]);
		       	 				allsub=JSON.parse((JSON.parse(this.responseText))[1]);
		    	 				document.getElementById("MECHstusub").innerHTML=loop1(stusub,"Selected Subjects");
		    	 				document.getElementById("MECHallsub").innerHTML=loop2(stusub,"All Subjects");
		       	 			}
		       	 	}
		       	 	xhr.send();
		        }
	         
	         
	         function selectsub4(){
		           	var xhr=new XMLHttpRequest();
		       	 	xhr.open("POST","/department/CIVLController?name="+document.getElementById("CIVL").value+"&dept=Civl",true);
		       	 	xhr.onload=function()
		       	 	{
		       	 		if(this.status==200)
		       	 			{
		       	 				var stusub=JSON.parse((JSON.parse(this.responseText))[0]);
		       	 				allsub=JSON.parse((JSON.parse(this.responseText))[1]);
		    	 				document.getElementById("CIVLstusub").innerHTML=loop1(stusub,"Selected Subjects");
		    	 				document.getElementById("CIVLallsub").innerHTML=loop2(stusub,"All Subjects");
		       	 			}
		       	 	}
		       	 	xhr.send();
		        }
	      	
	      // to display student's subject name dropdown
	       	 function loop(stu){
	       		 var output='';
	       		output+='<option value="none" hidden>select a name</option>\n';
	       		for (let index = 0; index < stu.length; index++) {
	       		 	output+='<option value="'+stu[index].name+'">'+stu[index].name+'</option>\n';
	       		}
	       		output+="</select>"+"\n";
	       		return output;
	       	 }
			
	      // to display student subject
	       	 function loop1(stusub,dept){
	       		 var output=dept+'<br><br>';
	       		for (let index = 0; index < stusub.length; index++) {
	       		 	output+='<input type="checkbox" id="'+stusub[index]+'" name="'+stusub[index]+'" value="'+stusub[index]+'">'+stusub[index]+'<br>\n';
	       		}
	       		return output;
	       	 }
	       	 
	      // to display All subjectwn
	       	function loop2(stusub,dept){
	       		var flag=false;
	       		var output=dept+'<br><br>';
	      		for (let index = 0; index < allsub.length; index++) {
	      			output+='<input type="checkbox" id="'+allsub[index]+'" name="'+allsub[index]+'" value="'+allsub[index]+'"';
	      			for(let i = 0; i < stusub.length; i++){
	      	      		if(stusub[i] === allsub[index]){;
	      	      		flag=true;
	      	      		
	      	      		break;
	      	      		}
	      			}
	      			if(flag)
	      				output+=' disabled>\n<label for="'+allsub[index]+'"class="visually-hidden">'+allsub[index]+'</label><br>\n';
	      			else
	      				output+='>\n<label for='+allsub[index]+'>'+allsub[index]+'</label><br>\n';
	      			flag=false;	
	      		}
	      		return output;
	      	 }
        </script>
    </head>
    <body>
    	<h2>Department Student list</h2>
    	<table>
    	<tr>
    	
        <td><h3>EEE</h3><br><br><select id="EEE" id="EEE" onChange="selectsub1()"></select></td>
        <td><h3>ECE</h3><br><br><select id="ECE" id="ECE" onChange="selectsub2()"></select></td>
        <td><h3>Mech</h3><br><br><select id="MECH" id="MECH" onChange="selectsub3()"></select></td>
        <td><h3>Civl</h3><br><br><select id="CIVL" id="CIVL" onChange="selectsub4()"></select></td>
        </tr>
        <tr>
        <td><div id="EEEstusub"></div></td>
        <td><div id="ECEstusub"></div></td>
        <td><div id="MECHstusub"></div></td>
        <td><div id="CIVLstusub"></div></td>
        </tr>
        <tr>
        <td><div id="EEEallsub"></div></td>
        <td><div id="ECEallsub"></div></td>
        <td><div id="MECHallsub"></div></td>
        <td><div id="CIVLallsub"></div></td>
        </tr>
        </table>
     </body>
</html>