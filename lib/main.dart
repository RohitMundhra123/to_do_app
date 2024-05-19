import "package:flutter/material.dart";
import "package:to_do_app/screen/mainpage.dart";

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.black,
              titleTextStyle: TextStyle(color: Colors.white)),
          scaffoldBackgroundColor: Colors.black),
      home: const MainPage(),
    );
  }
}
