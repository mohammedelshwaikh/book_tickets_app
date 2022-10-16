// ignore_for_file: sort_child_properties_last, avoid_unnecessary_containers, sized_box_for_whitespace, avoid_print

import 'package:book_tickets_app/utils/app_layout.dart';
import 'package:book_tickets_app/widgets/icon_text_widget.dart';
import 'package:book_tickets_app/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:book_tickets_app/utils/app_styles.dart';
import 'package:gap/gap.dart';

import '../widgets/double_text_widget..dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeighet(20),
        ),
        children: [
          Gap(
            AppLayout.getHeighet(40),
          ),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyle1.copyWith(
              fontSize: AppLayout.getWidth(35),
            ),
          ),
          Gap(AppLayout.getHeighet(20)),
          const AppTicketTabs(
            fristTab: 'Airline tickets',
            secondTab: 'Hotels',
          ),
          Gap(
            AppLayout.getHeighet(25),
          ),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(
            AppLayout.getHeighet(20),
          ),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(
            AppLayout.getHeighet(25),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getWidth(15),
              horizontal: AppLayout.getWidth(15),
            ),
            decoration: BoxDecoration(
              color: const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(
                AppLayout.getWidth(10),
              ),
            ),
            child: InkWell(
              onTap: () => print('You are tapped'),
              child: Center(
                child: Text(
                  'Find tickets',
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          Gap(
            AppLayout.getHeighet(40),
          ),
          const AppDoubleTextWidget(
              bigText: 'Upcoming Flights', smallText: 'View all'),
          Gap(
            AppLayout.getHeighet(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeighet(425),
                width: size.width * .42,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeighet(15),
                  vertical: AppLayout.getWidth(15),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeighet(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeighet(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeighet(12),
                        ),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/sit.jpg',
                          ),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeighet(12)),
                    Text(
                      '20%\n discount on the earley booking of \n this flight.\n Don\'t miss.',
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * .44,
                        height: AppLayout.getHeighet(200),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeighet(18)),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeighet(15),
                            horizontal: AppLayout.getHeighet(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Discount\nfor survey',
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Gap(AppLayout.getHeighet(10)),
                            Text(
                                'Take the\n survey about\n our services\n and get\n discount',
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 18)),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeighet(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 18, color: const Color(0xFF189999)),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(
                    AppLayout.getHeighet(15),
                  ),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeighet(210),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeighet(15),
                        horizontal: AppLayout.getHeighet(15)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeighet(18)),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take love',
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(
                          AppLayout.getHeighet(5),
                        ),
                        Gap(
                          AppLayout.getHeighet(5),
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 35),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 35),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
