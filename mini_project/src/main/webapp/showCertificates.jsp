<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Birth Certificates</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
            text-align: left;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #ddd;
        }
        th {
            padding-top: 12px;
            padding-bottom: 12px;
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
   <center> <h1>Birth Certificates</h1></center>
    <table>
        <thead>
            <tr>
                <th>Child Name</th>
                <th>Birth Time</th>
                <th>Birth Place</th>
                <th>Gender</th>
                <th>Father Name</th>
                <th>Mother Name</th>
                <th>Hospital Name</th>
                <th>Birth ID</th>
                <th>Doctor ID</th>
                <th>ID Proof</th>
            </tr>
        </thead>
        <tbody>
            <%
                Connection con = null;
                PreparedStatement stmt = null;
                ResultSet rs = null;
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    String url = "jdbc:mysql://localhost:3306/mini_project";
                    con = DriverManager.getConnection(url, "root", "");
                    String sql = "SELECT * FROM births";
                    stmt = con.prepareStatement(sql);
                    rs = stmt.executeQuery();

                    while (rs.next()) {
                        String childName = rs.getString("child_name");
                        String birthTime = rs.getString("birth_time");
                        String birthPlace = rs.getString("birth_place");
                        String gender = rs.getString("gender");
                        String fatherName = rs.getString("father_name");
                        String motherName = rs.getString("mother_name");
                        String hospitalName = rs.getString("hospital_name");
                        String birthId = rs.getString("birthid");
                        String doctorId = rs.getString("doctorid");
                        String idProof = rs.getString("idproof");
            %>
            <tr>
                <td><%= childName %></td>
                <td><%= birthTime %></td>
                <td><%= birthPlace %></td>
                <td><%= gender %></td>
                <td><%= fatherName %></td>
                <td><%= motherName %></td>
                <td><%= hospitalName %></td>
                <td><%= birthId %></td>
                <td><%= doctorId %></td>
                <td><%= idProof %></td>
            </tr>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
            %>
            <tr>
                <td colspan="10">An error occurred while fetching the data.</td>
            </tr>
            <%
                } finally {
                    if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                    if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
                    if (con != null) try { con.close(); } catch (SQLException ignore) {}
                }
            %>
        </tbody>
    </table>
</body>
</html>
