package pl.coderslab.users;

import pl.coderslab.utils.User;
import pl.coderslab.utils.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/edit")
public class UserEdit extends HttpServlet {

    private UserDao userDao = new UserDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        User read = userDao.read(Integer.parseInt(id));
        request.setAttribute("user", read);
        getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        String password = request.getParameter("password"); // hasło zostaje podwójnie zahaszkowane, coś trzeba z tym zrobić

        User user = new User();
        user.setId(Integer.parseInt(id));
        user.setUserName(userName);
        user.setEmail(email);
        if (!password.isEmpty()){
            int passId = Integer.parseInt(id);
        userDao.updatePass(password, passId);
        }
        userDao.update(user);

        response.sendRedirect(request.getContextPath() + "/user/list");

    }
}
