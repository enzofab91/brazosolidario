package com.brazosolidario.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.validator.routines.EmailValidator;

public class ajaxmail extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("mail");
		String resultado;
		if (id.matches("^\\s*$")) {
			resultado = "";
		} else if (id.matches(".*(\\s+).*")) {
			resultado = "SIN_ESPACIOS";
		} else if (!EmailValidator.getInstance().isValid(id)) {
			resultado = "FORMATO_INVALIDO";
		} else {
			resultado = "OK";
		}
		response.setContentType("text/plain");
		response.getWriter().write(resultado);
	}
}
