import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String text;
  bool isSelected;
  bool isCorrect;
  final VoidCallback onTap;

  ButtonWidget(
      {super.key,
      required this.text,
      required this.onTap,
      required this.isCorrect,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              width: 1.5,
              style: BorderStyle.solid,
              color: isSelected
                  ? (isCorrect
                      ? const Color.fromARGB(255, 49, 128, 51)
                      : const Color.fromARGB(255, 171, 66, 66))
                  : const Color.fromARGB(255, 11, 51, 84)),
          color: isSelected
              ? (isCorrect ? Colors.green : Colors.redAccent)
              : const Color.fromARGB(255, 138, 166, 180),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  text,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 11, 51, 84)),
                ),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Icon(isSelected
                ? (isCorrect ? Icons.done : Icons.close_sharp)
                : null)
          ],
        ),
      ),
    );
  }
}
