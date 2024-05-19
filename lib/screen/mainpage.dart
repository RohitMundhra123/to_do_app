// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do_app/screen/firstpage.dart';
import 'package:to_do_app/widget/form.dart';
import 'package:to_do_app/widget/task.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  BottomAppBar bottomAppBar() {
    return BottomAppBar(
        height: 70,
        color: Colors.white,
        notchMargin: 4,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                icon: SvgPicture.asset(
                  "assets/icons/home.svg",
                  height: 24,
                  color: currentIndex == 0 ? Colors.black : Colors.grey,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                icon: SvgPicture.asset(
                  "assets/icons/calendar.svg",
                  height: 24,
                  color: currentIndex == 1 ? Colors.black : Colors.grey,
                )),
            const SizedBox(
              width: 40,
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 2;
                  });
                },
                icon: SvgPicture.asset(
                  "assets/icons/alarm.svg",
                  height: 24,
                  color: currentIndex == 2 ? Colors.black : Colors.grey,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                icon: SvgPicture.asset(
                  "assets/icons/setting.svg",
                  height: 24,
                  color: currentIndex == 3 ? Colors.black : Colors.grey,
                )),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return const TaskForm();
              },
            );
          },
          backgroundColor: const Color(0xFFDFBD43),
          child: const Icon(Icons.add, color: Colors.white, size: 36),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: bottomAppBar(),
        body: PageView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              if (currentIndex == 0) {
                return const FirstPage();
              } else if (currentIndex == 1) {
                return Center(
                  child: Container(
                    child: Text("I am Rohit",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                );
              } else if (currentIndex == 2) {
                return Center(
                  child: Container(
                    child: Text("I am Rohit M",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                );
              } else {
                return Center(
                  child: Container(
                    child: Text("I am Rohit Mundhra",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                );
              }
            }));
  }
}
