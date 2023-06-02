/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package g.estructures_repeticio3;

/**
 *
 * @author MI-CUENTA
 */
import java.util.Scanner;
public class Ex9 {
public static void main(String[] args) {

Scanner scanner = new Scanner(System.in); 

int A, B, C, resta;
String j1, j2, pila;
System.out.print("J1 escriu el teu nom: ");
j1 = scanner.nextLine();

System.out.print("J2 escriu el teu nom: ");
j2 = scanner.nextLine();

    System.out.print("A:");
    A = scanner.nextInt();
    
    System.out.print("B:");
    B = scanner.nextInt();
    
    System.out.print("C:");
    C = scanner.nextInt();   
    scanner.nextLine();
    
while (A>=0 && B>=0 && C>=0 ){
    
    System.out.print("A: "+A);
    System.out.print(" B: "+B);
    System.out.println(" C: "+C);
    
    System.out.print(j1+", escull una pila:");
    pila =scanner.nextLine();
    
    System.out.print("Cuantes fitxes agafes de la pila "+pila+":");
    resta = scanner.nextInt();
    scanner.nextLine();
    
    if((pila).equals("A")){
        A-=resta;
     
    }else if((pila).equals("B")){
        B-=resta;
    
    }else if((pila).equals("C")){
        C-=resta;}
       
    if(A==0 && B==0 && C==0){
        System.out.println("Guaña J2");
        break;
    }
    
    System.out.print("A: "+A);
    System.out.print(" B: "+B);
    System.out.println(" C: "+C);
    
    System.out.print(j2+", escull una pila:");
    pila =scanner.nextLine();
    System.out.print("Cuantes fitxes agafes de la pila "+pila+":");
    resta = scanner.nextInt();
    scanner.nextLine();
    
    if((pila).equals("A")){
        A=A-resta;
       
    }else if((pila).equals("B")){
        B=B-resta;
       
    }else if((pila).equals("C")){
        C=C-resta;}
    if(A==0 && B==0 && C==0){
        System.out.println("Guaña J1");
        break;
    }

    
}

}
}
