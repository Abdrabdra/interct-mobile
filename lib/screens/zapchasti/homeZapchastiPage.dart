import '../../data/constants/colors.dart';
import '../../data/constants/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/models/avto_request_model.dart';
import '../../widgets/bottom_nav_bar.dart';

import '../home_page/components/filterBody.dart';
import '../home_page/foundedAdvers.dart';
import '../home_page/search_box.dart';

AvtoRequestModel _arm =
    AvtoRequestModel(withPhoto: false, isRastomojen: false, page: 1);

class HomeZapchastiPage extends StatefulWidget {
  const HomeZapchastiPage({super.key});

  @override
  State<HomeZapchastiPage> createState() => _HomeZapchastiPageState();
}

class _HomeZapchastiPageState extends State<HomeZapchastiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
        backgroundColor: black11,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        // bottom: TabBar(
        //   tabs: [
        //     Tab(icon: Icon(Icons.directions_car)),
        //     Tab(icon: Icon(Icons.directions_transit)),
        //     Tab(icon: Icon(Icons.directions_bike)),
        //   ],
        // ),
        title: Container(
          margin: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Expanded(child: SearchBox()),
            ],
          ),
        ),
      ),
      extendBody: true,
      backgroundColor: whitef4,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              Column(
                children: [
                  dobavitCar(),
                  // const FoundedAdvText(
                  //   isCar: false,
                  //   length: 0,
                  // ),
                  Container(
                    margin: const EdgeInsets.only(
                      // top: 24,
                      top: 12,
                      bottom: 0,
                    ),
                    height: 38,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          // '${state.list.length} obyavlenia',
                          '0 obyavlenia',
                          // style: TextStyle(
                          //   fontSize: 14,
                          //   fontWeight: FontWeight.w600,
                          //   // color: Color(0xFF878787),
                          //   color: grey87,
                          //   letterSpacing: 1,
                          // ),
                          style: ts87_14_600_1,
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              // backgroundColor: Colors.white,
                              backgroundColor: whitef4,
                              isScrollControlled: true,
                              builder: (context) => SizedBox(
                                height: MediaQuery.of(context).size.height - 50,
                                // margin: const EdgeInsets.symmetric(horizontal: 0),
                                child: AvtoFilterBody(
                                  bannerRecall: false,
                                  starm: (AvtoRequestModel arm) {
                                    setState(() {
                                      _arm = arm;
                                    });
                                  },
                                ),
                                // ),
                              ),
                            );
                          },
                          child: Container(
                            width: 114,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 12),
                            decoration: BoxDecoration(
                              // color: const Color(0xFF2DC36A),
                              color: color_green,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Фильтры',
                                  // style: TextStyle(
                                  //   fontSize: 14,
                                  //   fontStyle: FontStyle.normal,
                                  //   fontWeight: FontWeight.w600,
                                  //   color: Colors.white,
                                  //   letterSpacing: 1,
                                  //   fontFamily: 'Gilroy',
                                  // ),
                                  style: tswh_14_600_1,
                                ),
                                // Icon(
                                //   Icons.filter,
                                //   size: 14,
                                //   // color: Colors.white,
                                //   color: whitef4,
                                // )
                                const SizedBox(
                                  width: 16,
                                  height: 16,
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/filter_icon.png'),
                                    fit: BoxFit.contain,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // const AdvertisementBody(isCar: false),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    10,
                    // (index) => AdvertisementTile(isCar: false),
                    (index) => SizedBox(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
          maxWidth: MediaQuery.of(context).size.width, selectedIndex: 0),
    );
  }

  Widget dobavitCar() {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/podachaObyavlenie');
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 19),
        padding: const EdgeInsets.symmetric(vertical: 16.5),
        decoration: BoxDecoration(
          color: black33,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              CupertinoIcons.car_detailed,
              size: 15,
              color: whitef4,
            ),
            Text(
              'Добавить машину',
              // style: TextStyle(
              //   fontSize: 18,
              //   fontWeight: FontWeight.w600,
              //   color: whitef4,
              //   fontFamily: 'Gilroy',
              // ),
              style: tsf4_18_600_0,
            )
          ],
        ),
      ),
    );
  }
}
