

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return  CupertinoAlertDialog(
            title:  const Text("Titulo "),
            content:  const Column(mainAxisSize: MainAxisSize.min, children: [
              Text(
                  "IOS"),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100.0,
                style: FlutterLogoStyle.stacked,
              )
            ]),
              actions: [

              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancelar", style: TextStyle(color: Color.fromARGB(255, 255, 7, 7))),),
                   TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Ok"))
            ],
            
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15)),
            title: const Text("Titulo"),
            content: const Column(mainAxisSize: MainAxisSize.min, children: [
              Text(
                  "Android"),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100.0,
                style: FlutterLogoStyle.stacked,
              )
            ]),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancelar",
                    style: TextStyle(color: Color.fromARGB(255, 255, 7, 7))),
              ),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Ok")),
                  
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          //elevatedButtonTheme
          // style: ElevatedButton.styleFrom(
          //   backgroundColor: AppThemes.primary,
          //   elevation: 16.0,
          //   shape: const StadiumBorder()
          // ),
          // onPressed: () => displayDialogAndroid(context),
          
          // onPressed: () => displayDialogIOS(context),
          onPressed: () => Platform.isAndroid 
          ? displayDialogIOS(context)
          : displayDialogAndroid(context),

          

          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Mostrar alerta',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
