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
    String cliente;
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados do Cliente'),
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
                     TextField(
                  onChanged: (text) => cliente = text,
                  keyboardType: TextInputType.name,
                  decoration:InputDecoration(
                    labelText: 'Nome do cliente:',
                    border:OutlineInputBorder(),

                  )
                ),
                SizedBox(
                  height: 20,
                  ),
                          TextField(
                  onChanged: (text) => cliente = text,
                  keyboardType: TextInputType.streetAddress,
                  decoration:InputDecoration(
                    labelText: 'Endreço:',
                    border:OutlineInputBorder(),

                  )
                ),
                SizedBox(
                  height: 20,
                  ),
                          TextField(
                  onChanged: (text) => cliente = text,
                  keyboardType: TextInputType.phone,
                  decoration:InputDecoration(
                    labelText: 'Telefone para contato:',
                    border:OutlineInputBorder(),

                  )
                ),
                SizedBox(
                  height: 20,
                  ),
                  ElevatedButton(onPressed: () {
                    print ('Cadastro Salvo');
                    Navigator.of (context).push(
                   MaterialPageRoute (builder: (context) => HomePage()));
                   
                    
                  },
                
                 
                 child: Text('Salvar '))
                  
                    ]
                    ),
              
            ),
            
          
        // ignore: dead_code
        
      
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_sharp),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      )
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
