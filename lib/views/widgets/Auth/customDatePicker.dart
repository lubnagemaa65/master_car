
import 'package:flutter/material.dart';
import 'package:master_car/core/constant/color.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';



class CustomDate extends StatefulWidget {
  const CustomDate({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<CustomDate> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date of Birth"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            alignment: Alignment.center,
            child: Text(
              "$_selectedDate",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 48),
            child: TextButton(
              onPressed: () {
                setState(() {
                  _selectedDate = DateTime.now();
                });
              },
              child: Text(
                "TODAY",
                style: TextStyle(color: ColorApp.secondColor),
              ),
            ),
          ),
          SizedBox(
            height: 250,
            child: ScrollDatePicker(
              selectedDate: _selectedDate,
              locale: Locale('en'),
              onDateTimeChanged: (DateTime value) {
                setState(() {
                  _selectedDate = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
