import 'package:flutter/material.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.color});

  final String title, subtitle;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: color),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$title",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 12),
                  child: Text(
                    "$subtitle",
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
