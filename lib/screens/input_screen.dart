import 'package:flutter/material.dart';
import '../widgets/custon_input_fields.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("input y Form"),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                SizedBox(height: 20),
                CustonInputField(
                  labelText: "Nombre",
                  hintText: "Nombre del Usuario",
                  helperText: "minimo 3 letras",
                ),
                SizedBox(height: 20),
                CustonInputField(
                  labelText: "Apellido",
                  hintText: "Apellido del Usuario",
                  helperText: "minimo 6 letras",
                ),
                SizedBox(height: 20),
                CustonInputField(
                  labelText: "Correo",
                  hintText: "Correo del Usuario",
                  helperText: "minimo 10 letras",
                  keyboardType: TextInputType.emailAddress,
                ),
                   SizedBox(height: 20),
                CustonInputField(
                  labelText: "Password",
                  hintText: "Contraseña del Usuario",
                  helperText: "minimo 10 letras",
                  obscureText: true ,
                ),
              ],
            ),
          ),
        ));
  }
}
