<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ page import = "java.util.List" %>
<%@ page import = "com.javaex.dao.PhoneDao" %> 
<%@ page import = "com.javaex.vo.PersonVo" %>
    
<%

	request.setCharacterEncoding("UTF-8"); //post일때 한글깨지는 문제 해결

	PhoneDao phoneDao = new PhoneDao();

	//파라미터에서 꺼내기
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	System.out.println(name + ", " + hp + ", " + company);
	
	//vo로 묶기
	PersonVo personVo = new PersonVo(name, hp, company);
	
	//저장하기
	phoneDao.personInsert(personVo);
	
	//리스트 가져오기
	//List<PersonVo> personList = phoneDao.getPersonList();
	
	//System.out.println(personList.toString());
	
	//response.sendRedirect("./list.jsp");
	
%>




