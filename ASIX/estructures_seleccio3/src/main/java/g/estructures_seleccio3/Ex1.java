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
public class Ex1 {
public static void main(String[] args) {
Scanner scanner;
scanner = new Scanner(System.in); 
int valor, valor1, valor2, valor3, valor4, valor5, valor6;





System.out.printf("Introdueix un nombre del 0 al 99999: ");
    valor = scanner.nextInt();
    
    valor1=valor/10;
    valor2=valor%10;
    valor3=(valor/10)%10;
    valor4=(valor/100)%10;
    valor5=(valor/1000)%10;
    valor6=(valor/10000)%10;
    

    if (valor<0 && valor>=99999){
        System.out.println("El numero está fora del rang");
    }else if (valor>=0 && valor<=9){
        System.out.println(valor);
    }else if (valor>=10 && valor<=99){
        System.out.println(valor2+" "+ valor1);
    }else if (valor>=100 && valor<=999){
        System.out.println(" "+ valor2+" "+valor3+" "+valor4);
    }else if (valor>=1000 && valor<=9999){
        System.out.println(" "+ valor2+" "+valor3+" "+valor4+" "+valor5);
    }else if (valor>=10000 && valor<=99999){
        System.out.println(" "+ valor2+" "+valor3+" "+valor4+" "+valor5+" "+valor6);
    }
}
}