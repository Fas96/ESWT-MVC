package com.example.security.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter("/*")
public class LoginAuthenticationFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("==============LoginAuthenticationFilter=======init()");
    }
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req= (HttpServletRequest) servletRequest;
        HttpServletResponse resp= (HttpServletResponse) servletResponse;
        String servletPath = req.getServletPath();
        if("/".equals(servletPath)||"/login".equals(servletPath)||"/processLogin".equals(servletPath)||"login-component.jsp".equals(servletPath)){
            filterChain.doFilter(servletRequest,servletResponse);
            return;
        }else {
            Object isLoginIn = req.getSession().getAttribute("isLoggedIn");
            if (isLoginIn != null) {
                Boolean loginIn = (Boolean) isLoginIn;
                if (loginIn) {
                    filterChain.doFilter(servletRequest, servletResponse);
                    return;
                }

            }
            resp.sendRedirect("/");

        }
    }

}
