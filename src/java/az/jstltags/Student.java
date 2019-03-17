/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package az.jstltags;

/**
 *
 * @author anarx
 */
public class Student {
    private String name,surname;
            private double point;

    public Student() {
    }

            
            
    public Student(String name, String surname, double point) {
        this.name = name;
        this.surname = surname;
        this.point = point;
    }

    
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public double getPoint() {
        return point;
    }

    public void setPoint(double point) {
        this.point = point;
    }

    @Override
    public String toString() {
        return "Student{" + "name=" + name + ", surname=" + surname + ", point=" + point + '}';
    }


    
}
