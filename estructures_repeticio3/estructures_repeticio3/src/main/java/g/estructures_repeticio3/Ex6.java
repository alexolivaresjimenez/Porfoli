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
public class Ex6 {
public static void main(String[] args) {

Scanner scanner = new Scanner(System.in); 

int i;
int n;
int max;
i=0;
System.out.print("Escriu un valor n (0 per sortir): ");
        n = scanner.nextInt();
max=n;
while (n!=0) {
n = scanner.nextInt();    
    
    if(n>max){
           max=n;
           i=0;
    }else if(n<max){
            i++;
    }
}
    System.out.println("en nombre mayor ha estat "+max+" i s'ha repetit "+(i++)+" vegades");
}
}
   