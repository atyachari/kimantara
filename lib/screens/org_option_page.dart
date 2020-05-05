import 'package:flutter/material.dart';
import 'package:kimantara/widgets/active_project_card.dart';
import 'package:kimantara/widgets/top_container.dart';

class OrgPage extends StatefulWidget {
  @override
  _OrgPageState createState() => _OrgPageState();
}

class _OrgPageState extends State<OrgPage> {
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

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(child: Column(children: <Widget>[
        TopContainer(
          height: 100,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Stores near you!!!',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        Expanded(child: SingleChildScrollView(
          child: Container(
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(
            horizontal: 20.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 5.0),
                Row(
                  children: <Widget>[
                    ActiveProjectsCard(
                      cardColor: Colors.green[100],
                      loadingPercent: 0.25,
                      title: 'Barista',
                      subtitle: '1230 employees',
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    ActiveProjectsCard(
                      cardColor: Colors.green[100],
                      loadingPercent: 0.45,
                      title: 'Ratnadeep Retail Pvt. Ltd',
                      subtitle: '156 people already arrived',
                    ),
                  ],
                ),
                Row(children: <Widget>[
                  ActiveProjectsCard(
                      cardColor: Colors.green[100],
                      loadingPercent: 0.6,
                      title: "Vijetha Supermarket",
                      subtitle: '343 slots booked',
                    ),
                  ],
                ),
                Row(children: <Widget>[
                    ActiveProjectsCard(
                      cardColor: Colors.green[100],
                      loadingPercent: 0.9,
                      title: 'Recovered Cases in India',
                      subtitle: '15,344 cases recovered',
                    ),
                  ],
                ),
              ],
            ),
          ),),),
      ],))
    );
  }
}