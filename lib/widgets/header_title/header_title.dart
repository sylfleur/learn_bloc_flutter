import 'package:flutter/material.dart';

class HeaderTitlle extends StatelessWidget {
  const HeaderTitlle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const <Widget>[
                Text('Welcome Fleurian'),
                Text('Welcome Fleurian'),
              ],
            ),
            const CircleAvatar()
          ],
        ),
      ),
    );
  }
}
