/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package g.estructures_seleccio3;

/**
 *
 * @author MI-CUENTA
 */
import java.util.Scanner;
public class Ex5 {
public static void main(String[] args) {
Scanner scanner;
scanner = new Scanner(System.in); 

    
int valor;
final int NUM_MINIM=1;
final int NUM_MAXIM =3999;

System.out.printf("Introdueix un nombre del 0 al 3999: ");
    valor = scanner.nextInt();
    
   if (valor <NUM_MINIM || valor > NUM_MAXIM) {
   }else{
       switch (valor/1000){
           case 1 -> System.out.println("M");
           case 2 -> System.out.println("MM");
           case 3 -> System.out.println("MMM");
    
      }
       switch ((valor/100)%10){
           case 1 -> System.out.println("C");
           case 2 -> System.out.println("CC");
           case 3 -> System.out.println("CCC");
           case 4 -> System.out.println("CD");
           case 5 -> System.out.println("D");
           case 6 -> System.out.println("DC");
           case 7 -> System.out.println("DCC");
           case 8 -> System.out.println("DCCC");
           case 9 -> System.out.println("CM");
           
       
   }
       switch ((valor/10)%10){
           case 1 -> System.out.println("X");
           case 2 -> System.out.println("XX");
           case 3 -> System.out.println("XXX");
           case 4 -> System.out.println("XL");
           case 5 -> System.out.println("L");
           case 6 -> System.out.println("LX");
           case 7 -> System.out.println("LXX");
           case 8 -> System.out.println("LXXX");
           case 9 -> System.out.println("XC");
}
       switch (valor%10){
           case 1 -> System.out.println("I");
           case 2 -> System.out.println("II");
           case 3 -> System.out.println("III");
           case 4 -> System.out.println("IV");
           case 5 -> System.out.println("V");
           case 6 -> System.out.println("VI");
           case 7 -> System.out.println("VII");
           case 8 -> System.out.println("VIII");
           case 9 -> System.out.println("IX");
       
   
}
   }
}
}