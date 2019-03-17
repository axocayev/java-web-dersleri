/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package az.webapp;

import java.util.Properties;

/**
 *
 * @author anarx
 */
public class Triangel {

    private double a = 0, b = 0, c = 0;

    public double getA() {
        return a;
    }

    public void setA(double a) {
        this.a = a;
    }

    public double getB() {
        return b;
    }

    public void setB(double b) {
        this.b = b;
    }

    public double getC() {
        return c;
    }

    public void setC(double c) {
        this.c = c;
    }

    public double getPerimetr() {
        return a + b + c;
    }

    public double getArea() {
        double p = getPerimetr() / 2;
        return Math.sqrt(p * (p - a) * (p - b) * (p - c));
    }

    public static void main(String[] args) {
        System.out.println(System.getProperty("java.home"));
        System.out.println(System.getProperty("java.library.path"));
        System.out.println(System.getProperty("user.name"));
        System.out.println(System.getProperty("os.name"));
        System.out.println(System.getProperty("os.version"));
        System.out.println(System.getProperty("os.arch"));

        System.setProperty("appname", "webapp");
        System.setProperty("appversion", "0.0.1");

        System.out.println(System.getProperty("appname"));
        System.out.println(System.getProperty("appversion"));
        
        Properties prop=new Properties();
        prop.setProperty("myname", "anar");
        prop.setProperty("mysname", "xocayev");
        
        System.setProperties(prop);
        System.out.println(System.getProperties());
        System.out.println(System.getProperty("myname"));

    }
}
