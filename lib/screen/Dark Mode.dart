import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/Dark_mode_provider.dart';

class DarkModeScreen extends StatefulWidget {
  const DarkModeScreen({Key? key}) : super(key: key);

  @override
  State<DarkModeScreen> createState() => _DarkModeScreenState();
}

int value = 0;

class _DarkModeScreenState extends State<DarkModeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          Consumer<Dark_mode_Provider>(builder: (context, thememode, child) {
            return value == 0
                ? IconButton(
                    onPressed: () {
                      value = 1;
                      thememode.settheme(ThemeMode.dark);
                    },
                    icon: const Icon(Icons.dark_mode_outlined))
                : IconButton(
                    onPressed: () {
                      value = 0;
                      thememode.settheme(ThemeMode.light);
                    },
                    icon: const Icon(Icons.light_mode_outlined));
          })
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
              child: Text(
            "Theme Mode Using Provider",
            style: TextStyle(fontSize: 30),
          ))
        ],
      ),
    );
  }
}
