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
public class Ex3 {
public static void main(String[] args) {
Scanner scanner;
scanner = new Scanner(System.in);

int num1, num2, num3;


System.out.println("Origen: [1] Cafè Etíop, [2] Cafè Brasiler, [3] Cafè Jamaicà >>> 2");
num1 = scanner.nextInt();
System.out.println("Presentació: [1] Cafè sol, [2] Cafè tallat, [3] Cafè amb llet >>> 1");
num2 = scanner.nextInt();
System.out.println("Additius: [1] sense additius, [2] amb sucre, [3] amb sacarina >>> 2");
num3 = scanner.nextInt();    

if (num1==1){
        System.out.print("cafè etiop");
        
    }else if (num1==2){
        System.out.print("cafè brasiler");
    }else if (num1==3){
        System.out.print("cafè jamaicà");
}
if (num2==1){
        System.out.print("sol");
        
    }else if (num2==2){
        System.out.print("tallat");
    }else if (num2==3){
        System.out.print("amb llet");

}
if (num3==1){
        System.out.print("sense aditiu");
        
    }else if (num3==2){
        System.out.print("amb sucre");
    }else if (num3==3){
        System.out.print("amb sacarina");
}
}
}