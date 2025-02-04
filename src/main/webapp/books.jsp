<html>
<head>
<title>Sara's quaint and HUGE library</title>
<style>
ul {
  font-family: Arial, sans-serif;
  font-weight: bold;
  margin-top: 10px;
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #181C14;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.container {
            width: 50%;
            max-width: 400px;
            margin: auto;
            margin-top: 5%;
            padding: 20px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        /* Style labels & inputs */
        .container label {
            font-weight: bold;
            margin-top: 10px;
        }

        .container input[type="text"],
        .container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        /* Style the submit button */
        .container input[type="submit"] {
            width: 100%;
            background: #3C3D37;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .container input[type="submit"]:hover {
            background: #697565;
            color: black;
        }

        /* Make it responsive */
        @media (max-width: 500px) {
            .container {
                width: 80%;
                padding: 15px;
            }
        }

</style>
</head>
<body>

<%
    String name=request.getParameter("name");
    String uname=request.getParameter("uname");
    String passwd=request.getParameter("passwd");

    session.setAttribute("name",name);
    session.setAttribute("uname",uname);
    session.setAttribute("passwd",passwd);
%>

<ul>
  <li><a href="#Login">
        <%
            String name1=(String)session.getAttribute("name");
            out.print("Hello, "+name);
        %>
      </a>
  </li>
  <%
       if (session.getAttribute("uname") != null) {
  %>
            <li style="float:right"><a href="logout.jsp">Logout</a></li>
  <%
       }
  %>
</ul>

<form class="container" action="books.jsp" method="POST">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name">

        <label for="uname">Username:</label>
        <input type="text" id="uname" name="uname">

        <label for="passwd">Password:</label>
        <input type="password" id="passwd" name="passwd">

        <input type="submit" value="Login">
    </form>

</body>
</html>