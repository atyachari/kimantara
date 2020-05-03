import 'package:flutter/material.dart';
import 'package:kimantara/widgets/active_project_card.dart';
import 'package:kimantara/widgets/task_column.dart';
import 'package:kimantara/widgets/top_container.dart';
import 'package:percent_indicator/percent_indicator.dart';


class HomePage extends StatelessWidget {
  Text subheading(String title) {
    return Text(
      title,
      style: TextStyle(
          color: Colors.blue[900],
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2),
    );
  }

  static CircleAvatar calendarIcon() {
    return CircleAvatar(
      radius: 25.0,
      backgroundColor: Colors.brown[200],
      child: Icon(
        Icons.calendar_today,
        size: 20.0,
        color: Colors.white,
      ),
    );
  }

  static CircleAvatar scanIcon() {
    return CircleAvatar(
      radius: 25.0,
      backgroundColor: Colors.green[900],
      child: Icon(
        Icons.scanner,
        size: 20.0,
        color: Colors.white,
      ),
    );
  }

   @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TopContainer(
              height: 200,
              width: width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.menu,
                            color: Colors.black87, size: 30.0),
                        Icon(Icons.search,
                            color: Colors.black87, size: 25.0),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircularPercentIndicator(
                            radius: 90.0,
                            lineWidth: 5.0,
                            animation: true,
                            percent: 0.75,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Colors.red,
                            backgroundColor: Colors.grey,
                            center: CircleAvatar(
                              backgroundColor: Colors.blue[900],
                              radius: 35.0,
                              backgroundImage: AssetImage(
                                'assets/images/avatar.png',
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Vipul Lohani',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'AMTS',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              subheading('My Tasks'),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => null),
                                  );
                                },
                                child: calendarIcon(),
                              ),
                            ],
                          ),
                          SizedBox(height: 15.0),
                          TaskColumn(
                            icon: Icons.alarm,
                            iconBackgroundColor: Colors.blueGrey,
                            title: 'To Do',
                            subtitle: '5 tasks now. 1 started',
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TaskColumn(
                            icon: Icons.blur_circular,
                            iconBackgroundColor: Colors.blueGrey,
                            title: 'In Progress',
                            subtitle: '1 tasks now. 1 started',
                          ),
                          SizedBox(height: 15.0),
                          TaskColumn(
                            icon: Icons.check_circle_outline,
                            iconBackgroundColor: Colors.blueGrey,
                            title: 'Done',
                            subtitle: '18 tasks now. 13 started',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          subheading("Today's Status"),
                          SizedBox(height: 5.0),
                          Row(
                            children: <Widget>[
                              ActiveProjectsCard(
                                cardColor: Colors.blue[200],
                                loadingPercent: 0.25,
                                title: 'Total Strength today',
                                subtitle: '1230 employees',
                              ),
                              SizedBox(width: 20.0),
                              ActiveProjectsCard(
                                cardColor: Colors.blue[200],
                                loadingPercent: 0.6,
                                title: "Next week's booking",
                                subtitle: '343 slots booked',
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              ActiveProjectsCard(
                                cardColor: Colors.blue[200],
                                loadingPercent: 0.45,
                                title: 'Cafeteria Crowd Status',
                                subtitle: '156 people already arrived',
                              ),
                              SizedBox(width: 20.0),
                              ActiveProjectsCard(
                                cardColor: Colors.blue[200],
                                loadingPercent: 0.9,
                                title: 'Recovered Cases in India',
                                subtitle: '15,344 cases recovered',
                              ),
                            ],
                          ),
                        ],
                      ),
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