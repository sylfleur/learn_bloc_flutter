import 'package:flutter/material.dart';

import '../../widgets/header_title/header_title.dart';

class RawgHomeScreen extends StatelessWidget {
  const RawgHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const HeaderTitlle(),
          ],
        ),
      ),
    );
  }
}
