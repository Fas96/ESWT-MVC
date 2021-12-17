package com.example.security.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebFilter("/*")
public class LoginAuthenticationFilter implements Filter {
    private Logger logger=Logger.getLogger(getClass().getName());
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        logger.info(":::::::::::::::Filter Initialized:::::::::::::::::::::::");
    }
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req= (HttpServletRequest) servletRequest;
        HttpServletResponse resp= (HttpServletResponse) servletResponse;
//        String servletPath = req.getServletPath();
//        if("/".equals(servletPath)||"/login".equals(servletPath)||"/processLogin".equals(servletPath)||"login-component.jsp".equals(servletPath)){
//            filterChain.doFilter(servletRequest,servletResponse);
//            return;
//        }else {
//            Object isLoginIn = req.getSession().getAttribute("isLoggedIn");
//            if (isLoginIn != null) {
//                Boolean loginIn = (Boolean) isLoginIn;
//                if (loginIn) {
//                    filterChain.doFilter(servletRequest, servletResponse);
//                    return;
//                }
//
//            }
//            resp.sendRedirect("/");
//
//        }

        logger.info(":::::::::::doFilter(req,res)::::::::::"+req.getServletPath());
        filterChain.doFilter(servletRequest, servletResponse);
    }

}
