<%-- 
    Document   : Validar
    Created on : 15-jun-2018, 23:59:51
    Author     : Markho
--%>


<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <body>
        <%
        String usuario = request.getParameter ("user");
        String contraseña = request.getParameter ("pass");
        String usuariosql="";
        String contraseñasql="";
        
        if (usuario.equals("")&&(contraseña.equals(""))){
            RequestDispatcher rd = request.getRequestDispatcher("autentificacion.jsp");
            request.setAttribute ("msg","no ha llenado ningun campo");
            rd.forward(request,response); 
            }
       
            
         
        try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Ena","root","");
                String query="SELECT * FROM user WHERE user.username='"+usuario+"' AND user.password='"+contraseña+"';";
                Statement st=conn.createStatement ();
                ResultSet rs= st.executeQuery(query);
                
            
                while(rs.next()){
                 usuariosql= rs.getString("username");
                 contraseñasql=rs.getString("password");
                }
            }catch(SQLException ex){
            throw new SQLException(ex);  
            }
          if(!usuario.equals(usuariosql)||!contraseña.equals(contraseñasql)){
                request.setAttribute("msg", "Usuario o contraseña incorrecta");
                RequestDispatcher rd = request.getRequestDispatcher("autentificacion.jsp");
                rd.forward(request, response);                
            }
        if(usuario.equals(usuariosql)||contraseña.equals(contraseñasql)){
                 HttpSession User = (HttpSession)request.getSession();      
                User.setAttribute("nombre",usuario);
                response.sendRedirect("menu.jsp");             
            }
    
 
     
        
            
        %>
    </body>
</html>