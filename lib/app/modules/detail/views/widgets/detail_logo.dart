import 'package:flutter/material.dart';

class DetailImg extends StatelessWidget {
  const DetailImg({
    super.key,
    required this.imageNetwork,
  });

  final String imageNetwork;

  @override
  Widget build(BuildContext context) {
    return Image.network(imageNetwork);
  }
}
