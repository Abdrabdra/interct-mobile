// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:interct_2/data/constants/colors.dart';
import 'package:interct_2/data/constants/sized_boxes.dart';
import 'package:interct_2/data/constants/textStyles.dart';
import 'package:interct_2/data/models/single_avto_adv_model.dart';

int _choosedIndex = -1;

class ZabronPage extends StatefulWidget {
  const ZabronPage({
    Key? key,
    required this.saam,
  }) : super(key: key);
  final SingleAvtoAdvModel saam;

  @override
  State<ZabronPage> createState() => _ZabronPageState();
}

class _ZabronPageState extends State<ZabronPage> {
  double maxWidth(BuildContext context) => MediaQuery.of(context).size.width;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _choosedIndex = -1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      extendBody: true,
      backgroundColor: whitef4,
      body: Column(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sb_h10(),
                  SizedBox(
                    width: maxWidth(context) - 24,
                    child: Text(
                      'Дата отправления: ${widget.saam.arrivalDate}',
                      style: ts11_16_500_1,
                    ),
                  ),
                  sb_h10(),
                  Container(
                    width: maxWidth(context) - 24,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: black11,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: List.generate(
                        10,
                        (index) => InkWell(
                          onTap: () {
                            index % 3 == 0
                                ? setState(() {
                                    _choosedIndex = index;
                                  })
                                : null;
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: index % 3 == 0 ? color_green : grey87,
                                width: 1,
                              ),
                              color: index == _choosedIndex
                                  ? color_green
                                  : whitef4,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              '${index + 31}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: index == _choosedIndex
                                    ? whitef4
                                    : index % 3 == 0
                                        ? color_green
                                        : grey87,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          _choosedIndex != -1
              ? Container(
                  width: maxWidth(context),
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 20),
                  decoration: BoxDecoration(
                    color: whitef4,
                    boxShadow: [
                      BoxShadow(
                        color: black11.withOpacity(0.4),
                        blurRadius: 4,
                        // offset: Offset(0, -2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Выбрано ${_choosedIndex + 31}',
                            style: ts11_14_600_05,
                          ),
                          sb_h6(),
                          Text(
                            'Цена 6700',
                            style: ts11_14_400_08,
                          ),
                        ],
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          //
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: black11,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'Бронировать',
                            style: tsf4_16_600_0,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: color_green,
      automaticallyImplyLeading: false,
      leadingWidth: 30,
      leading: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          margin: EdgeInsets.only(left: 12),
          child: Icon(
            Icons.close,
            color: whitef4,
          ),
        ),
      ),
      centerTitle: false,
      title: Text(
        '${widget.saam.cityFrom} - ${widget.saam.cityTo}',
        style: tsf4_16_600_0,
      ),
    );
  }
}
