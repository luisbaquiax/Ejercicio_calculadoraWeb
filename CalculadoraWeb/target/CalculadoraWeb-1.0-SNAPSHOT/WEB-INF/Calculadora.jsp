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
    </head>
    <body>
        <% if (request.getParameter("numero1") == null && (request.getParameter("numero2")) == null) {%>
        <form method="GET" action="Calc">
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
        <%! Calculadora calculadora = new Calculadora();%>
        <%
            numero1 = Integer.parseInt(request.getParameter("numero1"));
            numero1 = Integer.parseInt(request.getParameter("numero2"));
        %>
        <%if (request.getParameter("suma") != null) { %>
        suma = calculadora.sumar(numero1, numero2);
        <%} %>
        <%if (request.getParameter("multiplicacion") != null) { %>
        multiplicacion = calculadora.multiplicar(numero1, numero2);
        <%} %>
        <%if (request.getParameter("obtenerNumeroMayor") != null) { %>
        numeroMayor = calculadora.obtenerNumeroMayor(numero1, numero2);
        <%} %>
        <%if (request.getParameter("obtenerPotencia") != null) { %>
        potencia = calculadora.obtenerPotencia(numero1, numero2);
        <%} %>
        <%if (request.getParameter("obtenerBinario") != null) { %>
        binario1 = calculadora.obtenerBinario(numero1);
        <%} %>
        <%if (request.getParameter("obtenerBinario2") != null) { %>
        binario2 = calculadora.obtenerBinario(numero2);
        <%}%>
        <P>     
            <B>Los cálculos son:</B>:     
        <P>     
            <%-- Se muestran los datos --%>
            <B>Suma: </B>: <%= suma%><P>
            <B>Multiplicacion: </B>: <%= multiplicacion%>
            <B>Numero mayor: </B>: <%= numeroMayor%>
            <B>Potencia n1^n2: </B>: <%= potencia%>
            <B>Binario de numero1: </B>: <%= binario1%>
            <B>Binario de numero2: </B>: <%= binario2%>

            <% }%>   
    </body>
</html>
