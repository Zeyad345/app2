import 'package:app2/Views/Widgets/Second_container.dart';
import 'package:app2/Views/Widgets/first_container.dart';
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            label: "Alarm",
            icon: Icon(Icons.add_alarm_sharp),
          ),
          BottomNavigationBarItem(
            label: "More",
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Text("widget of the week"),
            FirstContainer(
              color: Colors.blue,
              title: "Container",
              subtitle: "countainer is a widget",
            ),
            SizedBox(
              height: 20,
            ),
            Text("Latest News"),
            FirstContainer(
                color: Colors.pink,
                title: "Flutter",
                subtitle: "Updated Material Widget"),
            SizedBox(
              height: 20,
            ),
            Text("Learn"),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SecondContainer(
                  text1: "State Management",
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 30,
                ),
                SecondContainer(
                  text1: "Provider",
                  color: Colors.pink,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
