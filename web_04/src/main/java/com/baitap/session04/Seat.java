package com.baitap.session04;

public class Seat {
    private int id;
    private String code;
    private boolean status;

    public Seat(int id, String code, boolean status) {
        this.id = id;
        this.code = code;
        this.status = status;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public String getCode() {
        return code;
    }

    @Override
    public String toString() {
        return "Seat{id=" + id + ", code='" + code + "'}";
    }
}
