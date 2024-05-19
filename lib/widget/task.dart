import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2, color: Colors.white)),
      child: Row(
        children: [
          Checkbox(
              activeColor: const Color(0xFFDFBD43),
              value: checked,
              onChanged: (bool? value) {
                if (value != null) {
                  setState(() {
                    checked = value;
                  });
                }
              }),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "8:00 AM",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Go to church",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      decoration: checked ? TextDecoration.lineThrough : null,
                      decorationColor: Colors.white),
                ),
              ],
            ),
          ),
          Column(
            children: [
              IconButton(
                  visualDensity: const VisualDensity(vertical: -4),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    size: 22,
                    color: Color(0xFFDFBD43),
                  )),
              IconButton(
                  visualDensity: const VisualDensity(vertical: -4),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    size: 22,
                    color: Color(0xFFDFBD43),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
