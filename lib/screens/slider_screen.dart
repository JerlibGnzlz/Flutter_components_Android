import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider & ckecks"),
      ),
      body: SingleChildScrollView(
        child: Column(
           children: [
            Slider(
              activeColor: AppThemes.primary,
              inactiveColor: Colors.blueAccent,
              min: 60,
              max: 400,
              value: _sliderValue,
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
      
             Image(
              image:const NetworkImage(
                  "https://w7.pngwing.com/pngs/723/728/png-transparent-iron-man-iron-man-s-superhero-fictional-character-film.png"),
              fit: BoxFit.fill,
               width:_sliderValue,
            ),
           const SizedBox(width: 100)
          ]),
      ),
      
    );
  }
}
