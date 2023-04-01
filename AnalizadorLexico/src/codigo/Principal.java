/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codigo;

import java.io.File;

/**
 *
 * @author yocary
 */
public class Principal {
    public static void main(String[] args) {
        String ruta = "C:/Users/Charly Ponce/Documents/NetBeansProjects/AnalizadorLexico/src/codigo/Lexer.flex";
        generarAnalizador(ruta);
    }
    public static void generarAnalizador(String ruta){
        File archivo = new File(ruta);
        JFlex.Main.generate(archivo);
    }
}
