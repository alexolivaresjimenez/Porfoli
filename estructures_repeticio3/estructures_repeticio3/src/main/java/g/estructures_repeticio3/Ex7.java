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
public class Ex7 {
public static void main(String[] args) {

Scanner scanner = new Scanner(System.in); 

int i, j, k,m;
i=0;
j=0;
k=0;
m=0;
String string;
string="E";
while (i<=10 && j<=10 && k<=10 && m<=9) {
    System.out.println(m+"-"+k+"-"+j+"-"+i);
    i++;
if (i==10){
    i=0;
    j++;
    }
else if (j==10){
    j=0;
    k++;
}
else if(k==10){
    k=0;
    m++;    
        }
if (i==3){
        System.out.println(m+"-"+k+"-"+j+"-"+"E");
i++;
            }   
else if(j==3){
    System.out.println(m+"-"+k+"-"+"E"+"-"+i);
}
else if(k==3){
    System.out.println(m+"-"+"E"+"-"+j+"-"+i);
}
else if(m==3){
    System.out.println("E"+"-"+k+"-"+j+"-"+i);


}
}
}
}
   