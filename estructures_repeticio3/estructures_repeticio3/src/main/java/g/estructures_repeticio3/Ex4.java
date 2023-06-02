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
public class Ex4 {
public static void main(String[] args) {

Scanner scanner = new Scanner(System.in); 

String string,hueco;
string="*";
hueco=" ";
int j,k,y;
    System.out.print("escriu el nombre de files que vols: ");
j = scanner.nextInt();
k=j;
y=0;
for(int i=0;i<j;i++){

    System.out.println(hueco.repeat(y)+string.repeat(k));
    k--;
   y++;
    
}

}
}
