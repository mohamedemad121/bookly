import 'package:bookley/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErr extends StatelessWidget {
  const CustomErr({super.key, required this.errMessege});
  final String errMessege;
  @override
  Widget build(BuildContext context) {
    return Text(errMessege, style: Styles.textStyle18);
  }
}
