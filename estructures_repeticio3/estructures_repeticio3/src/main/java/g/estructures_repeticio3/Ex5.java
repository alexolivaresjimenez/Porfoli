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
public class Ex5 {
public static void main(String[] args) {

Scanner scanner = new Scanner(System.in); 

String string, hueco,aster;
string="*";
aster="*";
hueco=" ";
int j,k;
    System.out.print("escriu el nombre de files que vols: ");
j = scanner.nextInt();
k=j;
System.out.println(hueco.repeat(k+1)+string);
for(int i=1;i<j;i++){
    string=string+"*";
    System.out.println(hueco.repeat(k)+string+aster);
    aster=aster+"*";
    k--;
}

}
}
