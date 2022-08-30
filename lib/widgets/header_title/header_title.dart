import 'package:bloc_form/widgets/text_style.dart';
import 'package:flutter/material.dart';

class HeaderTitlle extends StatelessWidget {
  const HeaderTitlle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heighT = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.amber,
      height: heighT / 5,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                TitleWidget(text: 'Welcome Fleurian', size: 20),
                TitleWidget(
                  text: 'Que voulez-vous jouer aujourd\'hui',
                  size: 15,
                ),
              ],
            ),
            CircleAvatar(
              child: Image.asset(
                'assets/images/pic_fleurian.jpeg',
              ),
            )
          ],
        ),
      ),
    );
  }
}
