import 'package:flutter/material.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      fillColor: Colors.white,
      filled: true,
      hintText: "Search",
      prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(Icons.search, color: Color(0XFFDFBD43))),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: Color(0X40000000), width: 1),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    ));
  }
}
