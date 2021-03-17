import 'package:flutter/material.dart';

AppBar buildAppbar() {
  return AppBar(
    title: Text(
      "LouvreSoft",
      style: TextStyle(color: Colors.blueGrey[600]),
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    actions: [
      IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.redAccent,
          ),
          onPressed: () {})
    ],
  );
}
