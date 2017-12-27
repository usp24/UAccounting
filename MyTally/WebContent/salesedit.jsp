<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sale</title>
<link rel="icon" type="image/png" href="img/fi1.ico">
<script  type="text/javascript" src="scripts/jquery-3.2.1.min.js"></script>		
<script type="text/javascript">

var list;
var num;
var list1;
var list2;
var list3;
var list4;
var cnt = 2;

$(document).ready(function(){
	
	$.ajax({
		type : 'POST',
		url : 'sales?ch=edit',
		headres : {
			Accept : "application/json; charset=utf-8",
			"Content-Type" : "application/json; charset=utf-8"
		},
		success : function(x){
			
			list3 = $.parseJSON(x);
			var date = document.getElementById("date");
			date.value = list3[0].extra;
			
			var tb = document.getElementById("tb1");
			var item1 = document.getElementById("item1");
			var disc1 = document.getElementById("disc1");
			var q1 = document.getElementById("q1");
			var HSN1 = document.getElementById("hsn1");
			var GST1 = document.getElementById("gst1");
			var p1 = document.getElementById("p1");
			var d1 = document.getElementById("d1");
			var amt1 = document.getElementById("amt1");
			
			item1.value = list3[0].itemName;
			GST1.value = list3[0].itemGST;
			q1.value = list3[0].itemQty;
			p1.value = list3[0].itemSalesPrice;
			d1.value = list3[0].itemPurchasePrice;
			HSN1.value = list3[0].itemHSN;
			disc1.value = list3[0].itemDescription;
			
			fn('1');
			fn2('1');
			var txt = list3[0].itemSrNo;
			txt = txt.split('*');
			var s = txt.length;
			var n=1;
			for(var j=1;j<=s;j++){
				var x = txt.pop();
				if(x!=""){
					document.getElementById("srno1"+n).value = x;
					n++;
				}
			}
			var nr = document.getElementById("nr");
			for(var i=1;i<list3.length;i++){
					
				var r = tb.insertRow(-1);
				var c1 = r.insertCell(0);
				var c2 = r.insertCell(1);
				var c3 = r.insertCell(2);
				var c4 = r.insertCell(3);
				var c5 = r.insertCell(4);
				var c6 = r.insertCell(5);
				var c7 = r.insertCell(6);
				var c8 = r.insertCell(7);
				var c9 = r.insertCell(8);
				var c10 = r.insertCell(9);
				var c11 = r.insertCell(10);
				var c12 = r.insertCell(11);
				
				c1.innerHTML = i+1;
				c2.innerHTML = "<input type='text' list='dl_item' name='ItemName"+cnt+"' id='item"+cnt+"' value='"+list3[i].itemName+"'  class='name'  autocomplete='off'>";
				c3.innerHTML = "<input type='text' name='ItemDescription"+cnt+"' id='disc"+cnt+"'  value='"+list3[i].itemDescription+"'  autocomplete='off'>";
				c4.innerHTML = "<input type='text' name='salesItemQty"+cnt+"' id='q"+cnt+"' onkeyup='fn("+cnt+")' value='"+list3[i].itemQty+"'  autocomplete='off'>";
				c5.innerHTML = "<input type='text' name='ItemSrNo"+cnt+"1' list='dl_srno' id='srno"+cnt+"1'  autocomplete='off'><div id='srdiv"+cnt+"' style='display:none;'>";
				c6.innerHTML = "<input type='text' name='ItemHSN"+cnt+"' id='hsn"+cnt+"' value='"+list3[i].itemHSN+"'   autocomplete='off'>";
				c7.innerHTML = "<input type='text' name='ItemGST"+cnt+"' id='gst"+cnt+"' value='"+list3[i].itemGST+"'   autocomplete='off'><input type='text' value='%' readonly>";
				c8.innerHTML = "<input type='text' name='salesItemUnitPrice"+cnt+"' id='p"+cnt+"' onkeyup='fn("+cnt+")' value='"+list3[i].itemSalesPrice+"'  autocomplete='off' >";
				c9.innerHTML = "<input type='text' name='salesItemDiscount"+cnt+"' onblur='fn("+cnt+")' id='d"+cnt+"' value='"+list3[i].itemPurchasePrice+"'   autocomplete='off'><input type='text' value='%' readonly>";
				c10.innerHTML = "<input type='text' name='salesItemTotalAmount"+cnt+"' id='amt"+cnt+"' readonly>";
				c11.innerHTML = "<input type='button' value='+' onclick='fb()'>";
				c12.innerHTML = "<input type='button' value='x' onclick='fnd(this)'>";
				
				fn(cnt);
				fn2(cnt);
				var txt = list3[i].itemSrNo;
				txt = txt.split('*');
				var s = txt.length;
				var n=1;
				for(var j=1;j<=s;j++){
					var x = txt.pop();
					if(x!=""){
						document.getElementById("srno"+(i+1)+""+n).value = x;
						n++;
					}
				}
				nr.value = cnt;
				cnt++;
			}
		}
	});
	
	$.ajax({
		type : 'POST',
		url : 'sales?ch=edit2',
		headres : {
			Accept : "application/json; charset=utf-8",
			"Content-Type" : "application/json; charset=utf-8"
		},
		success : function(x){
			list4 = $.parseJSON(x);
			var name = document.getElementById("name");
			var add1 = document.getElementById("add1");
			var add2 = document.getElementById("add2");
			var city = document.getElementById("city");
			var statecode = document.getElementById("statecode");
			var gst = document.getElementById("gst");
			
			name.value = list4[0].customerName;
			add1.value = list4[0].customerAddress1;
			add2.value = list4[0].customerAddress2;
			city.value = list4[0].customerCity;
			statecode.value = list4[0].customerStatecode;
			gst.value = list4[0].customerGSTNo;
		}
	});
	
	$.ajax({
		type : 'POST',
		url : 'sales?ch=salesBillBefore',
		headres : {
			Accept : "application/json; charset=utf-8",
			"Content-Type" : "application/json; charset=utf-8"
		},
		success : function(x){
			var dl = document.getElementById("dl");
			list1 = $.parseJSON(x);
			dl.innerHTML = "";
			for(var i=0;i<list1.length;i++){
				dl.innerHTML += "<option value='"+list1[i].customerName+"'/>";
			}
		}
	});
	
	$.ajax({
		type : 'POST',
		url : 'sales?ch=salesBillBefore2',
		headres : {
			Accept : "application/json; charset=utf-8",
			"Content-Type" : "application/json; charset=utf-8"
		},
		success : function(x){
			list2 = $.parseJSON(x);
		}
	});
	
	
	$.ajax({
		type : 'POST',
		url : 'item?ch=itemDetailSale',
		headres : {
			Accept : "application/json; charset=utf-8",
			"Content-Type" : "application/json; charset=utf-8"
		},
		success : function(x){
			list = $.parseJSON(x);
			num = list.length;
			var dl = document.getElementById("dl_item");
			dl.innerHTML = "";
			for(var i=0;i<num;i++){
				dl.innerHTML += "<option value='"+list[i].itemName+"'/>";
			}
		}
	});
	
	$("#iv").blur(function(){
		var no = document.getElementById("iv");
		var old = document.getElementById("old_ivn");
		for(var i=0;i<list2.length;i++){
			if(no.value == list2[i].salesInvoiceNo && no.value!=old.value){
				alert("Please Enter Different Invoice No");
				iv.value = '';
				break;
			}
		}
	});
	
			
	$("#name").on("input",function(){
		
		var name = document.getElementById("name");
		var add1 = document.getElementById("add1");
		var add2 = document.getElementById("add2");
		var city = document.getElementById("city");
		var statecode = document.getElementById("statecode");
		var gst = document.getElementById("gst");
		
		for(var i=0;i<list1.length;i++){
			if(name.value.toUpperCase()==list1[i].customerName){
				add1.value = list1[i].customerAddress1;
				add2.value = list1[i].customerAddress2;
				city.value = list1[i].customerCity;
				statecode.value = list1[i].customerStatecode;
				gst.value = list1[i].customerGSTNo;
				break;
			}		
		}	
	});
});

function fn(row){
	 var qty = document.getElementById("q"+row);
	 var u = document.getElementById("p"+row);
	 var at = document.getElementById("amt"+row);
	 at.value = (qty.value*u.value);
}
	
function fn2(row){
	
	var qty = document.getElementById("q"+row);
	var div = document.getElementById("srdiv"+row);
	div.innerHTML="";
	if(qty.value>1){
		div.style.display = '';
		for(var i=1;i<qty.value;i++){
			div.innerHTML = div.innerHTML + "<input type='text' id='srno"+row+""+(i+1)+"' name='ItemSrNo"+row+""+(i+1)+"' list='dl_srno'  autocomplete='off'><br>";
		}
	 }
	else{
		div.style.display = 'none';
		div.innerHTML="";
	}
}
	
function fn3(row){
	var name = document.getElementById("item"+row);
	var disc = document.getElementById("disc"+row);
	var hsn = document.getElementById("hsn"+row);
	var gst = document.getElementById("gst"+row);
	var unitPrice = document.getElementById("p"+row);
	var dl2 = document.getElementById("dl_srno");
		dl2.innerHTML = "";
	var div = document.getElementById("srdiv"+row);
		div.innerHTML="";
	var srn = document.getElementById("srno"+row+"1");
		srn.value='';
	
	for(var i=0;i<num;i++){
		if(list[i].itemName == name.value.toUpperCase()){
			hsn.value = list[i].itemHSN;
			gst.value = list[i].itemGST;
			disc.value = list[i].itemDescription;
			unitPrice.value = list[i].itemSalesPrice;
			
			var txt = list[i].itemSrNo;
			txt = txt.split('*');
			var s = txt.length;
			for(var j=1;j<=s;j++){
				var x = txt.pop();
				if(x!="")
					dl2.innerHTML += "<option value='"+x+"'/>";
			}
			break;		
		}
	}
}
	
function fb(){
	var tb = document.getElementById("tb1");
	var nr = document.getElementById("nr");
	
	var r = tb.insertRow(-1);
	var c1 = r.insertCell(0);
	var c2 = r.insertCell(1);
	var c3 = r.insertCell(2);
	var c4 = r.insertCell(3);
	var c5 = r.insertCell(4);
	var c6 = r.insertCell(5);
	var c7 = r.insertCell(6);
	var c8 = r.insertCell(7);
	var c9 = r.insertCell(8);
	var c10 = r.insertCell(9);
	var c11 = r.insertCell(10);
	var c12 = r.insertCell(11);

	c1.innerHTML = cnt;
	c2.innerHTML = "<input type='text' list='dl_item' name='ItemName"+cnt+"' id='item"+cnt+"' onblur='fn3("+cnt+")'  class='name'  autocomplete='off'>";
	c3.innerHTML = "<input type='text' name='ItemDescription"+cnt+"' id='disc"+cnt+"'  autocomplete='off'>";
	c4.innerHTML = "<input type='number' name='salesItemQty"+cnt+"' id='q"+cnt+"' onkeyup='fn("+cnt+")' onblur='fn2("+cnt+")'  autocomplete='off'>";
	c5.innerHTML = "<input type='text' name='ItemSrNo"+cnt+"1' list='dl_srno' id='srno"+cnt+"1'  autocomplete='off'><div id='srdiv"+cnt+"' style='display:none;'>";
	c6.innerHTML = "<input type='text' name='ItemHSN"+cnt+"' id='hsn"+cnt+"'  autocomplete='off'>";
	c7.innerHTML = "<input type='number' name='ItemGST"+cnt+"' id='gst"+cnt+"' value='18'   autocomplete='off'><input type='text' value='%' readonly>";
	c8.innerHTML = "<input type='number' name='salesItemUnitPrice"+cnt+"' id='p"+cnt+"' onkeyup='fn("+cnt+")' step='any'  autocomplete='off' >";
	c9.innerHTML = "<input type='number' name='salesItemDiscount"+cnt+"' value='0' onblur='fn("+cnt+")' id='d"+cnt+"' step='any'   autocomplete='off'><input type='text' value='%' readonly>";
	c10.innerHTML = "<input type='number' name='salesItemTotalAmount"+cnt+"' id='amt"+cnt+"' step='any' readonly>";
	c11.innerHTML = "<input type='button' value='+' onclick='fb()' >";
	c12.innerHTML = "<input type='button' value='x' onclick='fnd(this)'>";
	nr.value = cnt;
	cnt++;
}
	
function fnd(btn){
	var tb = document.getElementById("tb1");
	r = btn.parentNode.parentNode;
    tb.deleteRow(r.rowIndex);
	}
	
function sub(){
	
	var flag = true;
	var tb = document.getElementById("tb1");
	var date = document.getElementById("date");
	var iv = document.getElementById("iv");
	var name = document.getElementById("name");
	
	if(date.value==""){
		alert("Please Enter Invoice Date");
		flag = false;
	}
	else if(iv.value==""){
		alert("Please Enter Invoice Number");
		flag = false;
	}
	else if(name.value==""){
		alert("Please Enter Customer's Name");
		flag = false;
	}
	else{
		for(var i=1;i<tb.rows.length;i++){
		
			var c = tb.rows[i].cells;
			var z1 = c[1].innerHTML;
			var z2 = c[3].innerHTML;
			var z3 = c[6].innerHTML;
			var z4 = c[7].innerHTML;
			
			var pn;
			var pq;
			var pg;
			var pu;
			
			var zzz = z1.substring("59","60");
			if(zzz<=9){
				pn = z1.substring("55","60");
				pq = z2.substring("46","48");
				pg = z3.substring("41","45");
				pu = z4.substring("52","54");
			}
			else if(zzz=="m"){
				pn = z1.substring("56","62");
				pq = z2.substring("47","50");
				pg = z3.substring("42","47");
				pu = z4.substring("53","56");
			}
			else{
				pn = z1.substring("57","64");
				pq = z2.substring("48","52");
				pg = z3.substring("43","49");
				pu = z4.substring("54","58");
			}
			
			var name = document.getElementById(pn);
			var qty = document.getElementById(pq);
			var gst = document.getElementById(pg);
			var unitPrice = document.getElementById(pu);
			
			if(name.value==""){
				alert("Please Enter Name of Item");
				flag = false;
				break;
			}
			else if(qty.value==""){
				alert("Please Enter Qty of Item");
				flag = false;
				break;
			}
			else if(gst.value!="18" && gst.value!="28"){
				alert("GST Rate Can Only Be 18% OR 28%");
				gst.value ='';
				flag = false;
				break;
			}
			else if(unitPrice.value==""){
				alert("Please Enter UnitPrice of Item ");
				flag = false;
				break;
			}
		}
	}	
	
	if(flag==true)
		return true;
	else
		return false;
}	
$(window).scroll(function() {
    if ($(this).scrollTop() > 75) {
         $(".menubar").addClass('fix');
    } else {
         $(".menubar").removeClass('fix');
    }
});
</script>

<style type="text/css" >
body{
	background-color: #edf8f896;
	overflow:visible;
	margin: 0px;
	padding: 0px;
	text-align: center;
	font-family: Calibri,verdana,arial,sans-serif;
}
a{
	text-decoration: none;
	color:inherit;
	cursor: pointer;
}
button{
	border:none;
	background:none;
	cursor: pointer;
	height:21px;
}


.header{
	margin:auto;
	overflow:hidden;
	padding-top: 10px;
	margin-bottom: 3px;
}
.header #title{
	float: left;
	clear: left;
	padding-left:18px;
}
.header #text{
	float: right;
	padding-right:10px;
	padding-top:15px;
}
.header #title #titleh1{
	color: #4B4B4B;
	text-transform: uppercase;
	font-size : 41px;
	margin: 0px;
}
.header #title #titleh1:HOVER{
	color: #00aba9;
}
.header #title #titleh1 #u{
	font-size:55px;
	color:  #00aba9;
}
.header #text #textp{
	letter-spacing:3px;
	font-size: 14px;
	font-family: verdana;
}

.menubar{
	margin:auto;
	overflow: visible;
}
.fix{
    position:fixed;
    top:0;
    left:0;
    right:0;
    margin:0;
}
.menubar ul{
	display : inline-block;
	background-color: #5E5E5E;
	width: 100%;
	margin: 0px;
	padding:0px;
	padding-left:10px;
	text-align: center;
	font-size: 17px;
	letter-spacing: 1px;
	font-family: verdana;
	box-shadow: -2px 3px 4px -2px #5E5E5E;
}
.menubar li{
	height:33px;
	padding-top:11px;
	padding-left:15px;
	padding-right:15px;
	float:left;
	display: inherit;
	color: white;
}
.menubar #current{
	background: #00aba9;
}
.menubar li:HOVER{
	background: black !important;
}


#form1{
	margin:auto;
	text-align: center;
	margin-top:70px;
	margin-bottom:100px;
	float:left;
	clear:left;
	margin-left:50px;
}
#form2{
	margin:auto;
	text-align: center;
	margin-top:70px;
	margin-bottom:100px;
	float:right;
	margin-right:50px;
}
#form1 #date,#iv,#name,#gst{
	width:250px !important;
	padding:3px !important;
	margin-top: -26px !important;
    margin-bottom: 25px !important;
    margin-right: -90px !important;
}
#form2 #add1,#add2,#city,#statecode{
	width:250px !important;
	padding:3px !important;
	margin-top: -26px !important;
    margin-bottom: 25px !important;
    margin-right: -90px !important;
}
.boxName{
	width:260px;
	margin: auto;
	padding: 0px;
	font-size:18px;
	padding-bottom:3px;
	text-align: right;
    padding-right: 448px;
}



#tb1{
	margin: auto;
	margin-top:50px;
	margin-bottom:50px;
	white-space:nowrap;
	border-collapse: collapse; 
	border:2px solid black;
	font-size: 18px;
}
#tb1 tr{
	border:2px solid black;
}
#tb1 th{
	text-transform: capitalize;
	background: #5E5E5E;
	color:white;
	font-weight: normal;
	padding:4px;
	font-size:18px;
}
#tb1 td{
	border:1px solid black;
	border-bottom:none;
	border-top:none;
	padding:2px;
}
#tb1 input{
	background: transparent;
	border: none;
	padding:2px;
	vertical-align: middle;
	font-size: 17px;
}
#tb1 td:nth-child(2){
	width:355px;
	min-width:355px;
	max-width:355px;
}
#tb1 td:nth-child(2) input{
	width:350px;
	min-width:350px;
	max-width:350px;
}
#tb1 td:nth-child(3){
	width:230px;
	min-width:230px;
	max-width:230px;
}
#tb1 td:nth-child(3) input{
	width:225px;
	min-width:225px;
	max-width:225px;
}
#tb1 td:nth-child(4),td:nth-child(7),td:nth-child(9){
	width:60px;
	min-width:60px;
	max-width:60px;
}
#tb1 td:nth-child(4) input{
	width:55px;
	min-width:55px;
	max-width:55px;
}
#tb1 td:nth-child(7) input{
	width:39px;
	min-width:39px;
	max-width:39px;
}
#tb1 td:nth-child(9) input{
	width:47px;
	min-width:47px;
	max-width:47px;
}
#tb1 td:nth-child(6),td:nth-child(8),td:nth-child(10){
	width:125px;
	min-width:125px;
	max-width:125px;
}
#tb1 td:nth-child(6) input{
	width:120px;
	min-width:120px;
	max-width:120px;
}
#tb1 td:nth-child(8) input{
	width:120px;
	min-width:120px;
	max-width:120px;
}
#tb1 td:nth-child(10) input{
	width:120px;
	min-width:120px;
	max-width:120px;
}
#tb1 input[type=button]{
	font-size: 21px;
}
#tb1 input[type=button]:FOCUS{
	background-color: #00aba9;
}
#tb1 input[type=button]:HOVER{
	background-color: #00aba9;
}

#link{
	height:30px;
	background: #00aba9;
	color: white;
	font-size:15px;
	letter-spacing: 1px;
	text-transform: uppercase;
	width: 150px;
	border: none;
}
#link:HOVER{
	box-shadow: 1px 2px 9px 0px #5E5E5E;
}
#link:FOCUS{
	box-shadow: 1px 2px 9px 0px #5E5E5E;
}
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
input[type="number"] {
    -moz-appearance: textfield;
}

input[type=submit]{
	border:none;
	margin:auto;
	background:  #5E5E5E;
	color: white;
	padding:10px;
	letter-spacing: 1px;
	text-transform: uppercase;
	margin-top: 30px;
	height:45px;
	width: 210px;
	font-size: 19px;
	margin-bottom: 80px;
}
input[type=submit]:HOVER{
	background: #00aba9;
	color: white;
	box-shadow: 1px 2px 9px 0px #5E5E5E;
}
input[type=submit]:FOCUS{
	background: #00aba9;
	color: white;
	box-shadow: 1px 2px 9px 0px #5E5E5E;
}
#name,.name{
text-transform: uppercase;
}
</style>
</head>
<body>
<%
	session.setAttribute("ivn",request.getParameter("ivn"));
%>

<div class="header">
	<div id="title" ><h1 id="titleh1" ><a href="menu.jsp" ><span id="u">U</span>Accounting</a></h1></div>
	<div id="text" ><p id="textp" >THE WORLD'S BEST ACCOUNTING SOFTWARE</p></div>
</div>
<div class="menubar">
	<ul>
		<li><a href="menu.jsp" >HOME</a></li>
		<li id="current" ><a href="sales.jsp" >SALE</a></li>
		<li><a href="purchase.jsp" >PURCHASE</a></li>
		<li><a href="item.jsp" >ITEM MASTER</a></li>
		<li><a href="stock.jsp" >STOCK</a></li>
		<li><a href="supplier.jsp" >SUPPLIERS</a></li>
		<li><a href="customer.jsp" >CUSTOMERS</a></li>
	</ul>
</div>

<datalist id="dl" ></datalist>
<datalist id="dl_item" ></datalist>
<datalist id="dl_srno" ></datalist>

<form action="<%=request.getContextPath()%>/sales" method="post" onsubmit="return sub()">
<div id="form1" >
	<div class="boxName" >Sales Invoice Date </div><input type="date" name="salesInvoiceDate" id="date" autocomplete='off'>
	<div class="boxName" >Sales Invoice Number </div><input type="number" name="salesInvoiceNumber" value="${param.ivn}" id="iv"  autocomplete="off">
	<div class="boxName" >Customer's Name </div><input type="text" name="customerName" list="dl" id="name"  autocomplete="off">
	<div class="boxName" >Customer's GSTNo. </div><input type="text" name="customerGSTNo" id="gst"  autocomplete="off">
</div>
<div id="form2" >
	<div class="boxName" >Customer's Address-1 </div><input type="text" name="customerAddress1" id="add1"   autocomplete="off">
	<div class="boxName" >Customer's Address-2 </div><input type="text" name="customerAddress2" id="add2"   autocomplete="off">
	<div class="boxName" >Area and City </div><input type="text" name="customerCity" id="city"  autocomplete="off">
	<div class="boxName" >State & Code </div><input type="text" name="customerStatecode" value="Gujarat, Code : 24" id="statecode"  autocomplete="off">
</div>

<table id="tb1">
<tr>
	<th>No.</th>
	<th>Name</th>
	<th>Description</th>
	<th>Qty</th>
	<th>Sr. No.</th>
	<th>HSN</th>
	<th>GST</th>
	<th>UnitPrice</th>
	<th>Discount</th>
	<th>Amount</th>
	<th></th>
	<th></th>
</tr>
<tr>
	<td>1</td>
	<td><input type="text" list="dl_item" name="ItemName1" id="item1"  class="name"  autocomplete="off"></td>
	<td><input type="text" name="ItemDescription1" id="disc1"  autocomplete="off"></td>
	<td><input type="number" name="salesItemQty1" id="q1" onkeyup="fn('1')"  autocomplete="off"></td>
	<td><input type="text" name="ItemSrNo11" list="dl_srno" id="srno11"><div id="srdiv1" style="display:none;"  autocomplete="off"></div></td>
	<td><input type="text" name="ItemHSN1" id="hsn1"  autocomplete="off"></td>
	<td><input type="number" name="ItemGST1" id="gst1" value="18"  autocomplete="off" ><input type="text" value="%" readonly></td>
	<td><input type="number" name="salesItemUnitPrice1" id="p1" onkeyup="fn('1')" step="any"   autocomplete="off"></td>
	<td><input type="number" name="salesItemDiscount1" value="0" onblur="fn('1')" id="d1" step="any"  autocomplete="off" ><input type="text" value="%" readonly></td>
	<td><input type="number" name="salesItemTotalAmount1" id="amt1" step="any" readonly></td>
	<td><input type="button" value="+" onclick="fb()" ></td>
	<td><input type="button" value="x" onclick="fnd(this)" ></td>
</tr>
</table>
<div style="text-align: left;margin-left: 20px;" ><input type="button" value="Add Row" onclick="fb()" id="link"></div><br>

<input type="hidden" name="old_ivn" id="old_ivn" value="${param.ivn}">
<input type="hidden" name="ch" value="editEntry">
<input type="hidden" name="n" id="nr" value="1" >
<input type="submit" value="SAVE">


</form>
</body>
</html>