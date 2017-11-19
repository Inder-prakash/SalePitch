package com.hibernate;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.hibernate.loginhistory.LoginHistory;
import com.hibernate.loginhistory.LoginHistoryDAO;

public class LoginSucessHander implements AuthenticationSuccessHandler{
	@Autowired
	LoginHistoryDAO lhdao;
	public void onAuthenticationSuccess(HttpServletRequest arg0, HttpServletResponse arg1, Authentication arg2)
			throws IOException, ServletException {
		DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
		Date date = new Date();
		String sd = df.format(date);
		LoginHistory lh = new LoginHistory();
		lh.setUsername(arg0.getParameter("email"));
		lh.setPassword(arg0.getParameter("password"));
		lh.setStatus("Valid");
		lh.setLogintime(sd.toString());
        lhdao.insert(lh);
        arg1.sendRedirect("index");
	}
	
}
