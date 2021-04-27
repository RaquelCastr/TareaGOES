package com.Laura.Negocio;
import com.Laura.DAO.ClsPersona;
import com.Laura.Entidades.Personas;

public class clsComprobarDUI {
	public int acceso(Personas per) {
		int acceso = 0;
		ClsPersona clspersona = new ClsPersona();
		boolean existencia = clspersona.ComprobarExistencia(per);
		if (existencia == true) {
			acceso = 1;
		}

		return acceso;
	}
	
	public String ObtenerNombre(Personas per) {
		ClsPersona clspersona = new ClsPersona();
		return clspersona.ObtenerNombre(per);
	}

}
