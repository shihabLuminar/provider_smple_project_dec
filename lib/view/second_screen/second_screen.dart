import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_smple_project_dec/controller/home_screen_controller.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("secondScreen state");
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  Provider.of<HomeScreenController>(context, listen: false)
                      .add();
                },
                icon: Icon(Icons.add)),
            IconButton(
                onPressed: () {
                  Provider.of<HomeScreenController>(context, listen: false)
                      .sub();
                },
                icon: Icon(Icons.remove))
          ],
        ),
      ),
    );
  }
}
