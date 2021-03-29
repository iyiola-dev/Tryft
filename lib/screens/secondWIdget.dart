import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tryft/utils/theme.dart';
import 'package:tryft/utils/tryftSize.dart';
import 'package:tryft/utils/widgets/tiles.dart';

class SecondWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> image = [
      'images/mon.png',
      'images/tue.png',
      'images/wed.png',
      'images/thur.png',
      'images/fri.png',
      'images/sat.png',
      'images/sun.png',
    ];
    List<String> days = [
      "mon",
      "tue",
      "wed",
      "thur",
      "fri",
      "sat",
      "sun",
    ];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dashboard',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Wrap(
                children: [
                  Text(
                    '\n14 Aug 2020, Thursday',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: fadedPrimary,
                    ),
                    child: Center(
                        child: Icon(
                      Icons.search,
                      color: buttonColor,
                    )),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: TryftSize.yMargin(context, 25),
            decoration: BoxDecoration(
                color: tileButtonColor,
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  direction: Axis.vertical,
                  children: [
                    Text(
                      'Welcome back, Emmanuel!',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: dialogBackgroundColor),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'You’ve learnt 80% of your goals this week!\nKeep it up and improve your results!')
                  ],
                ),
                Image.asset('images/serious.png')
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: TryftSize.yMargin(context, 50),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  height: TryftSize.yMargin(context, 35),
                  width: TryftSize.xMargin(context, 23),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Latest Results',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(children: [
                            Text('more', style: TextStyle(color: Colors.grey)),
                            Icon(
                              Icons.arrow_right_alt,
                              color: Colors.grey,
                            ),
                          ])
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListDividerTile(
                        subject: 'chemistry            ',
                        percentage: 0.8,
                        percentageText: '86%',
                        percentageColor: buttonColor,
                      ),
                      Divider(),
                      ListDividerTile(
                        subject: 'Biology                ',
                        percentage: 0.78,
                        percentageText: '83%',
                        percentageColor: cardColor,
                      ),
                      Divider(),
                      ListDividerTile(
                        subject: 'use of library     ',
                        percentage: 0.81,
                        percentageText: '86%',
                        percentageColor: cardColor,
                      ),
                      Divider(),
                      ListDividerTile(
                        subject: 'Maths               ',
                        percentage: 0.8,
                        percentageText: '93%',
                        percentageColor: Colors.greenAccent,
                      ),
                      Divider(),
                      ListDividerTile(
                        subject: 'English               ',
                        percentage: 0.5,
                        percentageText: '43%',
                        percentageColor: Colors.red,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  height: TryftSize.yMargin(context, 35),
                  width: TryftSize.xMargin(context, 25),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Time spent on learning',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10),
                          ),
                          Row(children: [
                            Text('last week',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 9)),
                            Icon(
                              Icons.arrow_right_alt,
                              color: Colors.grey,
                            ),
                          ]),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: days
                              .map(
                                (e) => Text(
                                  e,
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                              )
                              .toList()),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: image
                            .map((e) => Center(child: Image.asset(e)))
                            .toList(),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Wrap(
                            children: [
                              CircleAvatar(
                                backgroundColor: buttonColor,
                                radius: 5,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Vocabulary',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 11),
                              )
                            ],
                          ),
                          Wrap(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 5,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Vocabulary',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 11),
                              )
                            ],
                          ),
                          Wrap(
                            children: [
                              CircleAvatar(
                                backgroundColor: buttonColor.withOpacity(0.3),
                                radius: 5,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Vocabulary',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 11),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Courses',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(children: [
                Text('view more', style: TextStyle(color: Colors.grey)),
                Icon(
                  Icons.arrow_right_alt,
                  color: Colors.grey,
                ),
              ])
            ],
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 90,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SlimTile(
                  cardColor: buttonColor,
                  title: 'Practical Physics',
                  subtitle: 'Motion',
                ),
                SizedBox(
                  width: 10,
                ),
                SlimTile(
                  cardColor: cardColor,
                  title: 'Business English',
                  subtitle: 'Grammar',
                ),
                SizedBox(
                  width: 10,
                ),
                SlimTile(
                  cardColor: tileColor,
                  title: 'Spanish',
                  subtitle: 'Vocabulary',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
