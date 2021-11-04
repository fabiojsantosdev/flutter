import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {required this.tex1, required this.tex2, required this.tex3, Key? key})
      : super(key: key);

  final String tex1;
  final String tex2;
  final String tex3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(tex1), Text(tex2), Text(tex3)],
      ),
    );
  }
}
