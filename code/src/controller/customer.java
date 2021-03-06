package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import dao.customerDAO;
import vo.customerVO;
@WebServlet("/customer")
public class customer extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String ch = (String)request.getParameter("ch");
		switch(ch){
			
		case "customerEntryBefore" : try {
				customerEntryBefore(request,response);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}break;
		case "customerView" :  try {
			customerEntryBefore(request,response);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}break;
		case "newCustomer" : try {
				newCustomer(request,response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}break;
			
			
		case "delete" : try {
				delete(request,response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}break;
			
		case "edit" : try {
			edit(request,response);
		} catch (SQLException e) {
			e.printStackTrace();
		}break;
		
		case "editCustomer" : try {
			editCustomer(request,response);
		} catch (SQLException e) {
			e.printStackTrace();
		}break;

		default : System.out.println("*** DEFAULT CASE ***");
		}
	}

	
	private void editCustomer(HttpServletRequest request, HttpServletResponse response)  throws IOException, SQLException {
	
		customerDAO customerDAO = new customerDAO();
		customerVO customerVO = new customerVO();
		
		int oldCustomerId = Integer.parseInt(request.getParameter("on"));
		
		customerVO.setCustomerName(request.getParameter("customerName"));
		customerVO.setCustomerAddress1(request.getParameter("customerAddress1"));
		customerVO.setCustomerAddress2(request.getParameter("customerAddress2"));
		customerVO.setCustomerCity(request.getParameter("customerCity"));
		customerVO.setCustomerStatecode(request.getParameter("customerStatecode"));
		customerVO.setCustomerMobileNo(request.getParameter("customerMobileNo"));
		customerVO.setCustomerGSTNo(request.getParameter("customerGSTNo"));
		customerVO.setCustomerEmail(request.getParameter("customerEmail"));
	
		customerDAO.updateDirect(customerVO,oldCustomerId);
	
		response.sendRedirect("customer.jsp");
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
		
		int customerId = Integer.parseInt(request.getParameter("n"));
		customerVO s =new customerVO();
		s.setId(customerId);
		customerDAO customerDAO = new customerDAO();
		boolean result = customerDAO.delete(s);
		if(result==true)
			response.sendRedirect("customer.jsp?dr=t");
		else
			response.sendRedirect("customer.jsp?dr=f");
	}
	
	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
		
		int customerId = Integer.parseInt(request.getParameter("n"));
		customerVO s =new customerVO();
		s.setId(customerId);
		customerDAO customerDAO = new customerDAO();
		List<customerVO> l = customerDAO.editDetail(s);
		s = l.get(0);
		HttpSession se = request.getSession();
		se.setAttribute("obj", s);
		response.sendRedirect("editCustomer.jsp");
	}

	
	
	private void newCustomer(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		
		customerDAO customerDAO = new customerDAO();
		customerVO customerVO = new customerVO();
		
		customerVO.setCustomerName(request.getParameter("customerName"));
		customerVO.setCustomerAddress1(request.getParameter("customerAddress1"));
		customerVO.setCustomerAddress2(request.getParameter("customerAddress2"));
		customerVO.setCustomerCity(request.getParameter("customerCity"));
		customerVO.setCustomerStatecode(request.getParameter("customerStatecode"));
		customerVO.setCustomerMobileNo(request.getParameter("customerMobileNo"));
		customerVO.setCustomerGSTNo(request.getParameter("customerGSTNo"));
		customerVO.setCustomerEmail(request.getParameter("customerEmail"));
		customerDAO.insertDirect(customerVO);
		
		response.sendRedirect("customer.jsp");
	}
	
	private void customerEntryBefore(HttpServletRequest request, HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException {
		
		customerDAO customerDAO = new customerDAO();
		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		out.println(gson.toJson(customerDAO.customerEntryBefore()));
		out.flush();
		out.close();
	}

}
