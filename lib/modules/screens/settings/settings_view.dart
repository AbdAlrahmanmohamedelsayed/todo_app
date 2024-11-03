import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var media = MediaQuery.of(context);
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          alignment: Alignment.topLeft,
          color: theme.primaryColor,
          width: media.size.width,
          height: media.size.height * .22,
          child: Text(
            'Setting',
            style: theme.textTheme.bodyLarge
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
