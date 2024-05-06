import 'package:flutter/material.dart';
import 'package:to_do_app/widget/calendar.dart';
import 'package:to_do_app/widget/task.dart';
import 'package:to_do_app/widget/textfield.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  AppBar appBar() {
    return AppBar(
        toolbarHeight: 120,
        title: const Padding(
          padding: EdgeInsets.only(top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage("assets/images/pp/photo.jpg"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Hello, Rohit Mundhra",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                ),
              )
            ],
          ),
        ));
  }

  Widget body() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Calendar(),
          const SearchTextField(),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Today's Task",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const Task();
                }),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
    );
  }
}
