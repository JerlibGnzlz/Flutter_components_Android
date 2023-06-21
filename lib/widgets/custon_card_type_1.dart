import "package:flutter/material.dart";
import "../themes/app_theme.dart";


class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
        const ListTile(
          leading: Icon(
            Icons.photo_album,
            color: AppThemes.primary,
          ),
          title: Text('Soy una card',),
          subtitle: Text(
              'Commodo consectetur ut voluptate Lorem cupidatat et id duis ipsum deserunt.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            TextButton(
              onPressed: () {},
               child:const Text('Cancel')),
                TextButton(
                  onPressed: () {},
                   child: const Text('ok'))
          ],),
        )
      ]),
    );
  }
}
