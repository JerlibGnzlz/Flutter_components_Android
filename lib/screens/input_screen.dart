import 'package:flutter/material.dart';
import '../widgets/custon_input_fields.dart';


class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("input y Form"),
      ),
       body:const SingleChildScrollView(
        child:   Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10) ,
          child: Column(
            children: [
               CustonInputField(
                labelText: "Nombre",
                hintText: "Nombre de Usuario",
                helperText: "minimo 3 letras",
               )
            ],),
         )
        ,
      )
      
    );
  }
}
