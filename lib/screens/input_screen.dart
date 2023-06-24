import 'package:flutter/material.dart';
import '../widgets/custon_input_fields.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      "firt_name": "",
      "last_name": "",
      "email": "",
      "password": "",
      "rol": ""
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text("input y Form"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              onChanged: () {},
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  CustonInputField(
                    labelText: "Nombre",
                    hintText: "Nombre del Usuario",
                    helperText: "minimo 3 letras",
                    formProperty: 'firt_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 20),
                  CustonInputField(
                    labelText: "Apellido",
                    hintText: "Apellido del Usuario",
                    helperText: "minimo 6 letras",
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 20),
                  CustonInputField(
                    labelText: "Correo",
                    hintText: "Correo del Usuario",
                    helperText: "minimo 10 letras",
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 20),
                  CustonInputField(
                    labelText: "Password",
                    hintText: "Contraseña del Usuario",
                    helperText: "minimo 10 letras",
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 20),
                  DropdownButtonFormField(
                    value: "Admin",
                    items: const [
                      DropdownMenuItem(value: "Admin", child: Text("Admin")),
                      DropdownMenuItem(value: "superUser", child: Text("superUser")),
                      DropdownMenuItem(value: "dev.jr", child: Text("dev.jr")),
                      DropdownMenuItem(value: "seo", child: Text("seo"))
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues["role"] = value ?? "Admin";
                    },
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    child: ElevatedButton(
                      child: const Center(
                        child: Text("Guardar"),
                      ),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!myFormKey.currentState!.validate()) {
                          print("formulario no validado");
                          return;
                        }
                        //  todo:imprimir valores dek formulario
                        print(formValues);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
