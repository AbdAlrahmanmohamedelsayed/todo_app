import 'package:flutter/material.dart';

class OnboardText extends StatelessWidget {
  final String tittle;
  final String discrebtion;
  const OnboardText(
      {required this.tittle, required this.discrebtion, super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 480,
          ),
          Text(tittle,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall?.copyWith(
                fontSize: 22,
                color: theme.primaryColor,
              )),
          const SizedBox(
            height: 20,
          ),
          Text(discrebtion,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall?.copyWith(fontSize: 19)),
        ],
      ),
    );
  }
}
