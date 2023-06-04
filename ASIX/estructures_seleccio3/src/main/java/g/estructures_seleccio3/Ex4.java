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
public class Ex4 {
public static void main(String[] args) {
Scanner scanner;
scanner = new Scanner(System.in);
String tipus;
String manera;
String embalatge;
int pes;

System.out.printf("[C]arta, [P]aquet? ");
tipus = scanner.nextLine();


if ((tipus).equals("C")){
    System.out.println("Enviament [N]ormal o [U]rgent?");
     manera = scanner.nextLine();
     
     

if ((manera).equals("N")){
    System.out.println("-------------------------------");
    System.out.println("Tipus de d'enviament: c");
    System.out.println("Enviament: n");
    System.out.println("Total a pagar: 2.0");
    System.out.println("-------------------------------");

}else if ((manera).equals("U")){
    System.out.println("-------------------------------");
    System.out.println("Tipus de d'enviament: c");
    System.out.println("Enviament: u");
    System.out.println("Total a pagar: 5.0");
    System.out.println("-------------------------------");
}
}

if ((tipus).equals("P")){
    System.out.println("Introdueix el pes del paquet en Kg: ");
    pes = scanner.nextInt();
    scanner.nextInt();
    System.out.println("Embalatge [F]ragil o [N]ormal? ");
    embalatge = scanner.nextLine();
    
if (pes<2 && (embalatge).equals("F")){
    System.out.println("-------------------------------");
    System.out.println("Tipus de d'enviament: p");
    System.out.println("Pes del paquet: "+ pes);
    System.out.println("Total a pagar: 28.0");
    System.out.println("-------------------------------");

}else if (pes>=2 && pes<5 && (embalatge).equals("F")){
    System.out.println("-------------------------------");
    System.out.println("Tipus de d'enviament: p");
    System.out.println("Pes del paquet: "+ pes);
    System.out.println("Total a pagar: 40.0");
    System.out.println("-------------------------------");
    
}else if (pes>=5 && (embalatge).equals("F")){
    System.out.println("-------------------------------");
    System.out.println("Tipus de d'enviament: p");
    System.out.println("Pes del paquet: "+ pes);
    System.out.println("Total a pagar: "+((5*pes)+20));
    System.out.println("-------------------------------");

}else if (pes<2 && (embalatge).equals("N")){
    System.out.println("-------------------------------");
    System.out.println("Tipus de d'enviament: p");
    System.out.println("Pes del paquet: "+ pes);
    System.out.println("Total a pagar: 8.0");
    System.out.println("-------------------------------");
    
 }else if (pes<=2 && pes<5 && (embalatge).equals("N")){
    System.out.println("-------------------------------");
    System.out.println("Tipus de d'enviament: p");
    System.out.println("Pes del paquet: "+ pes);
    System.out.println("Total a pagar: 20.0");
    System.out.println("-------------------------------");
    
 }else if (pes>=5 && (embalatge).equals("N")){
    System.out.println("-------------------------------");
    System.out.println("Tipus de d'enviament: p");
    System.out.println("Pes del paquet: "+ pes);
    System.out.println("Total a pagar: "+(pes*5));
    System.out.println("-------------------------------");
     
 }else
        System.out.println("error");
     
}    
}
}




