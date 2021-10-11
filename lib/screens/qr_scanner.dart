// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:flutter/services.dart';


// class QRScanner extends StatefulWidget {
//   @override
//   _QRScannerState createState() => _QRScannerState();
// }

// class _QRScannerState extends State<QRScanner> {
//   String _result = "";
//   Future _scanQr() async {
//     debugPrint("scan touched");
//     try {
//       String qrResult = await BarcodeScanner.scan();
//       setState(() {
//         _result = qrResult;
//       });
//     } on PlatformException catch(ex){
//         if(ex.code == BarcodeScanner.CameraAccessDenied){
//           setState(() {
//             _result = "The permission was denied.";
//           });
//         }else{
//           setState(() {
//             _result = "unknown error ocurred $ex";
//           });
//         }
//     }on FormatException{
//       setState(() {
//         _result = "Scan canceled, try again !";
//       });
//     }catch(e){
//       _result = "Unknown error $e";
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(_result),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         backgroundColor: Colors.teal,
//         onPressed: _scanQr,
//         icon: Icon(Icons.camera_alt),
//         label: Text("Scan"),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }

class _QRState extends State<OrgPage> {
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
