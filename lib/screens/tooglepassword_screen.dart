import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../services/bloc/toggle_bloc/toggle_bloc.dart';

class ToogleBottomPassword extends StatelessWidget {
  const ToogleBottomPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TogglePasswordButton'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<ToggleBloc, ToggleState>(
              builder: (context, state) {
                // print(state);
                return TextField(
                  obscureText: (state as ToggleInitialState).isOn,
                  decoration: InputDecoration(
                    labelText: 'Enter your password',
                    suffixIcon: IconButton(
                      onPressed: () => context.read<ToggleBloc>().add(
                            ToggleEventSubmit(),
                          ),
                      icon: (state).isOn ? const FaIcon(FontAwesomeIcons.eye): const FaIcon(FontAwesomeIcons.eyeSlash),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}