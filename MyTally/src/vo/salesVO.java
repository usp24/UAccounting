package vo;

import java.text.DecimalFormat;

public class salesVO {

	private int id;
	private int salesInvoiceNo;
	private String salesInvoiceDate;
	private int salesNumOfItems;
	private double salesTotalAmount;
	private double salesGST9;
	private double salesGST14;
	private double salesTotalAmountGST;
	private long salesTotalRoundOffAmount;
	
	private double salesItemDiscount;
	private double salesItemTotalAmount;
	
	private Double set(double d){
		DecimalFormat df = new DecimalFormat();
		df.setMinimumFractionDigits(2);
		df.setMaximumFractionDigits(2);
		return new Double(df.format(d));
	}
	
	public double getSalesItemDiscount() {
		return salesItemDiscount;
	}
	public void setSalesItemDiscount(double salesItemDiscount) {
		this.salesItemDiscount = salesItemDiscount;
	}
	public double getSalesItemTotalAmount() {
		return set(salesItemTotalAmount);
	}
	public void setSalesItemTotalAmount(double salesItemTotalAmount) {
		this.salesItemTotalAmount = set(salesItemTotalAmount);
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSalesInvoiceNo() {
		return salesInvoiceNo;
	}
	public void setSalesInvoiceNo(int salesInvoiceNo) {
		this.salesInvoiceNo = salesInvoiceNo;
	}
	public String getSalesInvoiceDate() {
		return salesInvoiceDate;
	}
	public void setSalesInvoiceDate(String salesInvoiceDate) {
		this.salesInvoiceDate = salesInvoiceDate;
	}
	public int getSalesNumOfItems() {
		return salesNumOfItems;
	}
	public void setSalesNumOfItems(int salesNumOfItems) {
		this.salesNumOfItems = salesNumOfItems;
	}
	public double getSalesTotalAmount() {
		return set(salesTotalAmount);
	}
	public void setSalesTotalAmount(double salesTotalAmount) {
		this.salesTotalAmount = set(salesTotalAmount);
	}
	public double getSalesGST9() {
		return set(salesGST9);
	}
	public void setSalesGST9(double salesGST9) {
		this.salesGST9 = set(salesGST9);
	}
	public double getSalesGST14() {
		return set(salesGST14);
	}
	public void setSalesGST14(double salesGST14) {
		this.salesGST14 = set(salesGST14);
	}
	public double getSalesTotalAmountGST() {
		return set(salesTotalAmountGST);
	}
	public void setSalesTotalAmountGST(double salesTotalAmountGST) {
		this.salesTotalAmountGST = set(salesTotalAmountGST);
	}
	public long getSalesTotalRoundOffAmount() {
		return salesTotalRoundOffAmount;
	}
	public void setSalesTotalRoundOffAmount(long salesTotalRoundOffAmount) {
		this.salesTotalRoundOffAmount = salesTotalRoundOffAmount;
	}
}
