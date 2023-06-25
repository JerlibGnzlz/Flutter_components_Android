import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;

  bool _sliderCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider & ckecks"),
      ),
      body: Column(children: [
        Slider(
          activeColor: AppThemes.primary,
          inactiveColor: Colors.blueAccent,
          min: 60,
          max: 400,
          value: _sliderValue,
          onChanged:_sliderCheck ? (value) {
            setState(() {
              _sliderValue = value;
            });
          }: null,
        ),
        CheckboxListTile.adaptive(
          title: const Text("Habilitar y desabilitar la imagen"),
          checkColor: Colors.red,
          side:const BorderSide(color: Colors.green),
          value: _sliderCheck,
           onChanged: (value) {
             setState(() {
                 _sliderCheck = value ?? false;
             });
           },),

        SwitchListTile(
            title: const Text("Habilitar Slider"),
            activeColor: Colors.yellowAccent,
            activeTrackColor: AppThemes.primary,
            value: _sliderCheck,
            onChanged: (value) {
              setState(() {
                 _sliderCheck = value;
              });
            },),

            const AboutListTile(
            icon: Icon(Icons.info_outline_rounded),
         
            
            ),


        Expanded(
          child: SingleChildScrollView(
            child: Image(
              image: const NetworkImage(
                  "https://w7.pngwing.com/pngs/723/728/png-transparent-iron-man-iron-man-s-superhero-fictional-character-film.png"),
              fit: BoxFit.fill,
              width: _sliderValue,
            ),
          ),
        ),
        const SizedBox(width: 100)
      ]),
    );
  }
}
