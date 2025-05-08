package com.example.session01.Bai8.service;

import com.example.session01.Bai8.model.Task;

import java.util.ArrayList;
import java.util.List;

public class TaskService {
    private static List<Task> tasks;

    static {
        tasks = new ArrayList<>();
        tasks.add(new Task("Học JSP"));
        tasks.add(new Task("Học Servlet"));
    }

    public static List<Task> getAllTasks() {
        if (tasks == null) {
            tasks = new ArrayList<>();
        }
        return tasks;
    }

    public static void addTask(Task task) {
        if (tasks == null) {
            tasks = new ArrayList<>();
        }
        tasks.add(task);
    }

    public static Task getTaskById(int id) {
        if (tasks == null) {
            return null;
        }
        for (Task task : tasks) {
            if (task.getId() == id) {
                return task;
            }
        }
        return null;
    }

    public static void toggleTaskStatus(int id) {
        Task task = getTaskById(id);
        if (task != null) {
            task.toggleComplete();
        }
    }
}