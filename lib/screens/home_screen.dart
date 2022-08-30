import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'rawg_screen/rawg_home_screen.dart';
import 'tooglepassword_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ToogleBottomPassword(),
                  ),
                );
              },
              label: const Text(
                'Toggle PasswordButton',
              ),
              icon: const FaIcon(FontAwesomeIcons.eye),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RawgHomeScreen(),
                  ),
                );
              },
              label: const Text(
                'RAWGame',
              ),
              icon: const FaIcon(FontAwesomeIcons.gamepad),
            ),
          ],
        ),
      ),
    );
  }
}
