import 'package:flutter/material.dart';

class CategoryDropMenu extends StatefulWidget {
  @override
  _CategoryDropMenu createState() => new _CategoryDropMenu();
}

class _CategoryDropMenu extends State<CategoryDropMenu> {

  String dropdownValue = "Available Slots";

  @override
  Widget build(BuildContext context){
    return new Text(
      "Available stores near you",
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );
    // return new DropdownButtonHideUnderline(child:
    //   new DropdownButton<String>(
    //     value: dropdownValue,
    //     onChanged: (String newValue) {
    //       setState(() {
    //         dropdownValue = newValue;
    //       });
    //     },
    //     items: <String>['Available Slots'].map<DropdownMenuItem<String>>((String value) {
    //       return DropdownMenuItem<String>(
    //         value: value,
    //         child: Text(value, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
    //       );
    //     }).toList(),
    //   ));
  }

}