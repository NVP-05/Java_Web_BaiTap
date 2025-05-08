package com.example.session01;

public class Student {
    private String fullName;
    private String studentClass;
    private String vehicleType;
    private String vehicleNumber;

    public Student(String fullName, String studentClass, String vehicleType, String vehicleNumber) {
        this.fullName = fullName;
        this.studentClass = studentClass;
        this.vehicleType = vehicleType;
        this.vehicleNumber = vehicleNumber;
    }

    // Getter và Setter cho các thuộc tính
    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getStudentClass() {
        return studentClass;
    }

    public void setStudentClass(String studentClass) {
        this.studentClass = studentClass;
    }

    public String getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(String vehicleType) {
        this.vehicleType = vehicleType;
    }

    public String getVehicleNumber() {
        return vehicleNumber;
    }

    public void setVehicleNumber(String vehicleNumber) {
        this.vehicleNumber = vehicleNumber;
    }
}

