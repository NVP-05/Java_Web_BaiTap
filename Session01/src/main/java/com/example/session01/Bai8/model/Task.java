package com.example.session01.Bai8.model;

public class Task {
    private static int counter = 0;

    private int id;
    private String title;
    private boolean isComplete;

    public Task() {
        this.id = ++counter;
        this.isComplete = false;
    }

    public Task(String title) {
        this();
        this.title = title;
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public boolean isComplete() {
        return isComplete;
    }

    public void setComplete(boolean isComplete) {
        this.isComplete = isComplete;
    }

    public void toggleComplete() {
        this.isComplete = !this.isComplete;
    }

    @Override
    public String toString() {
        return "Task [id=" + id + ", title=" + title + ", complete=" + isComplete + "]";
    }
}
