import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Agenda Pessoal',
      )),
      body: Center(
        child: GestureDetector(
          child: Text('click aqui $counter', style:TextStyle(fontSize: 50),),
          onTap: () {
            setState(() {
              counter--;
              // print(counter);
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_sharp),
        onPressed:(){
          setState(() {
            counter++;
          });

        } ,
      ),
    );
  }
}
