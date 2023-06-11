// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:interct_2/data/constants/textStyles.dart';

import '../../data/constants/colors.dart';

class MoiBiletyPage extends StatefulWidget {
  const MoiBiletyPage({super.key});

  @override
  State<MoiBiletyPage> createState() => _MoiBiletyPageState();
}

class _MoiBiletyPageState extends State<MoiBiletyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      extendBody: true,
      backgroundColor: whitef4,
      body: Center(
        heightFactor: 7,
        child: Text(
          'Пустой',
          style: ts11_16_500_1,
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: black11,
      leading: InkWell(
        onTap: () => Navigator.of(context).pop(),
        child: Container(
          margin: EdgeInsets.only(left: 16),
          child: Icon(
            Icons.arrow_back,
            color: whitef4,
          ),
        ),
      ),
      title: Text(
        'Мои билеты',
        style: tsf4_16_600_0,
      ),
      centerTitle: false,
    );
  }
}
