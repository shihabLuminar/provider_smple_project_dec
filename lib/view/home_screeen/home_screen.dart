import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_smple_project_dec/controller/home_screen_controller.dart';
import 'package:provider_smple_project_dec/view/second_screen/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<HomeScreenController>(context, listen: false).add();
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${Provider.of<HomeScreenController>(context).count}",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(),
                    ));
              },
              icon: Icon(
                Icons.arrow_circle_right_rounded,
                size: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
