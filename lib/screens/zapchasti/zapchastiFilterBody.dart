import '../../data/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/constants/textStyles.dart';

class ZapchastiFilterBody extends StatefulWidget {
  const ZapchastiFilterBody({super.key});

  @override
  State<ZapchastiFilterBody> createState() => _ZapchastiFilterBodyState();
}

int selectedIndexSos = 1;
int selectedIndexNal = 1;

bool isRastomojen = false;
bool withPhoto = false;
// TextStyle ts = const TextStyle(
//   fontFamily: 'Gilroy',
//   fontStyle: FontStyle.normal,
//   fontWeight: FontWeight.w400,
//   fontSize: 14,
//   letterSpacing: 1,
//   color: grey87,
// );
BoxDecoration bd = BoxDecoration(
  // color: const Color(0xffF0F0F0),
  color: greyc1,
  borderRadius: BorderRadius.circular(8),
);

class _ZapchastiFilterBodyState extends State<ZapchastiFilterBody> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                closeBody(),
                sostoyania(maxWidth),
                filterBody_1(),
                filterBody_2(),
                nalichie(maxWidth),
                filterBody_3(context),
              ],
            ),
          ),
        ),
        button(context),
      ],
    );
  }

  Container nalichie(double maxWidth) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 67,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Наличие',
            style: ts87_14_400_1,
          ),
          Container(
            height: 44,
            width: double.infinity,
            padding: const EdgeInsets.all(4),
            decoration: bd,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                nalichChoiceContainer(1, 'Все', maxWidth),
                nalichChoiceContainer(2, 'В наличии', maxWidth),
                nalichChoiceContainer(3, 'На заказ', maxWidth),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Positioned button(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height - 130,
      left: 20,
      width: MediaQuery.of(context).size.width - 40,
      height: 50,
      child: GestureDetector(
        onTap: () {
          // print('object');
        },
        child: Container(
          decoration: BoxDecoration(
            color: color_green,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Center(
            child: Text(
              'Подтвердить',
              // style: TextStyle(
              //   fontFamily: 'Gilroy',
              //   fontStyle: FontStyle.normal,
              //   fontWeight: FontWeight.w600,
              //   fontSize: 18,
              //   color: whitef4,
              // ),
              style: tsf4_18_600_0,
            ),
          ),
        ),
      ),
    );
  }

  SizedBox filterBody_3(BuildContext context) {
    return SizedBox(
      // height: 192,
      width: double.infinity,
      child: SizedBox(
        height: 86,
        child: filterBody_pod_3(context, 'Цена (KZT)', 'От', 'До'),
      ),
    );
  }

  Column filterBody_pod_3(
      BuildContext context, String label, String input_1, String input_2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: ts87_14_400_1,
        ),
        SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              filterBody_pod_pod_3(context, input_1),
              filterBody_pod_pod_3(context, input_2),
            ],
          ),
        )
      ],
    );
  }

  Widget filterBody_pod_pod_3(BuildContext context, String input_label) {
    return SizedBox(
      // height: 60,
      // padding: EdgeInsets.all(8),
      width: (MediaQuery.of(context).size.width - 60) / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            input_label,
            // style: const TextStyle(
            //   fontFamily: 'Gilroy',
            //   fontStyle: FontStyle.normal,
            //   fontWeight: FontWeight.w600,
            //   fontSize: 12,
            //   letterSpacing: -0.16,
            //   color: black33,
            // ),
            style: ts33_12_600_01,
          ),
          Container(
            height: 44,
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: bd,
            child: TextField(
              keyboardType: TextInputType.number,
              // textCapitalization:
              //     TextCapitalization.characters,
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                // focusedBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(4),
                //   borderSide: BorderSide.none,
                // ),
                filled: true,
                fillColor: whitef4,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container filterBody_2() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      // height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'С фото',
            // style: TextStyle(
            //   fontFamily: 'Gilroy',
            //   fontStyle: FontStyle.normal,
            //   fontWeight: FontWeight.w600,
            //   fontSize: 14,
            //   letterSpacing: 1,
            //   color: black33,
            // ),
            style: ts33_14_600_1,
          ),
          Checkbox(
            value: withPhoto,
            activeColor: black33,
            checkColor: whitef4,
            splashRadius: 20,
            onChanged: ((value) {
              setState(() {
                withPhoto = !withPhoto;
              });
            }),
          )
        ],
      ),
    );
  }

  SizedBox filterBody_1() {
    return SizedBox(
      // height: 218,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          filtersBody_pod_1(
            true,
            label: 'Регионы',
            icon: const Icon(
              Icons.location_on,
              color: grey87,
              size: 20,
            ),
            'Все регионы',
          ),
          const SizedBox(height: 20),
          filtersBody_pod_1(
            true,
            'Категория запчасти',
            label: 'Выберите категорию запчасти',
            icon: const Icon(
              // CupertinoIcons.car_detailed,
              Icons.airline_seat_legroom_reduced_outlined,
              color: grey87,
              size: 20,
            ),
          ),
          const SizedBox(height: 20),
          filtersBody_pod_1(
            true,
            'Выбор марки/модели',
            label: 'Выберите марку машины',
            icon: const Icon(
              CupertinoIcons.car_detailed,
              color: grey87,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }

  SizedBox filtersBody_pod_1(bool isLabel, String text,
      {String? label, Icon? icon}) {
    return SizedBox(
      // height: isLabel ? 67 : 44,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isLabel
              ? Text(
                  label!,
                  style: ts87_14_400_1,
                )
              : const SizedBox(),
          const SizedBox(height: 9),
          Container(
            // height: 44,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: bd,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isLabel ? icon! : const SizedBox(),
                    SizedBox(width: isLabel ? 8 : 0),
                    Text(
                      text,
                      // style: const TextStyle(
                      //   fontFamily: 'Gilroy',
                      //   fontStyle: FontStyle.normal,
                      //   fontWeight: FontWeight.w400,
                      //   fontSize: 14,
                      //   letterSpacing: -0.16,
                      //   color: black33,
                      // ),
                      style: ts33_14_400_01,
                    )
                  ],
                ),
                const Expanded(child: SizedBox()),
                const Icon(
                  Icons.chevron_right,
                  size: 20,
                  color: black11,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container sostoyania(double maxWidth) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 67,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Состояние',
            style: ts87_14_400_1,
          ),
          Container(
            height: 44,
            width: double.infinity,
            padding: const EdgeInsets.all(4),
            decoration: bd,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                sostChoiceContainer(1, 'Все', maxWidth),
                sostChoiceContainer(2, 'Новая', maxWidth),
                sostChoiceContainer(3, 'Б/У', maxWidth),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget sostChoiceContainer(int i, String name, double maxWidth) {
    bool isSel = i == selectedIndexSos;
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndexSos = i;
        });
      },
      child: Container(
        // height: 36,
        // width: 110,
        width: (maxWidth - 8 - 40) / 3,

        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: isSel ? black33 : null,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            name,
            // style: TextStyle(
            //   fontFamily: 'Gilroy',
            //   fontStyle: FontStyle.normal,
            //   fontWeight: isSel ? FontWeight.w600 : FontWeight.w400,
            //   fontSize: 14,
            //   // height: 20,
            //   letterSpacing: -0.16,
            //   color: isSel ? whitef4 : black33,
            // ),
            style: isSel ? tsf4_14_600_01 : ts33_14_400_01,
          ),
        ),
      ),
    );
  }

  Widget nalichChoiceContainer(int i, String name, double maxWidth) {
    bool isSel = i == selectedIndexNal;
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndexNal = i;
        });
      },
      child: Container(
        // height: 36,
        // width: 110,
        width: (maxWidth - 8 - 40) / 3,
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: isSel ? black33 : null,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            name,
            // style: TextStyle(
            //   fontFamily: 'Gilroy',
            //   fontStyle: FontStyle.normal,
            //   fontWeight: isSel ? FontWeight.w600 : FontWeight.w400,
            //   fontSize: 14,
            //   // height: 20,
            //   letterSpacing: -0.16,
            //   color: isSel ? whitef4 : black33,
            // ),
            style: isSel ? tsf4_14_600_01 : ts33_14_400_01,
          ),
        ),
      ),
    );
  }

  Widget closeBody() {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Row(
              children: [
                const Icon(
                  Icons.close,
                  // size: 14.14,
                  size: 16.14,
                  color: black11,
                ),
                const SizedBox(width: 12),
                Text(
                  'Фильтры',
                  // style: TextStyle(
                  //   fontFamily: 'Gilroy',
                  //   fontStyle: FontStyle.normal,
                  //   fontWeight: FontWeight.w500,
                  //   fontSize: 16,
                  //   // height: 20,
                  //   letterSpacing: 1,
                  //   color: black11,
                  // ),
                  style: ts11_16_500_1,
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Icon(
                CupertinoIcons.refresh_bold,
                // size: 12.19,
                size: 14.19,
                color: color_green,
              ),
              const SizedBox(width: 12),
              Text(
                'Сбросить',
                // style: TextStyle(
                //   fontFamily: 'Gilroy',
                //   fontStyle: FontStyle.normal,
                //   fontWeight: FontWeight.w500,
                //   fontSize: 16,
                //   // height: 20,
                //   letterSpacing: 1,
                //   color: color_green,
                // ),
                style: tsgr_16_500_1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
