import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Card wiget"),
      ),
      body: ListView(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imagenUrl:
                "https://res.cloudinary.com/practicaldev/image/fetch/s--Qth_yXk1--/c_imagga_scale,f_auto,fl_progressive,h_900,q_auto,w_1600/https://thepracticaldev.s3.amazonaws.com/i/9amcr9hg112df5ckybbh.png",
            name: 'phoneHands',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imagenUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNWWaC1PxK5LCGPm6kRRe0n_wNL5r-nANNFP17EaGTLx0uz54XnIK5fxt9HbNa8mFy-F4&usqp=CAU",
            name: null,
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imagenUrl:
                "https://dkrn4sk0rn31v.cloudfront.net/uploads/2019/02/04115610/capa-flutter.png",
            name: 'movil  and linux',
          )
        ],
      ),
    );
  }
}
