<%@ page import="model.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Phong Vu
  Date: 11/9/2021
  Time: 9:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>ClientManager</title>
    <style>
        table tr td {
            border: 1px solid black;
            border-collapse: collapse;
            background-color: #fbf9f9;
            width: 300px;
            height: 100px;
            margin-left: auto;
        }
        img{
            width: 100px;
            height: 50px;
        }
    </style>
</head>
<body>

<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer(1, "Cuong dz", "Thai Nguyen","https://scontent.fhan3-2.fna.fbcdn.net/v/t39.30808-6/240513664_2869022260017019_3142086659281431538_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=hfp-UDVD2psAX_hhclf&_nc_ht=scontent.fhan3-2.fna&oh=e05ee7d542684c2fcaa766c1609845b0&oe=618E2E86"));
    customers.add(new Customer(2, "A duoi", "Nam Dinh","https://scontent.fhan3-3.fna.fbcdn.net/v/t1.6435-9/190719551_4471238546354976_2233730567045604317_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=WZE4AAr151sAX-YROn7&_nc_ht=scontent.fhan3-3.fna&oh=5606616fbb0c04147ab5ade7bcc32e84&oe=61ADC7AD"));
    customers.add(new Customer(3, "A long", "Ha Noi","https://scontent.fhan4-3.fna.fbcdn.net/v/t1.18169-9/18920491_1948388318710849_3179740011827919725_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=ThPQibpoD7oAX9DfP2s&tn=DiG6r9MpeiF0nqDv&_nc_ht=scontent.fhan4-3.fna&oh=c612185892a0a1fc13db2d1aec8d0df0&oe=61AEEB79"));
    request.setAttribute("ds", customers);
%>
<table>
    <tr>
        <th colspan="4" style="font-size: 23px"><c:out value="Danh sach khach hang">Danh sach khach hang</c:out></th>
    </tr>
    <tr>

    <th> <c:out value="ID">ID</c:out></th>
    <th> <c:out value="Name">Name</c:out></th>
    <th> <c:out value="Address">Address</c:out></th>
    </tr>
    <c:forEach items="${ds}" var="cus">
    <tr>
        <td>${cus.id}
        </td>
        <td>${cus.name}
        </td>
        <td>${cus.add}</td>
        <td><img src="${cus.img}" alt="" style="width: 100px"></td>
    </tr>
    </c:forEach>

<%--    <tr><img src="https://scontent.fhan3-2.fna.fbcdn.net/v/t39.30808-6/240513664_2869022260017019_3142086659281431538_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=hfp-UDVD2psAX_hhclf&_nc_ht=scontent.fhan3-2.fna&oh=e05ee7d542684c2fcaa766c1609845b0&oe=618E2E86" alt=""></tr>--%>
<%--    <tr><img src="https://scontent.fhan3-3.fna.fbcdn.net/v/t1.6435-9/190719551_4471238546354976_2233730567045604317_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=WZE4AAr151sAX-YROn7&_nc_ht=scontent.fhan3-3.fna&oh=5606616fbb0c04147ab5ade7bcc32e84&oe=61ADC7AD" alt=""></tr>--%>
<%--    <tr><img src="https://scontent.fhan4-3.fna.fbcdn.net/v/t1.18169-9/18920491_1948388318710849_3179740011827919725_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=ThPQibpoD7oAX9DfP2s&tn=DiG6r9MpeiF0nqDv&_nc_ht=scontent.fhan4-3.fna&oh=c612185892a0a1fc13db2d1aec8d0df0&oe=61AEEB79" alt=""></tr>--%>

</table>


</body>
</html>
