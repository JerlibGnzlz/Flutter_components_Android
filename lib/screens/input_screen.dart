import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("input y Form"),
      ),
      body:SingleChildScrollView(
        child:   Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10) ,
          child: Column(
            children: [
              TextFormField(
            //  autofocus: true,
             textCapitalization: TextCapitalization.words,
             initialValue: "",
             onChanged: (value)  {
              // print('value: $value');
             },
             validator: (value) {
               if(value == null) return "Este campo es requierido";
               return value.length < 4 ? "minimo son 4 letras" : null; 
              
             },
             autovalidateMode: AutovalidateMode.onUserInteraction,
             decoration: const InputDecoration(
              hintText: "Nombre de Usuario",
              labelText: "Nombre",
              helperText: "Solo letras",
              suffixIcon: Icon(Icons.group_outlined),
              // prefixIcon: Icon(Icons.verified_outlined)
             icon:  Icon(Icons.admin_panel_settings_outlined),
             border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))
             )     
            
              ),
            



              )
            ],),
         )
        ,
      )
      
    );
  }
}