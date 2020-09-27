package com.calucladoraWeb;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author luis
 */
@WebServlet("/Calculos")
public class Calculadora extends HttpServlet {

    private Operacion operacion = new Operacion();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        try {
            int numero1 = Integer.parseInt(request.getParameter("numero1"));
            int numero2 = Integer.parseInt(request.getParameter("numero2"));
            if (request.getParameter("suma") != null) {
                out.println("<h1>Suma</h1>" + operacion.sumar(numero1, numero2));
            }
            if (request.getParameter("multiplicacion") != null) {
                out.println("<h1>Multiplicación</h1>" + operacion.multiplicar(numero1, numero2));
            }
            if (request.getParameter("obtenerNumeroMayor") != null) {
                out.println("<h1>Número mayor </h1>" + operacion.obtenerNumeroMayor(numero1, numero2));
            }
            if (request.getParameter("obtenerPotencia") != null) {
                out.println("<h1>Potencia n1^n2</h1>" + operacion.obtenerPotencia(numero1, numero2));
            }
            if (request.getParameter("obtenerBinario") != null) {
                out.println("<h1>Binario de número 1: </h1>" + operacion.obtenerBinario(numero1));
            }
            if (request.getParameter("obtenerBinario2") != null) {
                out.println("<h1>Binario de número 2: </h1>" + operacion.obtenerBinario(numero2));
            }
        } catch (Exception e) {
             out.println("<h1>No se pudo realizar los calculos, lo sentimos</h1>");
        }

    }
}
