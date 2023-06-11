import '../../data/constants/colors.dart';
import '../../screens/single_adv_body.dart/detailsBody/detailsBody.dart';
import '../../screens/single_adv_body.dart/photoCarousel.dart';
import 'package:flutter/material.dart';

import '../../data/constants/textStyles.dart';

List details = [
  'Город',
  'Состояние',
  'Тип',
  'Диаметр',
  'Крепеж (PCD)',
];
List detailsOtwet = [
  'Алматы',
  'Б/У',
  'Сборные',
  'R20',
  '5x120',
];
String opisanie = 'Среди опций есть контурная подсветка (30 цветов на выбор)'
    ' и электропривод передних сидений. Заявлены скребок для льда.Среди опций '
    'есть контурная подсветка (30 цветов на выбор) и электропривод'
    'Среди опций есть контурная подсветка (30 цветов на выбор)'
    ' и электропривод передних сидений. Заявлены скребок для льда.Среди опций '
    'есть контурная подсветка (30 цветов на выбор) и электропривод'
    ' передних сидений. Заявлены скребок для льда.';

// TextStyle ts = const TextStyle(
//   fontSize: 16,
//   fontWeight: FontWeight.w600,
//   letterSpacing: 0.64,
//   fontFamily: 'Gilroy',
//   color: black11,
// );
int n = 1250;

// TextStyle ts2 = const TextStyle(
//   fontSize: 12,
//   color: black55,
//   fontFamily: 'Gilroy-Medium',
//   letterSpacing: 0.8,
// );

class ZapchastSingleAdvBody extends StatefulWidget {
  const ZapchastSingleAdvBody({super.key});
  @override
  State<ZapchastSingleAdvBody> createState() => _ZapchastSingleAdvBodyState();
}

class _ZapchastSingleAdvBodyState extends State<ZapchastSingleAdvBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        children: [
          Column(
            children: [
              const SizedBox(height: 12),
              const PhotoCarousel(
                imageUrls: [],
              ),
              namePrice(),
              detailsBody(details, detailsOtwet, opisanie),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                margin: const EdgeInsets.symmetric(horizontal: 7),
                child: numberDate(n, ts55_12_500_08),
              ),
              const SizedBox(height: 70),
            ],
          ),
        ],
      ),
    );
  }
}

Widget namePrice() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: Container(
                padding: EdgeInsets.only(right: 45),
                child: Text(
                  'LexusLC500asdfghkjhgfnjkdsamkldmjkl',
                  maxLines: 1,
                  softWrap: true,
                  // style: TextStyle(
                  //   fontSize: 20,
                  //   overflow: TextOverflow.ellipsis,
                  //   color: black11,
                  //   fontWeight: FontWeight.w700,
                  //   fontFamily: 'Gilroy',
                  //   letterSpacing: 0.8,
                  // ),
                  style: ts11_20_700_08_el,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          '20 000 000KZT',
          // style: TextStyle(
          //   color: color_green,
          //   fontSize: 16,
          //   fontWeight: FontWeight.w700,
          //   fontFamily: 'Gilroy',
          //   letterSpacing: 0.8,
          // ),
          style: tsgr_16_700_08,
        ),
      ],
    ),
  );
}

Row numberDate(int n, TextStyle ts) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Icon(
        Icons.remove_red_eye_outlined,
        color: black55,
        size: 10,
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        child: Text(
          '${(n / 1000).floor()} ${(n % 1000)}',
          style: ts,
        ),
      ),
      const Icon(
        Icons.circle_sharp,
        color: black55,
        size: 3,
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        child: Text(
          '7 октября',
          style: ts,
        ),
      ),
    ],
  );
}

SizedBox detailsBody(List details, List details_otvet, String opisanie) {
  return SizedBox(
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        detailsInfoBody(details, details_otvet),
        // opisanieBody(opisanie),
        OpisanieBody(opisanie: opisanie),
        // opsii_character(options),
      ],
    ),
  );
}

// Container opisanieBody(String opisanie) {
//   return Container(
//     width: double.infinity,
//     padding: const EdgeInsets.all(16),
//     margin: const EdgeInsets.symmetric(vertical: 6),
//     decoration: BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.circular(12),
//     ),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Описание продовца',
//           style: ts11_16_600_06,
//         ),
//         const SizedBox(height: 8),
//         ExpandableText(
//           opisanie,
//           trimLines: 3,
//         ),
//       ],
//     ),
//   );
// }

Container detailsInfoBody(List details, List detailsOtwet) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(16),
    margin: const EdgeInsets.symmetric(vertical: 6),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: details
          .map(
            (i) => SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          i,
                          // style: const TextStyle(
                          //   fontSize: 14,
                          //   fontWeight: FontWeight.w400,
                          //   letterSpacing: 0.8,
                          //   color: grey87,
                          //   fontFamily: 'Gilroy',
                          // ),
                          style: ts87_14_400_1,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.only(right: 3),
                        child: Text(
                          detailsOtwet[details.indexOf(i)],
                          // style: const TextStyle(
                          //   fontSize: 14,
                          //   fontWeight: FontWeight.w500,
                          //   letterSpacing: 0.8,
                          //   color: black11,
                          //   fontFamily: 'Gilroy',
                          // ),
                          style: ts11_14_500_08,
                        ),
                      )),
                    ],
                  ),
                  details.last != i
                      ? Container(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          child: const Divider(
                            thickness: 1,
                            color: greyf0,
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          )
          .toList(),
    ),
  );
}
