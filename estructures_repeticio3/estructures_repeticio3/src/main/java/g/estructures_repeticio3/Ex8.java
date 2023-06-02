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
public class Ex8 {
public static void main(String[] args) {

Scanner scanner = new Scanner(System.in); 

int j,k;
j=0;
    System.out.println("escriu un nombre: ");
k = scanner.nextInt();
for (int i=0; i<=k; i++){
    if (j%40==0){
            System.out.println("");}
    
    if ((i%2)!=0 && (i%3)!=0 && (i%5)!=0 && (i%7)!=0){
        System.out.print((i)+" ");
    System.out.print(" - ");}
    j++;
    
}

}
}
