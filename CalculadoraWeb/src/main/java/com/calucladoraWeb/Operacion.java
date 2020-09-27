/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.calucladoraWeb;

import javax.servlet.http.HttpServlet;

/**
 *
 * @author luis
 */
public class Operacion {
    
    public Operacion() {
    }

    /**
     * Calcula la suma de los números que se le pasa por parámetro
     *
     * @param numero1
     * @param numero2
     * @return Retorna la suma de los numeros que tiene de parámetro
     */
    public double sumar(int numero1, int numero2) {
        return (numero1 + numero2);
    }

    /**
     * Calcula la multiplicación de los números que se le pasa por parámetro
     *
     * @param numero1
     * @param numero2
     * @return Retorna la multicación de dos números que se le especifica como
     * parámetros
     */
    public double multiplicar(int numero1, int numero2) {
        return (numero1 * numero2);
    }

    /**
     * Identifica quién es mayor de los dos números que se le pasa por parámetro
     *
     * @param numero1
     * @param numero2
     * @return Retorna el número mayor de los parámetros que se le evía
     */
    public double obtenerNumeroMayor(int numero1, int numero2) {
        if (numero1 > numero2) {
            return numero1;
        } else {
            return numero2;
        }
    }

    /**
     * Calcula la potencia de los números que se le pasa por parámetro, siendo
     * n1 la base y n2 la potencia (exponente)
     *
     * @param numero1
     * @param numero2
     * @return Retorna la potencia n1 ^ n2
     */
    public double obtenerPotencia(int numero1, int numero2) {
        double resultado = numero1;
        //n1 a la n2
        for (int i = 1; i < numero2; i++) {
            resultado = resultado * numero1;

        }
        return resultado;
    }

    /**
     * Calcula el binario de un numero decimal que se le pasa por parámetro
     *
     * @param num
     * @return Retorna le binario del decimal que se le envía de parámetro
     */
    public String obtenerBinario(int num) {

        String binario = Integer.toBinaryString(num);
        return binario;
    }
}
