<%@page import="com.bit.frame.controller.DeptVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>값의 전달</h1>
	<%
	java.util.Date msg1 = new java.util.Date();

	/* pageContext.setAttribute("msg2", msg1);
	request.setAttribute("msg3", msg1);
	session.setAttribute("msg4", msg1);
	application.setAttribute("msg5", msg1); */

	// scope
	// page > request > session > application

	String[] arr1 = { "item1", "item2", "item3" };
	java.util.List<String> arr2 = new java.util.ArrayList<String>();
	arr2.add("list1");
	arr2.add("list2");
	arr2.add("list3");

	java.util.Set<String> arr3 = new java.util.HashSet<String>();
	arr3.add("set1");
	arr3.add("set2");
	arr3.add("set3");

	java.util.Map<String,String> map = new java.util.HashMap<String,String>();
	map.put("key1","val1");
	map.put("key2","val2");
	map.put("key3","val3");
	
	pageContext.setAttribute("msg2", arr2);
	request.setAttribute("msg2", arr3);
	session.setAttribute("msg2", arr2);
	application.setAttribute("msg2", arr1);
	
	pageContext.setAttribute("map", map);
	
	DeptVO bean = new DeptVO();
	bean.setDeptno(1111);
	bean.setDname("test");
	bean.setLoc("Busan");
	pageContext.setAttribute("bean", bean);
	%>
	<%-- <p>msg1=<%=msg1%></p>
	<p>msg1=${msg1 }</p> --%>
	<hr>
	<p>
		msg2=<%=pageContext.getAttribute("msg2")%></p>
	<p>msg2=${pageScope.msg2 }</p>
	<p>msg2=${pageScope.msg2.get(0) }</p>
	<p>msg2=${pageScope.msg2.get(1) }</p>
	<p>msg2=${pageScope.msg2.get(2) }</p>
	<p>scope중 가장 우선순위</p>
	<p>page > request > session > application</p>
	<hr>
	<p>
		msg3=<%=request.getAttribute("msg3")%></p>
	<p>msg3=${requestScope.msg2 }</p>
	<hr>
	<p>
		msg4=<%=session.getAttribute("msg4")%></p>
	<p>msg4=${sessionScope.msg2 }</p>
	<p>msg4=${sessionScope.msg2[0] }</p>
	<p>msg4=${sessionScope.msg2[1] }</p>
	<p>msg4=${sessionScope.msg2[2] }</p>
	<p>msg4=${sessionScope.msg2[3] }</p>
	<hr>
	<p>
		msg5=<%=application.getAttribute("msg5")%></p>
	<p>msg5=${applicationScope.msg2 }</p>
	<p>msg5=${applicationScope.msg2[0] }</p>
	<p>msg5=${applicationScope.msg2[1] }</p>
	<p>msg5=${applicationScope.msg2[2] }</p>
	<p>msg5=${applicationScope.msg2[3] }</p>
	<hr>
	<p>map=${map }</p>
	<p>map=${map.get("key1") }</p>
	<p>map=${map.get("key2") }</p>
	<p>map=${map.get("key3") }</p>	
	<hr>
	<p>map=${map }</p>
	<p>map=${map.key1 }</p>
	<p>map=${map.key2 }</p>
	<p>map=${map.key3 }</p>
	<hr>
	<p>bean=${bean }</p>
	<p>bean=${bean.deptno }</p>
	<p>bean=${bean.dname }</p>
	<p>bean=${bean.loc }</p>
</body>
</html>