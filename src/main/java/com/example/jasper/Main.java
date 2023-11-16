package com.example.jasper;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main {
    public static void main(String[] args) {
        
        Pattern compile = Pattern.compile("\\d");
        Matcher value = compile.matcher("5");
        boolean matches = value.matches();
        System.out.println(matches);

        System.out.println(
                Pattern.compile("\\d").matcher("5")
                        .matches());

        System.out.println(Pattern.matches("\\d","5"));
    }

}
