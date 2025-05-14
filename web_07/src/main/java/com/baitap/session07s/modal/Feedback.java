package com.baitap.session07s.modal;

public class Feedback {
    private String fullName;
    private String phone;
    private String address;
    private String content;

    public Feedback(String fullName, String phone, String address, String content) {
        this.fullName = fullName;
        this.phone = phone;
        this.address = address;
        this.content = content;
    }

    public String getFullName() { return fullName; }
    public String getPhone() { return phone; }
    public String getAddress() { return address; }
    public String getContent() { return content; }
}
