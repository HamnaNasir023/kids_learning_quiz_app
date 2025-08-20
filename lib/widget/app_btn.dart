// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppBtn extends StatelessWidget {
  String text;
  final VoidCallback onTab;
  AppBtn({
    super.key,
    required this.text,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: const Color.fromARGB(255, 129, 157, 180),
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 20,
        width: 70,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 21, 74, 118),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        )),
      ),
      onTap: () {
        onTab();
      },
    );
  }
}
