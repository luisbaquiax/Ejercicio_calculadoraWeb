<%-- 
    Document   : Calculadora
    Created on : 26/09/2020, 21:34:20
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.calucladoraWeb.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora Web</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Calculadora</h1>
        <% if (request.getParameter("numero1") == null && (request.getParameter("numero2")) == null) {%>
        <form method="GET" action="Calculadora.jsp">
            <label>Primer numero: </label>
            <input type="text" name="numero1" />
            <br />
            <label>Segundo numero: </label>
            <input type="text" name="numero2" />
            <br />
            <div>
                <label>
                    <input type="radio" name="suma" value="1" />Suma
                    <br />
                </label>
                <input type="radio" name="multiplicacion" value="1" />Multiplicacion 
                <br />
                <input type="radio" name="obtenerNumeroMayor" value="1" />Numero Mayor
                <br />
                <input type="radio" name="obtenerPotencia" value="1" />Potencia n1^n2
                <br />
                <input type="radio" name="obtenerBinario" value="1" />Numero binario de número 1:
                <br />
                <input type="radio" name="obtenerBinario2" value="1" />Numero binario de número 2:
                <br />
            </div>
            <input type="submit" value="Calcular" />
        </form>
        <% } else {%>
        <%! double suma, multiplicacion, numeroMayor, potencia;%>
        <%! int numero1, numero2;%>
        <%! String binario1, binario2;%>
        <%! Operacion operacion = new Operacion();%>
        <%
            numero1 = Integer.parseInt(request.getParameter("numero1"));
            numero1 = Integer.parseInt(request.getParameter("numero2"));
            suma = operacion.sumar(numero1, numero2);
            multiplicacion = operacion.multiplicar(numero1, numero2);
            numeroMayor = operacion.obtenerNumeroMayor(numero1, numero2);
            potencia = operacion.obtenerPotencia(numero1, numero2);
            binario1 = operacion.obtenerBinario(numero1);
            binario2 = operacion.obtenerBinario(numero2);
        %>

        <P>     
            <B>Los cálculos son:</B>:     
        <P>
            <B>Suma: </B>: <%= suma %>
            <%--
            <%if (request.getParameter("suma") != null) {%>
            <B>Suma: </B>: <%= this.suma%>
                <%} %>
            <br>
            <%if (request.getParameter("multiplicacion") != null) {%>
            <B>Multiplicacion: </B>: <%= this.multiplicacion%>
                <%} %>
            <br>
                <%if (request.getParameter("obtenerNumeroMayor") != null) {%>
            <B>Numero mayor: </B>: <%= this.numeroMayor%>
                <%} %>
            <br>
                <%if (request.getParameter("obtenerPotencia") != null) {%>
            <B>Potencia n1^n2: </B>: <%= this.potencia%>
                <%} %>
            <br>
                <%if (request.getParameter("obtenerBinario") != null) {%>
            <B>Binario de numero1: </B>: <%= this.binario1%>
                <%} %>
            <br>
                <%if (request.getParameter("obtenerBinario2") != null) {%>
            <B>Binario de numero2: </B>: <%= this.binario2%>
                <%}%> --%>

            <% }%>   
    </body>
</html>

