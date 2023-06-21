// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options =const ["mario bros", "final fantasy", "megaman", "avenger","tarzan"];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("listView tipo 1"),
      ),
      body: ListView(
        children:  [
          ...options.map(
            (e) =>  ListTile( title: Text(e) ,
            trailing: const Icon(Icons.arrow_forward_ios_sharp))
    
          ).toList()
        ],
      ),
    );
  }
}
