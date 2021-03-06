<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="my.NumberToWord" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Print</title>
<link rel="icon" type="image/png" href="img/fi1.ico">
<script type="text/javascript" >
window.onafterprint = function() {
	document.getElementById("l1").style.display='';
	document.getElementById("l2").style.display='';
	document.getElementById("prto").style.display='';
	document.getElementById("body").style.marginLeft='340px';
	document.body.style.backgroundColor = "#edf8f896";
};
function p(){
	document.getElementById("body").style.marginLeft='0px';
	document.getElementById("l1").style.display='none';
	document.getElementById("l2").style.display='none';
	document.getElementById("prto").style.display='none';
	document.body.style.backgroundColor = "white";
	window.print();
}
</script>
<style type="text/css" >
@CHARSET "ISO-8859-1";

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
			h1{
				color:#5E5E5E;
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

	#body{
		margin: 0px;
    	padding :0px;
    	text-align:center;
		font-family:Arial,TimesNewRoman;
		font-size : 12.5px;
		width:210mm;
		max-width:210mm;
		min-width:210mm;
	}
	#container{
		margin:auto;
		margin-top:4mm;
		height:290mm;
		max-height: 290mm;
		min-height: 290mm;
		width: 195mm;
		max-width:195mm;
		min-width:195mm;
		text-align:center;
		border-collapse: collapse;
		overflow: hidden;
		position: relative;
	}
	
	
	
	
	.header1{
		font-weight: bold;
	}
	.header1 #copy{
		font-size : 13px;
		margin-top : 5px;
		padding-left : 5px;
		float: left;
	}
	.header1 #head{
		margin-bottom:5px;
		font-size : 19px;
		text-align : center;
		padding-right : 100px;
	}
	
	
	
	
	
	#header2{
		border:1px solid black;
		overflow:hidden;
		height:41mm;
		max-height: 41mm;
		min-height: 41mm;
		width: 195mm;
		max-width:195mm;
		min-width:195mm;
		position: absolute;
	}
	.header21{
		margin:0px;
		height:41mm;
		max-height: 41mm;
		min-height: 41mm;
		width: 100mm;
		max-width:100mm;
		min-width:100mm;
		float:left;
		text-align:left;
		overflow:hidden;
	}
	.header21 #buyer{
		width:95%;
		height:29mm;
		max-height: 29mm;
		min-height: 29mm;
		padding-top:4px;
		padding-left:4px;
		padding-bottom: 4px;
		float: left;
		white-space: -moz-pre-wrap !important;
     	white-space: -pre-wrap;      
     	white-space: -o-pre-wrap;    
     	white-space: pre-wrap;      
     	word-wrap: break-word;       
     	word-break: break-all;
     	white-space: normal
	}
	.header21 #buyer #name{
		font-size:15px;
		text-transform: capitalize;
	}
	.header21 #buyer #gst{
		padding-top:3px;
		font-size: 13px;
	}
	.header21 #invoiceInfo{
		width:100%;
		height:12mm;
		max-height: 12mm;
		min-height: 12mm;
		font-weight: bold;
		float:left;
		border-top: 1px solid black;
		padding-left:4px;
		padding-top: 4px;
		padding-bottom: 4px;
	}
	.header22{
		border-left:1px solid black;
		border-right:1px solid black;
		float: left;
		height:41mm;
		max-height: 41mm;
		min-height: 41mm;
		width: calc(95mm - 3px);
		max-width:calc(95mm - 3px);
		min-width:calc(95mm - 3px);
	}
	.header22 #logo{
		width:290px;
		height:70px;
		margin-top:7px;
		margin-bottom:5px;
	}
	.header22 .salerInfo #gst {
		margin-left:65px;
		font-size:13px;
	}
	.header22 .salerInfo #add {
		text-align:left;
		padding-bottom:6px;
		margin-left:125px;
	}
	
	
	
	
	#tb1{
		margin:0px;
		padding:0px;
		position:absolute;
		top:184px;
		height:195mm;
		max-height: 195mm;
		min-height: 195mm;
		width: 195mm;
		max-width:195mm;
		min-width:195mm;
		overflow: hidden;
	}
	.item{
		margin:0px;
		padding:0px;
		width: 195mm;
		max-width:195mm;
		min-width:195mm;
		border-left: 1px solid black;
		overflow: hidden;
	}
	.item #itemHeader th{
		padding-top:4px;
		padding-bottom:5px;
		border:1px solid black;
		border-top:none;
		border-left:none;
	}
	.item #itemHeader #srno{
		width:7mm;
		max-width:7mm ;
		min-width:7mm;
	}
	.item #itemHeader #goods{
		width:82mm;
		max-width:82mm ;
		min-width:82mm;
	}
	.item #itemHeader #hsn{
		width:17mm;
		max-width:17mm ;
		min-width:17mm;
	}
	.item #itemHeader #qy{
		width:9mm;
		max-width:9mm ;
		min-width:9mm;
	}
	.item #itemHeader #gt{
		width:9mm;
		max-width:9mm ;
		min-width:9mm;
	}
	.item #itemHeader #dis{
		width:10mm;
		max-width:10mm ;
		min-width:10mm;
	} 
	.item #itemHeader #price{
		width:20mm;
		max-width:20mm ;
		min-width:20mm;
	}
	.item #itemHeader #totamt{
		border-right: none;
		width:29mm;
		max-width:29mm ;
		min-width:29mm;
	}
	
	
	
	.item tr td{
		border-right:1px solid black;
	
	}
	.item #data #tdsr{
		vertical-align: baseline;
		padding-top:7px;
	}
	.item #data #srno{
		padding:0px;
		vertical-align: baseline;
		text-align:center;
		width:7mm;
		max-width:7mm ;
		min-width:7mm;
		white-space: -moz-pre-wrap !important;
     	white-space: -pre-wrap;      
     	white-space: -o-pre-wrap;    
     	white-space: pre-wrap;      
     	word-wrap: break-word;       
     	word-break: break-all;
     	white-space: normal;
	}
	.item #data #goods{
		text-align: left;
		padding-left:3px;
		padding-right:3px;
		width:82mm;
		max-width:82mm ;
		min-width:82mm;
		white-space: -moz-pre-wrap !important;
     	white-space: -pre-wrap;      
     	white-space: -o-pre-wrap;    
     	white-space: pre-wrap;      
     	word-wrap: break-word;       
     	word-break: break-all;
     	white-space: normal;
	}	
	.item #data #goods #name{
		text-transform: capitalize;
		padding-top:5px;
		font-weight: bold;
	}
	.item #data #goods #dn{
		padding-top:0px;
		margin-left:4px;
	}
	.item #data #hsn{
		text-align: left;
		padding-left:3px;
		width:17mm;
		max-width:17mm ;
		min-width:17mm;
		white-space: -moz-pre-wrap !important;
     	white-space: -pre-wrap;      
     	white-space: -o-pre-wrap;    
     	white-space: pre-wrap;      
     	word-wrap: break-word;       
     	word-break: break-all;
     	white-space: normal;
	}
	.item #data #qy{
		text-align:center;
		width:9mm;
		max-width:9mm ;
		min-width:9mm;
		white-space: -moz-pre-wrap !important;
     	white-space: -pre-wrap;      
     	white-space: -o-pre-wrap;    
     	white-space: pre-wrap;      
     	word-wrap: break-word;       
     	word-break: break-all;
     	white-space: normal;
	}
	.item #data #gt{
		text-align:center;
		width:9mm;
		max-width:9mm ;
		min-width:9mm;
		white-space: -moz-pre-wrap !important;
     	white-space: -pre-wrap;      
     	white-space: -o-pre-wrap;    
     	white-space: pre-wrap;      
     	word-wrap: break-word;       
     	word-break: break-all;
     	white-space: normal;
	} 
	.item #data #price{
		padding-right:3px;
		text-align:right;
		width:20mm;
		max-width:20mm ;
		min-width:20mm;
		white-space: -moz-pre-wrap !important;
     	white-space: -pre-wrap;      
     	white-space: -o-pre-wrap;    
     	white-space: pre-wrap;      
     	word-wrap: break-word;       
     	word-break: break-all;
     	white-space: normal;
	}
	.item #data #totamt{
		padding-right:3px;
		text-align:right;
		border-right:none;
		width:29mm;
		max-width:29mm ;
		min-width:29mm;
		white-space: -moz-pre-wrap !important;
     	white-space: -pre-wrap;      
     	white-space: -o-pre-wrap;    
     	white-space: pre-wrap;      
     	word-wrap: break-word;       
     	word-break: break-all;
     	white-space: normal;
	}
	.item #data #dis{
		text-align:center;
		width:10mm;
		max-width:10mm ;
		min-width:10mm;
		white-space: -moz-pre-wrap !important;
     	white-space: -pre-wrap;      
     	white-space: -o-pre-wrap;    
     	white-space: pre-wrap;      
     	word-wrap: break-word;       
     	word-break: break-all;
     	white-space: normal;
	}
	
	.item #subtotalrow #subtotal{
		border-top:1px solid black;
		padding-top:6px;
		padding-bottom:7px;
		font-size: 15px;
		padding-right:3px;
		text-align:right;
		width:25mm;
		max-width:25mm ;
		min-width:25mm;
		white-space: -moz-pre-wrap !important;
     	white-space: -pre-wrap;      
     	white-space: -o-pre-wrap;    
     	white-space: pre-wrap;      
     	word-wrap: break-word;       
     	word-break: break-all;
     	white-space: normal;
	}
	
	.item #roundoff,#roundoffamt{
		padding-bottom: 10px;
	}
	.item .right{
		text-align: right;
	}
	.item #gst,#gstamt,#roundoff,#roundoffamt{
		font-weight: bold;
		padding-right:5px;
		padding-top:3px;
	}
	#totalamt2{
		border-right:1px solid black;
	}
	
	
	
	
	#size{
		position:absolute;
		bottom:174px;
		height:8mm;
		max-height: 8mm;
		min-height: 8mm;
		width:195mm;
		max-width:195mm ;
		min-width:195mm;
		overflow: hidden;
		margin:0px;
	}
	.item2{
		table-layout:fixed;
		height:8mm;
		max-height: 8mm;
		min-height: 8mm;
		width:195mm;
		max-width:195mm;
		min-width:195mm;
		border-top:1px solid black;
		border-bottom:1px solid black;
		font-size: 16px;
		font-weight: bold;
		text-align: right;
	}
	.item2 #lastrow #r1{
		padding-right:4px;
		width:7mm;
		max-width:7mm ;
		min-width:7mm;
	}
	.item2 #lastrow #lastrowtot{
		text-align : right;
		padding-right:15px;
		padding-top:2px;
		width:82mm;
		max-width:82mm ;
		min-width:82mm;
	}
	.item2 #lastrow #r3{
		width:17mm;
		max-width:17mm ;
		min-width:17mm;
	}
	.item2 #lastrow #r4{
		width:9mm;
		max-width:9mm ;
		min-width:9mm;
	}
	.item2 #lastrow #lastrowqty{
		text-align:center;
		padding-top : 2px;
		padding-right:3px;
		width:12mm;
		max-width:12mm ;
		min-width:12mm;
	}
	.item2 #lastrow #r6{
		width:10mm;
		max-width:10mm ;
		min-width:10mm;
	}
	.item2 #lastrow #r7{
		width:20mm;
		max-width:20mm ;
		min-width:20mm;
	}
	.item2 #lastrow #lastrowamt{
		padding-right:4px;
		padding-top : 2px;
		width:29mm;
		max-width:29mm ;
		min-width:29mm;
	}
	
	
	
	#wordrow{
		position:absolute;
		bottom:100px;
		height:20mm;
		max-height: 20mm;
		min-height: 20mm;
		width: calc(195mm - 2px);
		max-width:calc(195mm - 2px);
		min-width:calc(195mm - 2px);
		overflow: hidden;
		border-right:1px solid black;
		border-left:1px solid black;
	}
	
	#wordhead{
		text-align: left;
		padding-top:8px;
		padding-left: 5px;
	}
	#word{
		font-weight: bold;
		text-align: left;
		padding-top:5px;
		padding-bottom:5px;
		padding-left: 5px;
	}
	
	
	
	.footer1{
		position:absolute;
		bottom:30px;
		height:20mm;
		max-height: 20mm;
		min-height: 20mm;
		width: calc(195mm - 2px);
		max-width:calc(195mm - 2px);
		min-width:calc(195mm - 2px);
		overflow: hidden;
		border-right:1px solid black;
		border-left:1px solid black;
		border-bottom:1px solid black;
	}
	#tnc{
		text-align: left;
		padding-left: 5px;
		float: left;
	}
	#tnchead{
		font-size: 12px;
		font-weight: bold;
	}
	#tnctext{
		font-size:10px;
	}
	#sign{
		float:right;
		text-align: right;
	}
	#signline1{
		padding-right:24px;
		padding-top:3px;
		padding-bottom:3px;
	}
	#signline2{
		padding-right: 5px;
		padding-top:3px;
		padding-bottom:3px;
	}
	
	
	
	
	
	#footertd{
		position: absolute;
		bottom: 0px;
		width:100%;
		text-align: center;
	}
	#footertd #line1{
		font-size:11px;;
	}
	#footertd #line2{
		font-size:10px;
	}
</style>
</head>
<body>

<div class="header" id="l1" >
	<div id="title" ><h1 id="titleh1" ><a href="menu.jsp" ><span id="u">U</span>Accounting</a></h1></div>
	<div id="text" ><p id="textp" >THE WORLD'S BEST ACCOUNTING SOFTWARE</p></div>
</div>
<div class="menubar" id="l2" >
	<ul>
		<li><a href="menu.jsp" >HOME</a></li>
		<li><a href="sales.jsp" >SALE</a></li>
		<li><a href="purchase.jsp" >PURCHASE</a></li>
		<li><a href="item.jsp" >ITEM MASTER</a></li>
		<li><a href="stock.jsp" >STOCK</a></li>
		<li><a href="supplier.jsp" >SUPPLIERS</a></li>
		<li><a href="customer.jsp" >CUSTOMERS</a></li>
	</ul>
</div>

<button onclick="p()" id="prto" style="margin-left:550px;margin-top:20px;height:28px;width:105px;background-color:#00aba9;font-size: 17px;color:white;border-radius:5px;">PRINT</button>

<div id="body" style="background-color: white;margin-left:340px;" >
<c:set var="nul" value="" ></c:set>
<c:forEach var="u" items="${sessionScope.user}" >
<div id="container"><center>
<div class="header1">
	<div id="copy" style="visibility: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
	<div id="head">PURCHASE INVOICE</div>
</div>

<div id="header2">
	<div class="header21">
		<div id="buyer">
			<b>Supplier :</b><br>
			<c:forEach var="s" items="${sessionScope.supplier}" >
			<div id="name"><b>${s.supplierName}</b></div>
			<div>
				<c:if test="${ s.supplierAddress1 ne nul }">${s.supplierAddress1}<br></c:if>
				<c:if test="${ s.supplierAddress2 ne nul }">${s.supplierAddress2}<br></c:if>
				<c:if test="${ s.supplierCity ne nul }">${s.supplierCity}<br></c:if>
				<c:if test="${ s.supplierStatecode ne nul }">${s.supplierStatecode}</c:if>
			</div>
			<div id="gst" ><b>GSTIN : ${s.supplierGSTNo}</b></div>
			</c:forEach>
		</div>
		<div id="invoiceInfo">
			<c:forEach var="b" items="${sessionScope.bill}" >
				<c:set var="IGSTvar" value="${b.purchaseIGST}" scope="page"></c:set>
				<c:set var="narration" value="${b.narration}" ></c:set>
			<div>Invoice No. : ${b.purchaseInvoiceNo}</div>
			<div>Invoice Date : ${b.purchaseInvoiceDate} </div>
			</c:forEach>
		</div>
	</div>
		
	<div class="header22">
		<div></div>
		<div class="salerInfo" style="text-align: left;padding:3px;" >
			<b>Buyer : </b><br><br>
			<div><b>${u.businessName}</b></div>
			<div>${u.add1}<br>${u.add2 }<br><!--  ${u.add3}<br>${u.add4}--></div>
			<div><b>GSTIN : ${u.GSTNo }</div><br>
			<div>MobileNo : ${u.mobileNo}</div>
			<div>Email : ${u.email}</div></b>
		</div>
	</div>
</div>

<div id="tb1">
<table class="item" cellspacing="0">

	<tr id="itemHeader">
		<th><div id="srno" >Sr No.</div></th>
		<th><div id="goods">Description of Goods</div></th>
		<th><div id="hsn">HSN/SAC</div></th>
		<th><div id="gt">GST Rate</div></th>
		<th><div id="qy">Qty.</div></th>
		<th><div id="price" >Unit Price</div></th>
		<th><div id="dis" >Disc. % </div></th>
		<th><div id="totamt" >Amount</div></th>
	</tr>
	
	<% int z=1; %>			
	<c:forEach var="i" items="${sessionScope.item}">
	<tr id="data" >
		<td  id="tdsr" ><div id="srno"><%=z%></div></td>
		<td><div id="goods">
			<div id="name">${i.itemName}<br></div>
			<div id="dn">
				<c:if test="${ i.itemDescription ne nul }">${i.itemDescription}<br></c:if>
				<c:set var="srn" value="${i.itemSrNo}" ></c:set>
				<i><%
					String sr[] = ((String)pageContext.getAttribute("srn")).split("\\*");
					for(int i=0;i<sr.length;i++){
						if(!(sr[i].equals(""))){
							out.print(" "+sr[i]);
							if(i!=(sr.length-1))
								out.print(",");
						}
					}
				%></i>
			</div>
		</div></td>
		<td><div id="hsn">${i.itemHSN}</div></td>
		<td><div id="gt" >${i.itemGST}%</div></td>
		<td><div id="qy">${i.itemQty}</div></td>
		<td><div id="price">
			<c:set var="p" value="${i.itemPurchasePrice}"></c:set>
			<% out.print(String.format(("%,.2f"),(Double)pageContext.getAttribute("p"))); %>
		</div></td>
		<td><div id="dis">
			<c:if test="${ i.itemSalesPrice ne 0 }">
				<c:set var="p" value="${i.itemSalesPrice}"></c:set>
				<% out.print(String.format(("%,.2f"),(Double)pageContext.getAttribute("p"))); %>
			</c:if>
		</div></td>
		<td><div id="totamt" >
			<c:set var="p" value="${i.extrad}"></c:set>
			<% out.print(String.format(("%,.2f"),(Double)pageContext.getAttribute("p"))); %>
		</div></td>
	</tr><%z++;%>
	<c:set var="tq" value="${i.extra}" ></c:set>
	</c:forEach>	
	
	<c:forEach var="b2" items="${sessionScope.bill}" >
	<tr class="right" id="subtotalrow">
		<td><div id="srno" ></div></td>
		<td><div id="goods"></div></td>
		<td><div id="hsn"></div></td>
		<td><div id="gt"></div></td>
		<td><div id="qy"></div></td>
		<td><div id="price" ></div></td>
		<td><div id="dis" ></div></td>
		<td id="subtotal">
			<c:set var="p" value="${b2.purchaseTotalAmount}"></c:set>
			<% out.print(String.format(("%,.2f"),(Double)pageContext.getAttribute("p"))); %>
		</td>
	</tr>
	
	
	<c:if test="${ b2.purchaseGST9 ne 0 }">
	<tr class="right" >
		<td></td>
		<td id="gst">
			<c:if test="${ IGSTvar eq 'YES' }">IGST 18%</c:if>
			<c:if test="${ IGSTvar eq 'NO' }">SGST 9%</c:if>
		</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td id="gstamt">
			<c:if test="${ IGSTvar eq 'YES' }">
				<c:set var="p" value="${2 * b2.purchaseGST9}"></c:set>
				<% out.print(String.format(("%,.2f"),(Double)pageContext.getAttribute("p"))); %>
			</c:if>
			<c:if test="${ IGSTvar eq 'NO' }">
				<c:set var="p" value="${b2.purchaseGST9}"></c:set>
				<% out.print(String.format(("%,.2f"),(Double)pageContext.getAttribute("p"))); %>
			</c:if>
		</td>
	</tr>
	
	<c:if test="${ IGSTvar eq 'NO' }">
	<tr class="right" >
		<td></td>
		<td id="gst">CGST 9%</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td id="gstamt">
			<c:set var="p" value="${b2.purchaseGST9}"></c:set>
			<% out.print(String.format(("%,.2f"),(Double)pageContext.getAttribute("p"))); %>
		</td>
	</tr>				
	</c:if>
	</c:if>
				
	<c:if test="${ b2.purchaseGST14 ne 0 }">
	<tr class="right" >
		<td></td>
		<td  id="gst">
			<c:if test="${ IGSTvar eq 'YES' }">IGST 28%</c:if>
			<c:if test="${ IGSTvar eq 'NO' }">SGST 14%</c:if>
		</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td id="gstamt" >
			<c:if test="${ IGSTvar eq 'YES' }">
				<c:set var="p" value="${2 * b2.purchaseGST14}"></c:set>
				<% out.print(String.format(("%,.2f"),(Double)pageContext.getAttribute("p"))); %>
			</c:if>
			<c:if test="${ IGSTvar eq 'NO' }">
				<c:set var="p" value="${b2.purchaseGST14}"></c:set>
				<% out.print(String.format(("%,.2f"),(Double)pageContext.getAttribute("p"))); %>
			</c:if>
		</td>
	</tr>
	
	<c:if test="${ IGSTvar eq 'NO' }">
	<tr class="right" >
		<td></td>
		<td id="gst" >CGST 14%</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td id="gstamt" >
			<c:set var="p" value="${b2.purchaseGST14}"></c:set>
			<% out.print(String.format(("%,.2f"),(Double)pageContext.getAttribute("p"))); %>
		</td>
	</tr>				
	</c:if>
	</c:if>
	
	<tr class="right" >
		<td></td>
		<td id="roundoff" >Rounding Off</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td id="roundoffamt" >
			<c:set var="x" value="${b2.purchaseTotalRoundOffAmount - b2.purchaseTotalAmountGST }"></c:set>
			<% Double num = (Double)pageContext.getAttribute("x");
				String s = String.format(("%,.2f"),num);
				if(num>=0)
					{%>+(<%= s %>)
				<%}else{ 
					%>(<%= s %>)<%} %>
		</td>
	</tr>
	
	<%for(int i=0;i<200;i++){ %>
	<tr id="data"> 
		<td id="srno"></td>
		<td id="goods"></td>
		<td id="hsn"></td>
		<td id="gst" ></td>
		<td id="qy" ></td>
		<td id="price" ></td>
		<td id="dis" ></td>
		<td id="totamt2"></td>
	</tr>
	<%} %>
	<c:set var="p1" value="${b2.purchaseTotalRoundOffAmount}" ></c:set>
	</c:forEach>
</table>
</div>

<div id="size">
<table class="item2" cellspacing="0">
	<tr id="lastrow" >
		<td id="r1"></td>
		<td id="lastrowtot">Total</td>
		<td id="r3"></td>
		<td id="r4"></td>
		<td id="lastrowqty" >${tq}</td>
		<td id="r6"></td>
		<td id="r7"></td>
		<td id="lastrowamt" >
		&#8377; <%	
			Long aa = new Long((Long)pageContext.getAttribute("p1"));
			out.print(String.format(("%,.2f"),Double.parseDouble(aa.toString())));
		%>
		</td>
	</tr>
</table>
</div>


<div id="wordrow" >
	<div id="wordhead" >Amount Chargeable(in words)</div>
	<div id="word" >INR 
		<%
			NumberToWord yy = new NumberToWord();
			String s = yy.call(aa.toString());
		%>
		<%=s %>
	</div>
	<div style="text-align: left;padding-left: 5px;" ><b><u>Narration</u> : </b></div>
</div>

<div class="footer1" >
	<textarea rows="4" cols="99" style="border:0px;resize: none;overflow: hidden;" readonly wrap="hard">${narration}</textarea> 
</div>

<div id="footertd">
	<div id="line1" >This is a Computer Generated Invoice</div>
</div>
</center>
</div>
</c:forEach>
</div>

</body>
</html>