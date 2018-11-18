/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ohtu;

import java.util.ArrayList;

/**
 *
 * @author ColdFish
 */
class Course {
    private String fullName;
    private String name;
    private String term;
    private int year;
    private int[] exercises;
        
    public void setYear(int year) {
        this.year = year;
    }

    public void setExercises(int[] exercises) {
        this.exercises = exercises;
    }

    public int[] getExercises() {
        return exercises;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getYear() {
        return year;
    }

    public String getTerm() {
        return term;
    }

    public String getFullName() {
        return fullName;
    }

    public String getName() {
        return name;
    }
    
    
    
    
    
}
