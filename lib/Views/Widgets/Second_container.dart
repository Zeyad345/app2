import 'package:flutter/material.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({
    super.key,
    required this.text1,
    required this.color,
  });
  final String text1;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.42,
      height: MediaQuery.of(context).size.height * 0.28,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(16), color: color),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                text1,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
