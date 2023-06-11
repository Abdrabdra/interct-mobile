// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/constants/colors.dart';
import '../../data/constants/textStyles.dart';
import '../../../data/models/avto/comment_body_tile.dart';

// TextStyle ts = const TextStyle(
//   fontSize: 16,
//   fontWeight: FontWeight.w600,
//   letterSpacing: 0.64,
//   fontFamily: 'Gilroy',
//   color: black11,
// );

bool showOtvet = false;
// Color color_black = const Color(0xff333333);
// Color color_green = const Color(0xFF2DC36A);
// Color grey87 = const Color(0xFF878787);

class CommentsBody extends StatefulWidget {
  const CommentsBody({
    Key? key,
    required this.comments,
  }) : super(key: key);
  final List<CommentBodyTile> comments;

  @override
  State<CommentsBody> createState() => _CommentsBodyState();
}

class _CommentsBodyState extends State<CommentsBody> {
  @override
  Widget build(BuildContext context) {
    return commentsBody();
  }

  SizedBox commentsBody() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(widget.comments.length, (index) {
          return commentTile(false);
        }),
      ),
    );
  }

  Widget commentTile(bool isOtvet) {
    return Container(
      margin: isOtvet ? const EdgeInsets.only(left: 46) : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          commentInfo(isOtvet),
          isOtvet
              ? const SizedBox()
              : InkWell(
                  onTap: () {
                    setState(() {
                      showOtvet = !showOtvet;
                    });
                  },
                  child: Text(
                    showOtvet ? 'Скрыть' : 'Посмотреть ответы',
                    style: const TextStyle(
                      shadows: [
                        Shadow(color: color_green, offset: Offset(0, -5))
                      ],
                      color: Colors.transparent,
                      decoration: TextDecoration.underline,
                      decorationColor: color_green,
                      decorationThickness: 1,
                    ),
                  ),
                ),
          showOtvet
              ? Container(
                  margin: const EdgeInsets.only(left: 46),
                  child: Column(
                      children: List.generate(
                    5,
                    (index) => commentInfo(true),
                  )),
                )
              : const SizedBox()
        ],
      ),
    );
  }

  Container commentInfo(bool isOtvet) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isOtvet
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              CupertinoIcons.arrow_uturn_left,
                              size: 12,
                              color: grey87,
                            ),
                            const SizedBox(width: 12),
                            Text(
                              'Ответ Димашу',
                              // style: TextStyle(
                              //   fontSize: 12,
                              //   fontWeight: FontWeight.w500,
                              //   color: grey87,
                              //   letterSpacing: 0.8,
                              //   fontFamily: 'Gilroy',
                              // ),
                              style: ts87_12_500_0,
                            )
                          ],
                        )
                      : const SizedBox(),
                  SizedBox(height: isOtvet ? 12 : 0),
                  Text(
                    'Диана',
                    // style: TextStyle(
                    //   fontSize: 14,
                    //   fontWeight: FontWeight.w600,
                    //   color: black11,
                    //   letterSpacing: 0.8,
                    //   fontFamily: 'Gilroy',
                    // ),
                    style: ts11_14_600_0,
                  )
                ],
              ),
              const Icon(
                Icons.favorite_border,
                size: 24,
                color: color_green,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            margin: const EdgeInsets.only(right: 30),
            child: Text(
              'Очень нравиться машина. Я бы хотел взять эту машину. Цена=Качество ',
              // style: TextStyle(
              //   fontSize: 14,
              //   height: 1.5,
              //   fontWeight: FontWeight.w400,
              //   color: grey87,
              // ),
              style: ts87_14_400_1_h15,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Expanded(
                child: SizedBox(height: 24),
              ),
              Text(
                'Ответить',
                style: TextStyle(
                  shadows: [Shadow(color: color_green, offset: Offset(0, -5))],
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationColor: color_green,
                  decorationThickness: 1,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
