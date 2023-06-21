import 'package:flutter/material.dart';
// import 'package:flutter_components/models/menu_option.dart';
import 'package:flutter_components/router/app_router.dart';
// ignore: unused_import
import 'package:flutter_components/screens/screens.dart';
import 'package:flutter_components/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final menusOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Componentes de Flutter"),
      ),
      body: ListView.separated(
        itemCount: menusOptions.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) => ListTile(
          leading: Icon(
            menusOptions[index].icon,
            color: AppThemes.primary,
          ),
          title: Text(menusOptions[index].name),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (context) => const Listview1Screen(),
            // ); //otra opcion de definir RUTAS
            Navigator.pushNamed(
                context, menusOptions[index].route); //para definir las RUTAS
          },
        ),
      ),
    );
  }
}
