// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options =const ["mario bros", "final fantasy", "megaman", "avenger","tarzan"];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("listView tipo 2"),
      ),
      body: ListView.separated(
         itemCount: options.length,
        itemBuilder: (context,index)=>ListTile(
           title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_sharp, color:  Colors.green,),
            onTap: () {
              final juego = options[index];
              // ignore: avoid_print
              print(juego); 
            }
            
            ),
         separatorBuilder:(_,__)=>const Divider(), 
    
      )
    );
  }
}
