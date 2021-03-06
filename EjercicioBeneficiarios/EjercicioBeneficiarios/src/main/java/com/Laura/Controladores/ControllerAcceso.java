package com.Laura.Controladores;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Laura.Entidades.Personas;
import com.Laura.Negocio.clsComprobarDUI;
/**
 * Servlet implementation class ControllerAcceso
 */
public class ControllerAcceso extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerAcceso() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
  HttpSession session = request.getSession(true);
		
		String btncerrar = request.getParameter("btncerrar");
		
		if(btncerrar!=null) {
			response.sendRedirect("index.jsp");
			session.invalidate();
			
		}else {
		
		String DUI = request.getParameter("DUI");
		int NumeroDUI = Integer.parseInt(DUI);
		Personas per = new Personas();
		clsComprobarDUI clsDUI = new clsComprobarDUI();
		
		per.setDUI(NumeroDUI);
		
		int valoracceso = clsDUI.acceso(per);
		
		if(valoracceso==1) {
			String Nombre = clsDUI.ObtenerNombre(per);
			session.setAttribute("Nombre", Nombre);
			response.sendRedirect("Saludo.jsp");
		}else {
			response.sendRedirect("Error.jsp");
		
			  }
		}
	}

}
