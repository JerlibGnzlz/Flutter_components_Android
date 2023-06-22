import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("jerlib Gnzlz"),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 5),
              child:  CircleAvatar(
                backgroundColor:  Colors.green[900],
                 child:const Text("JG"),
              ))
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage("https://media.istockphoto.com/id/1227618813/es/vector/human-face-avatar-icon-perfil-para-la-red-social-hombre-ilustraci%C3%B3n-vectorial.jpg?s=612x612&w=0&k=20&c=l-Nb1sWxlo4feSppXnBVCSaZpYkFI7v147ce0Ym4lTQ="),
        ),
      ),
    );
  }
}
