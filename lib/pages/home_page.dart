import 'package:flutter/material.dart';
import 'package:light_vs_dark/components/box.dart';
import 'package:light_vs_dark/components/button.dart';
import 'package:light_vs_dark/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: MyBox(
            child: MyButton(
              color:Theme.of(context).colorScheme.primary,
              onTap: () {
                Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
              },
            ),
            color: Theme.of(context).colorScheme.secondary),
      ),
    );
  }
}
