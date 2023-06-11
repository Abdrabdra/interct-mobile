import '../../data/constants/colors.dart';
import '../../data/constants/textStyles.dart';
import '../../screens/single_adv_body.dart/aapBar.dart';
import '../../screens/zapchasti/zapchastSingleAdvBody.dart';
import 'package:flutter/material.dart';

class ZapchastSingleAdvPage extends StatefulWidget {
  const ZapchastSingleAdvPage({super.key});

  @override
  State<ZapchastSingleAdvPage> createState() => _SingStateleAdvPage();
}

class _SingStateleAdvPage extends State<ZapchastSingleAdvPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SingleAdvAppBar(context),
      extendBody: true,
      // backgroundColor: const Color(0xFFF0F0F0),
      backgroundColor: whitef4,
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
        child: ZapchastSingleAdvBody(),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        height: 50,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2 - 20,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: black33,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Написать',
                // style: TextStyle(
                //   fontSize: 18,
                //   fontWeight: FontWeight.w600,
                //   color: whitef4,
                //   fontFamily: 'Gilroy',
                // ),
                style: tsf4_18_600_0,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 2 - 20,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: color_green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Позвонить',
                // style: TextStyle(
                //   fontSize: 18,
                //   fontWeight: FontWeight.w600,
                //   color: whitef4,
                //   fontFamily: 'Gilroy',
                // ),
                style: tsf4_18_600_0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
