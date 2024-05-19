import 'package:flutter/material.dart';

class TaskForm extends StatefulWidget {
  const TaskForm({super.key});

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Add Task",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter Task",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  labelText: "Task",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  suffixIcon: Icon(Icons.task, color: Colors.black),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter Time",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  labelText: "Time",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  suffixIcon: Icon(Icons.access_time, color: Colors.black),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFDFBD43),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text("Add Task",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              )
            ],
          ),
        ));
  }
}
