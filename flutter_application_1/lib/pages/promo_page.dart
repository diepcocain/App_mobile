import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({super.key});

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black26,
        child: Column(
          children: <Widget>[
            Container(
              height: 164,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(top: 18),
                    child: Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.pop(
                              context,
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, top: 12),
                            child: Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(
                                  color: Colors.black12,
                                  width: 0.8,
                                ),
                              ),
                              child: SvgPicture.asset(
                                "assets/vectors/ic_Left.svg",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 33),
                        const Padding(
                          padding: EdgeInsets.only(top: 24),
                          child: Center(
                            child: Text(
                              "Today's Promo",
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //              listView icons
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Container(
                      height: 48,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: 4, // Number of items in the list
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          switch (index) {
                            case 0: // Filter button
                              return Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, bottom: 10),
                                  child: Container(
                                    width: 74,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(4, 4),
                                          blurRadius: 3.0,
                                          spreadRadius: 2.0,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        SvgPicture.asset(
                                          "assets/vectors/ic_filter.svg",
                                        ),
                                        const Text(
                                          " Filter",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );

                            case 1: // Nearby button
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, bottom: 10),
                                child: Container(
                                  width: 83,
                                  height: 38,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xFF1D2D50),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(4, 4),
                                        blurRadius: 3.0,
                                        spreadRadius: 2.0,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        "assets/vectors/ic_current.svg",
                                      ),
                                      const Text(
                                        " Nearby",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );

                            case 2: // Above 4.5 button
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, bottom: 10),
                                child: Container(
                                  width: 97,
                                  height: 38,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(4, 4),
                                        blurRadius: 3.0,
                                        spreadRadius: 2.0,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        "assets/vectors/ic_star.svg",
                                      ),
                                      const Text(
                                        " Above 4.5",
                                      ),
                                    ],
                                  ),
                                ),
                              );

                            case 3: // Cheapest button
                              return Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, bottom: 10),
                                child: Container(
                                  width: 98,
                                  height: 38,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(4, 4),
                                        blurRadius: 3.0,
                                        spreadRadius: 2.0,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        "assets/vectors/ic_cheapest.svg",
                                      ),
                                      const Text(
                                        " Cheapest",
                                      ),
                                    ],
                                  ),
                                ),
                              );

                            default:
                              return const SizedBox
                                  .shrink(); // Empty widget for any other index
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //-----------------------------------------------------

            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 550,
                width: 345,
                child: ListView.builder(
                    itemCount: 3, // Number of items in the list
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      switch (index) {
                        case 0:
                          return Container(
                            padding: const EdgeInsets.all(8.0),
                            height: 366,
                            width: 346,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    const Padding(
                                        padding:
                                            EdgeInsets.only(left: 8.0, top: 8),
                                        child: Text(
                                          'Delics Italian Pizza',
                                          style: TextStyle(
                                            color: Color(0xFF3E4462),
                                            fontSize: 18,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            height: 0.06,
                                            letterSpacing: -0.24,
                                          ),
                                        )),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/vectors/ic_star.svg",
                                          ),
                                          const Text(" 5.0"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8.0),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          'ZindaBa zar, Sylhet',
                                          style: TextStyle(
                                            color: Color(0xFF7E7E7E),
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 0.10,
                                            letterSpacing: -0.24,
                                          ),
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: Text("1km"),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5.0),
                                Center(
                                  child: Container(
                                    width: 310,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5.0),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 230,
                                    width: 323,
                                    color: Colors.white,
                                    child: ListView.separated(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      itemCount: foods.length,
                                      scrollDirection: Axis.vertical,
                                      separatorBuilder: (context, index) {
                                        return const SizedBox(width: 16);
                                      },
                                      itemBuilder: (context, index) {
                                        final item = foods[index];

                                        switch (index) {
                                          case 0:
                                            return Column(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Container(
                                                      width: 100,
                                                      height: 123,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                            '${item.image}',
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      children: <Widget>[
                                                        const Text(
                                                          'Multigrain Pizza',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF3E4462),
                                                            fontSize: 16,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 0.08,
                                                            letterSpacing:
                                                                -0.24,
                                                          ),
                                                        ),
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 20.0),
                                                          child: Row(
                                                            children: [
                                                              Text("\$18.50"),
                                                              Text(
                                                                '  22.500',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFFC9C9C9),
                                                                  fontSize: 14,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  height: 0.10,
                                                                  letterSpacing:
                                                                      -0.24,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  top: 8.0),
                                                          child: Row(
                                                            children: <Widget>[
                                                              Container(
                                                                width: 20,
                                                                height: 20,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .cyan,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                ),
                                                                child:
                                                                    const Text(
                                                                        " %"),
                                                              ),
                                                              const Text(
                                                                'Free delivery ',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF7E7E7E),
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  height: 0.14,
                                                                  letterSpacing:
                                                                      -0.24,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 41,
                                                              bottom: 70),
                                                      height: 28,
                                                      width: 28,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14),
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            color: Colors.grey,
                                                            offset:
                                                                Offset(4, 4),
                                                            blurRadius: 2.0,
                                                            spreadRadius: 0.5,
                                                          ),
                                                        ],
                                                      ),
                                                      child: SvgPicture.asset(
                                                          'assets/vectors/ic_heart_favorite.svg'),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Container(
                                                      margin:
                                                        const EdgeInsets.only(right: 36),
                                                      height: 24,
                                                      width: 24,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color: Colors.white,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4)),
                                                      ),
                                                      child: SvgPicture.asset(
                                                          'assets/vectors/ic_vector.svg'),
                                                    ),
                                                    Container(
                                                      width: 88,
                                                      height: 26,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: const BoxDecoration(
                                                          color: Color(
                                                              0xFFF8F5F2)),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: 24,
                                                            height: 24,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                ShapeDecoration(
                                                              color: const Color(
                                                                  0xFFE1E1E1),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4)),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 16),
                                                          const Text(
                                                            '1',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF3E4462),
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.14,
                                                              letterSpacing:
                                                                  -0.24,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 16),
                                                          Container(
                                                            width: 24,
                                                            height: 24,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                ShapeDecoration(
                                                              color: Color(
                                                                  0xFF1D2D50),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            );

                                          case 1:
                                            return Column(
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Container(
                                                      width: 100,
                                                      height: 123,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                            '${item.image}',
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: 30.0,
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          Text(
                                                            'Chicken Pizza',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF3E4462),
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 0.08,
                                                              letterSpacing:
                                                                  -0.24,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 30.0),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  '\$20.50',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF3E4462),
                                                                    fontSize:
                                                                        14,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        0.10,
                                                                    letterSpacing:
                                                                        -0.24,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '  24.500',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFFC9C9C9),
                                                                    fontSize:
                                                                        14,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        0.10,
                                                                    letterSpacing:
                                                                        -0.24,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 15.0),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: <Widget>[
                                                                Container(
                                                                  width: 20,
                                                                  height: 20,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .cyan,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  ),
                                                                  child: Text(
                                                                      " %"),
                                                                ),
                                                                Text(
                                                                  'Delivery discount up to 3K',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF7E7E7E),
                                                                    fontSize:
                                                                        12,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        0.14,
                                                                    letterSpacing:
                                                                        -0.24,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 0, top: 20),
                                                      height: 28,
                                                      width: 28,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey,
                                                            offset:
                                                                Offset(4, 4),
                                                            blurRadius: 2.0,
                                                            spreadRadius: 0.5,
                                                          ),
                                                        ],
                                                      ),
                                                      child: SvgPicture.asset(
                                                          'assets/vectors/ic_heart_favorite.svg'),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          right: 36),
                                                      height: 24,
                                                      width: 24,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color: Colors.white,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4)),
                                                      ),
                                                      child: SvgPicture.asset(
                                                          'assets/vectors/ic_vector.svg'),
                                                    ),
                                                    Container(
                                                      width: 88,
                                                      height: 26,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                          color: Color(
                                                              0xFFF8F5F2)),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: 24,
                                                            height: 24,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                ShapeDecoration(
                                                              color: Color(
                                                                  0xFFE1E1E1),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4)),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 16),
                                                          Text(
                                                            '1',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF3E4462),
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.14,
                                                              letterSpacing:
                                                                  -0.24,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 16),
                                                          Container(
                                                            width: 24,
                                                            height: 24,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                ShapeDecoration(
                                                              color: Color(
                                                                  0xFF1D2D50),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            );

                                          default:
                                            return Container(); // Empty widget for any other index
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 82,
                                      height: 36,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF1D2D50),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "+",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              height: 0.14,
                                              letterSpacing: -0.24,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            'Add',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              height: 0.14,
                                              letterSpacing: -0.24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        //-----------------------------------
                        case 1:
                          return Container(
                            width: 345,
                            height: 20,
                            color: Color(131314),
                          );
// ------------------------------------------------------------------------------------------
                        case 2:
                          return Container(
                            padding: EdgeInsets.all(8.0),
                            height: 366,
                            width: 346,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    const Padding(
                                        padding:
                                            EdgeInsets.only(left: 8.0, top: 8),
                                        child: Text(
                                          'Delics Italian Pizza',
                                          style: TextStyle(
                                            color: Color(0xFF3E4462),
                                            fontSize: 18,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            height: 0.06,
                                            letterSpacing: -0.24,
                                          ),
                                        )),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/vectors/ic_star.svg",
                                          ),
                                          Text(" 5.0"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.0),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          'ZindaBa zar, Sylhet',
                                          style: TextStyle(
                                            color: Color(0xFF7E7E7E),
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 0.10,
                                            letterSpacing: -0.24,
                                          ),
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: Text("1km"),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.0),
                                Center(
                                  child: Container(
                                    width: 310,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 230,
                                    width: 323,
                                    color: Colors.white,
                                    child: ListView.separated(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      itemCount: foods.length,
                                      scrollDirection: Axis.vertical,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(width: 16);
                                      },
                                      itemBuilder: (context, index) {
                                        final item = foods[index];

                                        switch (index) {
                                          case 0:
                                            return Column(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Container(
                                                      width: 100,
                                                      height: 123,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                            '${item.image}',
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      children: <Widget>[
                                                        Text(
                                                          'Multigrain Pizza',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF3E4462),
                                                            fontSize: 16,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 0.08,
                                                            letterSpacing:
                                                                -0.24,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 20.0),
                                                          child: Row(
                                                            children: [
                                                              Text("\$18.50"),
                                                              Text(
                                                                '  22.500',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFFC9C9C9),
                                                                  fontSize: 14,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  height: 0.10,
                                                                  letterSpacing:
                                                                      -0.24,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  top: 8.0),
                                                          child: Row(
                                                            children: <Widget>[
                                                              Container(
                                                                width: 20,
                                                                height: 20,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .cyan,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                ),
                                                                child:
                                                                    Text(" %"),
                                                              ),
                                                              Text(
                                                                'Free delivery ',
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF7E7E7E),
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  height: 0.14,
                                                                  letterSpacing:
                                                                      -0.24,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 41, bottom: 70),
                                                      height: 28,
                                                      width: 28,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey,
                                                            offset:
                                                                Offset(4, 4),
                                                            blurRadius: 2.0,
                                                            spreadRadius: 0.5,
                                                          ),
                                                        ],
                                                      ),
                                                      child: SvgPicture.asset(
                                                          'assets/vectors/ic_heart_favorite.svg'),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          right: 36),
                                                      height: 24,
                                                      width: 24,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color: Colors.white,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4)),
                                                      ),
                                                      child: SvgPicture.asset(
                                                          'assets/vectors/ic_vector.svg'),
                                                    ),
                                                    Container(
                                                      width: 88,
                                                      height: 26,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                          color: Color(
                                                              0xFFF8F5F2)),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: 24,
                                                            height: 24,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                ShapeDecoration(
                                                              color: Color(
                                                                  0xFFE1E1E1),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4)),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 16),
                                                          Text(
                                                            '1',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF3E4462),
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.14,
                                                              letterSpacing:
                                                                  -0.24,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 16),
                                                          Container(
                                                            width: 24,
                                                            height: 24,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                ShapeDecoration(
                                                              color: Color(
                                                                  0xFF1D2D50),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            );

                                          case 1:
                                            return Column(
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Container(
                                                      width: 100,
                                                      height: 123,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                            '${item.image}',
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: 30.0,
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          Text(
                                                            'Chicken Pizza',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF3E4462),
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 0.08,
                                                              letterSpacing:
                                                                  -0.24,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 30.0),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  '\$20.50',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF3E4462),
                                                                    fontSize:
                                                                        14,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        0.10,
                                                                    letterSpacing:
                                                                        -0.24,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '  24.500',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFFC9C9C9),
                                                                    fontSize:
                                                                        14,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        0.10,
                                                                    letterSpacing:
                                                                        -0.24,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 15.0),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: <Widget>[
                                                                Container(
                                                                  width: 20,
                                                                  height: 20,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .cyan,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  ),
                                                                  child: Text(
                                                                      " %"),
                                                                ),
                                                                Text(
                                                                  'Delivery discount up to 3K',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF7E7E7E),
                                                                    fontSize:
                                                                        12,
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        0.14,
                                                                    letterSpacing:
                                                                        -0.24,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 0, top: 20),
                                                      height: 28,
                                                      width: 28,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey,
                                                            offset:
                                                                Offset(4, 4),
                                                            blurRadius: 2.0,
                                                            spreadRadius: 0.5,
                                                          ),
                                                        ],
                                                      ),
                                                      child: SvgPicture.asset(
                                                          'assets/vectors/ic_heart_favorite.svg'),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          right: 36),
                                                      height: 24,
                                                      width: 24,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color: Colors.white,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4)),
                                                      ),
                                                      child: SvgPicture.asset(
                                                          'assets/vectors/ic_vector.svg'),
                                                    ),
                                                    Container(
                                                      width: 88,
                                                      height: 26,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                          color: Color(
                                                              0xFFF8F5F2)),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: 24,
                                                            height: 24,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                ShapeDecoration(
                                                              color: Color(
                                                                  0xFFE1E1E1),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4)),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 16),
                                                          Text(
                                                            '1',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF3E4462),
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.14,
                                                              letterSpacing:
                                                                  -0.24,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 16),
                                                          Container(
                                                            width: 24,
                                                            height: 24,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                ShapeDecoration(
                                                              color: Color(
                                                                  0xFF1D2D50),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            );

                                          default:
                                            return Container(); // Empty widget for any other index
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      width: 82,
                                      height: 36,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF1D2D50),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "+",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              height: 0.14,
                                              letterSpacing: -0.24,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            'Add',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              height: 0.14,
                                              letterSpacing: -0.24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );

                        default:
                          return SizedBox.shrink();
                      }
                    }),
              ),
            ),

            //--------------------------------------------------------------

            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 91,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 8,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                        height: 51,
                        width: 344,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0xFF1D2D50),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1 item",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 70),
                            Text(
                              "Checkout",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 70),
                            Text(
                              "\$18.50",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        // Handle onTap event
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodEntity {
  String? foodName;
  String? image;

  FoodEntity({
    this.image,
    this.foodName,
  });
}

List<FoodEntity> foods = [
  FoodEntity(
    foodName: "Pizza",
    image: "assets/images/img_Multigrain_Pizza.png",

  ),
  FoodEntity(
    foodName: "Noodle",
    image: "assets/images/img_Chicken_Pizza.png",
  ),
];