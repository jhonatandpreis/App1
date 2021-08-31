import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
 LoginPage({Key key}) : super(key: key);

  @override
   _LoginPageState createState() =>  _LoginPageState();
}

class  _LoginPageState extends State <LoginPage> {
  String marca = "";
    String btus = "";

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar  Ar condicionadoa'),
        actions: [CustomSwitch()],
      ),
      body:SingleChildScrollView(
       child: SizedBox(
         width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children:[
                SizedBox(
             
              width: 400, 
              height: 150, 
             child: 
             Image.network('https://eletro-angeloni-static-prod.s3.amazonaws.com/media/landing_page/eletro/arcondicionado-mobile/assets/images/icon-suporte.png', fit:BoxFit.scaleDown,),
            ),
              
              

                TextField(
                  onChanged: (text) => marca = text,
                  keyboardType: TextInputType.emailAddress,
                  decoration:InputDecoration(
                    labelText: 'MARCA',
                    border:OutlineInputBorder(),

                  )
                ),
                SizedBox(
                  height: 20,
                  ),
                TextField(
                    onChanged: (text) => btus = text,

                  
                    decoration:InputDecoration(
                    labelText: 'BTUs',
                    border:OutlineInputBorder(),
                    ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    onChanged: (text) => btus = text,

                  
                    decoration:InputDecoration(
                    labelText: 'TENSÃO ELÉTRICA',
                    border:OutlineInputBorder(),
                    ),
                ),
                SizedBox(
                  height: 20,
                ),
                  

                ElevatedButton(onPressed: () {
                  if (marca =='eletrolux' && btus == '12000'){
                    print ('Cadastrado com sucesso');
                    Navigator.of (context).push(
                   MaterialPageRoute (builder: (context) => HomePage()));
                   
                    
                  }
                
                 
                }, child: Text('CADASTRAR AR CONDICIONADO'))
              ]

            ),
          ),

          ),
         )
        );
     
     }
}                                                                                                                             

 


       