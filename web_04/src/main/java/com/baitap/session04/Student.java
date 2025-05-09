package com.baitap.session04;

public class Student {
    public String name;
    public double score;
    public String address;

    public Student() {
    }

    public Student(String name, double score, String address) {
        this.name = name;
        this.score = score;
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}