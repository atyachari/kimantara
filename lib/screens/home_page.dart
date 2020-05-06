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
      backgroundColor: Colors.green[100],
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
                                child: Text('Ratnadeep Supermarket',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 22.0,color: Colors.black87,fontWeight: FontWeight.w800,),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Kondapur, Hyderabad',
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
                          SizedBox(height: 15.0),
                          InkWell(
                              onTap: () { Navigator.of(context).pushNamed('/login'); },
                              child: TaskColumn(
                              icon: Icons.person_pin_circle,
                              iconBackgroundColor: Colors.blueGrey,
                              title: 'Your bookings',
                              subtitle: 'No slots booked at the moment',
                            ),
                          ),
                          SizedBox(height: 15.0,),
                          InkWell(
                            onTap: () { Navigator.of(context).pushNamed('/login'); },
                            child: TaskColumn(
                              icon: Icons.check,
                              iconBackgroundColor: Colors.blueGrey,
                              title: 'Mark your entry',
                              subtitle: 'No slots booked at the moment',
                            )
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
                          subheading("Book your slot.."),
                          SizedBox(height: 5.0),
                          Row(
                            children: <Widget>[
                              ActiveProjectsCard(
                                cardColor: Colors.green[900],
                                loadingPercent: 0.90,
                                title: '10;00 - 10:30',
                                subtitle: '9 bookings',
                              ),
                              SizedBox(width: 20.0),
                              ActiveProjectsCard(
                                cardColor: Colors.green[900],
                                loadingPercent: 0.3,
                                title: "10:30 - 11:00",
                                subtitle: '3 bookings',
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              ActiveProjectsCard(
                                cardColor: Colors.green[900],
                                loadingPercent: 0.20,
                                title: '11:30 - 12:00',
                                subtitle: '2 bookings',
                              ),
                              SizedBox(width: 20.0),
                              ActiveProjectsCard(
                                cardColor: Colors.green[900],
                                loadingPercent: 0.0,
                                title: '14:00 - 14:30',
                                subtitle: 'No booking',
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