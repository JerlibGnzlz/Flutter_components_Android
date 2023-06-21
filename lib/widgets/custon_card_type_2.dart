import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imagenUrl;
  final String? name;

  const CustomCardType2({super.key,
   required this.imagenUrl,
    required this.name
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      shadowColor: AppThemes.primary.withOpacity(0.5),
      elevation: 30,
      child: Column(children: [
        FadeInImage(
          
          image: NetworkImage(imagenUrl),
          placeholder: const AssetImage("assets/jar-loading.gif"),
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300),
        ),

        if(name!=null)
        Container(
          margin: const EdgeInsets.only(right: 15),
          alignment: AlignmentDirectional.centerEnd,
          padding: const EdgeInsets.only(bottom: 10, top: 10),
          child:  Text(name!),
        ),
      ]),
    );
  }
}
