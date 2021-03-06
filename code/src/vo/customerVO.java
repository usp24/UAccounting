package vo;

public class customerVO {

	private int id;
	private String customerName;
	private String customerAddress1;
	private String customerAddress2;
	private String customerCity ;
	private String customerStatecode;
	private String customerGSTNo;
	private String customerSalesInvoiceNo;
	private String customerMobileNo;
	private String customerEmail;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCustomerName() {
		return customerName.toUpperCase();
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName.toUpperCase();
	}
	public String getCustomerAddress1() {
		return customerAddress1;
	}
	public void setCustomerAddress1(String customerAddress1) {
		this.customerAddress1 = customerAddress1;
	}
	public String getCustomerAddress2() {
		return customerAddress2;
	}
	public void setCustomerAddress2(String customerAddress2) {
		this.customerAddress2 = customerAddress2;
	}
	public String getCustomerCity() {
		return customerCity;
	}
	public void setCustomerCity(String customerCity) {
		this.customerCity = customerCity;
	}
	public String getCustomerStatecode() {
		return customerStatecode;
	}
	public void setCustomerStatecode(String customerStatecode) {
		this.customerStatecode = customerStatecode;
	}
	public String getCustomerGSTNo() {
		return customerGSTNo;
	}
	public void setCustomerGSTNo(String customerGSTNo) {
		this.customerGSTNo = customerGSTNo;
	}
	public String getCustomerSalesInvoiceNo() {
		return customerSalesInvoiceNo;
	}
	public void setCustomerSalesInvoiceNo(String customerSalesInvoiceNo) {
		this.customerSalesInvoiceNo = customerSalesInvoiceNo;
	}
	public String getCustomerMobileNo() {
		return customerMobileNo;
	}
	public void setCustomerMobileNo(String customerMobileNo) {
		this.customerMobileNo = customerMobileNo;
	}
	public String getCustomerEmail() {
		return customerEmail;
	}
	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}
}
