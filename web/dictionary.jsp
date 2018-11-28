<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Pham Dat
  Date: 11/28/2018
  Time: 10:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%
    Map<String,String> dictionary = new HashMap();
    dictionary.put("hello", "xin chao");
    dictionary.put("book", "sach");
    dictionary.put("money", "tien");
    dictionary.put("hand", "tay");
    dictionary.put("deity", "than");
    String dic = request.getParameter("txt-search");
    String res = dictionary.get(dic);
    if (res != null){
        out.println(res);
    } else {
        out.println("not found!");
    }
%>
</body>
</html>
