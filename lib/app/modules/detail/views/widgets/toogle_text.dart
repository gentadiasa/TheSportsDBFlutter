import 'package:flutter/material.dart';

class ToggleText extends StatelessWidget {
  const ToggleText({
    super.key,
    required this.toogleTittle,
    required this.onPressed,
  });

  final String toogleTittle;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(toogleTittle),
    );
  }
}
