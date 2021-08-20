import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  bool trocatema = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda Pessoal'),
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
             
              children: [
                Center(child: CustomSwitch()),
                Container(
                  height: 150,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        color: Colors.red,
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        color: Colors.red,
                      ),
                    ]
                    ),
              ],
            ),
          
        ),
      
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_sharp),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.trocatema,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
