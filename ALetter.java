package com.lab02.HW;

import java.util.Scanner;
public class ALetter {
	public static void main(String[]args){
		Scanner kb = new Scanner(System.in);
		System.out.print("Enter a Line:");
		String Line = kb.nextLine();
		Line = Line.toLowerCase();
		for(int i = 0;i < Line.length();i++){
			if(Line.charAt(i)=='a'||Line.charAt(i)==','){
				if(i == 0){
					Line = Line.substring(1);
					i--;
				}else{
					Line = Line.substring(0,i)+Line.substring(i+1);
					i--;
				}
			}
		}
		for(int i = 0;i < Line.length()-1;i++){
			String Line2 = Line.toUpperCase();
			if(Line.charAt(0)!=' '){
				Line = Line2.charAt(0)+Line.substring(1);
			}
			if(i != 0&&Line.charAt(i)==' '){
				Line = Line.substring(0,i+1)+Line2.charAt(i+1)+Line.substring(i+2);
			}
		}
		System.out.print(Line);
	}

}
