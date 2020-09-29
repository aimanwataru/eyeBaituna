import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:time_range_picker/time_range_picker.dart';
import 'package:day_picker/day_picker.dart';
import 'package:flutter_login_ui/utilities/constants.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreen createState() => _FilterScreen();
}

class _FilterScreen extends State<FilterScreen> {
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  bool status4 = false;
  bool status5 = false;
  bool status6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterSwitch Demo"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0),
            Text("Auto Block"),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlutterSwitch(
                  width: 55.0,
                  height: 25.0,
                  valueFontSize: 12.0,
                  toggleSize: 18.0,
                  value: status4,
                  onToggle: (val) {
                    setState(() {
                      status4 = val;
                    });
                  },
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Value: $status4",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text("Block Malicious Content"),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlutterSwitch(
                  width: 55.0,
                  height: 25.0,
                  valueFontSize: 12.0,
                  toggleSize: 18.0,
                  value: status4,
                  onToggle: (val) {
                    setState(() {
                      status4 = val;
                    });
                  },
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Value: $status4",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text("Block Illicit Content"),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlutterSwitch(
                  width: 55.0,
                  height: 25.0,
                  valueFontSize: 12.0,
                  toggleSize: 18.0,
                  value: status4,
                  onToggle: (val) {
                    setState(() {
                      status4 = val;
                    });
                  },
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Value: $status4",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BedtimeScreen extends StatefulWidget {
  @override
  _BedtimeScreen createState() => _BedtimeScreen();
}

class _BedtimeScreen extends State<BedtimeScreen> {
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  bool status4 = false;
  bool status5 = false;
  bool status6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Surfing Time"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20.0),
              Text("Set a Schedule"),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlutterSwitch(
                    width: 55.0,
                    height: 25.0,
                    valueFontSize: 12.0,
                    toggleSize: 18.0,
                    value: status4,
                    onToggle: (val) {
                      setState(() {
                        status4 = val;
                      });
                    },
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Value: $status4",
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [





                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200, height: 50,
                          child: SelectWeekDays(
                            border: false,
                            boxDecoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            onSelect: (values) {
                              print(values);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Column(children: [
                RaisedButton(
                  onPressed: () async {
                    TimeRange result = await showTimeRangePicker(
                      context: context,
                    );
                    print("result " + result.toString());
                  },
                  child: Text("Pure"),
                ),
                RaisedButton(
                  onPressed: () {
                    showTimeRangePicker(
                      context: context,
                      start: TimeOfDay(hour: 22, minute: 9),
                      onStartChange: (start) {
                        print("start time " + start.toString());
                      },
                      onEndChange: (end) {
                        print("end time " + end.toString());
                      },
                      interval: Duration(minutes: 30),
                      use24HourFormat: true,
                      padding: 30,
                      strokeWidth: 20,
                      handlerRadius: 14,
                      strokeColor: Colors.orange,
                      handlerColor: Colors.orange[700],
                      selectedColor: Colors.amber,
                      backgroundColor: Colors.black.withOpacity(0.3),
                      ticks: 12,
                      ticksColor: Colors.white,
                      snap: true,
                      labels: [
                        "12 pm",
                        "3 am",
                        "6 am",
                        "9 am",
                        "12 am",
                        "3 pm",
                        "6 pm",
                        "9 pm"
                      ].asMap().entries.map((e) {
                        return ClockLabel.fromIndex(
                            idx: e.key, length: 8, text: e.value);
                      }).toList(),
                      labelOffset: -30,
                      labelStyle: TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                      timeTextStyle: TextStyle(
                          color: Colors.orange[700],
                          fontSize: 32,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                      activeTimeTextStyle: TextStyle(
                          color: Colors.orange,
                          fontSize: 32,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    );
                  },
                  child: Text("Interval"),
                ),
                RaisedButton(
                  onPressed: () async {
                    TimeRange result = await showTimeRangePicker(
                        context: context,
                        start: TimeOfDay(hour: 9, minute: 0),
                        end: TimeOfDay(hour: 12, minute: 0),
                        disabledTime: TimeRange(
                            startTime: TimeOfDay(hour: 22, minute: 0),
                            endTime: TimeOfDay(hour: 5, minute: 0)),
                        disabledColor: Colors.red.withOpacity(0.5),
                        strokeWidth: 4,
                        ticks: 24,
                        ticksOffset: -7,
                        ticksLength: 15,
                        ticksColor: Colors.grey,
                        labels: [
                          "12 pm",
                          "3 am",
                          "6 am",
                          "9 am",
                          "12 am",
                          "3 pm",
                          "6 pm",
                          "9 pm"
                        ].asMap().entries.map((e) {
                          return ClockLabel.fromIndex(
                              idx: e.key, length: 8, text: e.value);
                        }).toList(),
                        labelOffset: 35,
                        rotateLabels: false,
                        padding: 60);

                    print("result " + result.toString());
                  },
                  child: Text("Disabled Times"),
                ),
                RaisedButton(
                  onPressed: () async {
                    TimeRange result = await showTimeRangePicker(
                      context: context,
                      paintingStyle: PaintingStyle.fill,
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      labels: [
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 7, minute: 0),
                            text: "Start Work"),
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 18, minute: 0),
                            text: "Go Home")
                      ],
                      start: TimeOfDay(hour: 10, minute: 0),
                      end: TimeOfDay(hour: 13, minute: 0),
                      ticks: 8,
                      strokeColor:
                      Theme.of(context).primaryColor.withOpacity(0.5),
                      ticksColor: Theme.of(context).primaryColor,
                      labelOffset: 15,
                      padding: 60,
                      disabledTime: TimeRange(
                          startTime: TimeOfDay(hour: 18, minute: 0),
                          endTime: TimeOfDay(hour: 7, minute: 0)),
                      disabledColor: Colors.red.withOpacity(0.5),
                    );

                    print("result " + result.toString());
                  },
                  child: Text("Filled Style"),
                ),
                RaisedButton(
                  onPressed: () async {
                    TimeRange result = await showTimeRangePicker(
                      context: context,
                      strokeColor: Colors.teal,
                      handlerColor: Colors.teal[200],
                      selectedColor: Colors.tealAccent,
                      strokeWidth: 16,
                      handlerRadius: 18,
                      backgroundWidget: Image.asset(
                        "assets/images/day-night.png",
                        height: 200,
                        width: 200,
                      ),
                      labels: [
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 6, minute: 0),
                            text: "Get up"),
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 9, minute: 0),
                            text: "Coffee time"),
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 15, minute: 0),
                            text: "Afternoon"),
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 18, minute: 0),
                            text: "Time for a beer"),
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 22, minute: 0),
                            text: "Go to Sleep"),
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 2, minute: 0),
                            text: "Go for a pee"),
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 12, minute: 0),
                            text: "Lunchtime!")
                      ],
                      ticksColor: Colors.black,
                      labelOffset: 40,
                      padding: 55,
                      labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                    );

                    print("result " + result.toString());
                  },
                  child: Text("Background Widget"),
                ),
                Divider(),
                Text(
                  'As a regular widget:',
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                Container(
                    padding: EdgeInsets.all(20),
                    height: 400,
                    child: TimeRangePicker(
                      hideButtons: true,
                      hideTimes: true,
                      paintingStyle: PaintingStyle.fill,
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      labels: [
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 7, minute: 0),
                            text: "Start Work"),
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 18, minute: 0),
                            text: "Go Home")
                      ],
                      start: TimeOfDay(hour: 10, minute: 0),
                      end: TimeOfDay(hour: 13, minute: 0),
                      ticks: 8,
                      strokeColor:
                      Theme.of(context).primaryColor.withOpacity(0.5),
                      ticksColor: Theme.of(context).primaryColor,
                      labelOffset: 15,
                      padding: 60,
                      disabledTime: TimeRange(
                          startTime: TimeOfDay(hour: 18, minute: 0),
                          endTime: TimeOfDay(hour: 7, minute: 0)),
                      disabledColor: Colors.red.withOpacity(0.5),
                    )),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}

class SurfingtimeScreen extends StatefulWidget {
  @override
  _SurfingtimeScreen createState() => _SurfingtimeScreen();
}

class _SurfingtimeScreen extends State<SurfingtimeScreen> {
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  bool status4 = false;
  bool status5 = false;
  bool status6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Surfing Time"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20.0),
              Text("Set a Schedule"),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlutterSwitch(
                    width: 55.0,
                    height: 25.0,
                    valueFontSize: 12.0,
                    toggleSize: 18.0,
                    value: status4,
                    onToggle: (val) {
                      setState(() {
                        status4 = val;
                      });
                    },
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Value: $status4",
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [





                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200, height: 50,
                          child: SelectWeekDays(
                            border: false,
                            boxDecoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            onSelect: (values) {
                              print(values);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Column(children: [
                RaisedButton(
                  onPressed: () async {
                    TimeRange result = await showTimeRangePicker(
                      context: context,
                    );
                    print("result " + result.toString());
                  },
                  child: Text("Pure"),
                ),
                RaisedButton(
                  onPressed: () {
                    showTimeRangePicker(
                      context: context,
                      start: TimeOfDay(hour: 22, minute: 9),
                      onStartChange: (start) {
                        print("start time " + start.toString());
                      },
                      onEndChange: (end) {
                        print("end time " + end.toString());
                      },
                      interval: Duration(minutes: 30),
                      use24HourFormat: true,
                      padding: 30,
                      strokeWidth: 20,
                      handlerRadius: 14,
                      strokeColor: Colors.orange,
                      handlerColor: Colors.orange[700],
                      selectedColor: Colors.amber,
                      backgroundColor: Colors.black.withOpacity(0.3),
                      ticks: 12,
                      ticksColor: Colors.white,
                      snap: true,
                      labels: [
                        "12 pm",
                        "3 am",
                        "6 am",
                        "9 am",
                        "12 am",
                        "3 pm",
                        "6 pm",
                        "9 pm"
                      ].asMap().entries.map((e) {
                        return ClockLabel.fromIndex(
                            idx: e.key, length: 8, text: e.value);
                      }).toList(),
                      labelOffset: -30,
                      labelStyle: TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                      timeTextStyle: TextStyle(
                          color: Colors.orange[700],
                          fontSize: 32,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                      activeTimeTextStyle: TextStyle(
                          color: Colors.orange,
                          fontSize: 32,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    );
                  },
                  child: Text("Interval"),
                ),
                RaisedButton(
                  onPressed: () async {
                    TimeRange result = await showTimeRangePicker(
                        context: context,
                        start: TimeOfDay(hour: 9, minute: 0),
                        end: TimeOfDay(hour: 12, minute: 0),
                        disabledTime: TimeRange(
                            startTime: TimeOfDay(hour: 22, minute: 0),
                            endTime: TimeOfDay(hour: 5, minute: 0)),
                        disabledColor: Colors.red.withOpacity(0.5),
                        strokeWidth: 4,
                        ticks: 24,
                        ticksOffset: -7,
                        ticksLength: 15,
                        ticksColor: Colors.grey,
                        labels: [
                          "12 pm",
                          "3 am",
                          "6 am",
                          "9 am",
                          "12 am",
                          "3 pm",
                          "6 pm",
                          "9 pm"
                        ].asMap().entries.map((e) {
                          return ClockLabel.fromIndex(
                              idx: e.key, length: 8, text: e.value);
                        }).toList(),
                        labelOffset: 35,
                        rotateLabels: false,
                        padding: 60);

                    print("result " + result.toString());
                  },
                  child: Text("Disabled Times"),
                ),
                RaisedButton(
                  onPressed: () async {
                    TimeRange result = await showTimeRangePicker(
                      context: context,
                      paintingStyle: PaintingStyle.fill,
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      labels: [
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 7, minute: 0),
                            text: "Start Work"),
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 18, minute: 0),
                            text: "Go Home")
                      ],
                      start: TimeOfDay(hour: 10, minute: 0),
                      end: TimeOfDay(hour: 13, minute: 0),
                      ticks: 8,
                      strokeColor:
                      Theme.of(context).primaryColor.withOpacity(0.5),
                      ticksColor: Theme.of(context).primaryColor,
                      labelOffset: 15,
                      padding: 60,
                      disabledTime: TimeRange(
                          startTime: TimeOfDay(hour: 18, minute: 0),
                          endTime: TimeOfDay(hour: 7, minute: 0)),
                      disabledColor: Colors.red.withOpacity(0.5),
                    );

                    print("result " + result.toString());
                  },
                  child: Text("Filled Style"),
                ),
                RaisedButton(
                  onPressed: () async {
                    TimeRange result = await showTimeRangePicker(
                      context: context,
                      strokeColor: Colors.teal,
                      handlerColor: Colors.teal[200],
                      selectedColor: Colors.tealAccent,
                      strokeWidth: 16,
                      handlerRadius: 18,
                      backgroundWidget: Image.asset(
                        "assets/images/day-night.png",
                        height: 200,
                        width: 200,
                      ),
                      labels: [
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 6, minute: 0),
                            text: "Get up"),
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 9, minute: 0),
                            text: "Coffee time"),
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 15, minute: 0),
                            text: "Afternoon"),
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 18, minute: 0),
                            text: "Time for a beer"),
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 22, minute: 0),
                            text: "Go to Sleep"),
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 2, minute: 0),
                            text: "Go for a pee"),
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 12, minute: 0),
                            text: "Lunchtime!")
                      ],
                      ticksColor: Colors.black,
                      labelOffset: 40,
                      padding: 55,
                      labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                    );

                    print("result " + result.toString());
                  },
                  child: Text("Background Widget"),
                ),
                Divider(),
                Text(
                  'As a regular widget:',
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                Container(
                    padding: EdgeInsets.all(20),
                    height: 400,
                    child: TimeRangePicker(
                      hideButtons: true,
                      hideTimes: true,
                      paintingStyle: PaintingStyle.fill,
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      labels: [
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 7, minute: 0),
                            text: "Start Work"),
                        ClockLabel.fromTime(
                            time: TimeOfDay(hour: 18, minute: 0),
                            text: "Go Home")
                      ],
                      start: TimeOfDay(hour: 10, minute: 0),
                      end: TimeOfDay(hour: 13, minute: 0),
                      ticks: 8,
                      strokeColor:
                      Theme.of(context).primaryColor.withOpacity(0.5),
                      ticksColor: Theme.of(context).primaryColor,
                      labelOffset: 15,
                      padding: 60,
                      disabledTime: TimeRange(
                          startTime: TimeOfDay(hour: 18, minute: 0),
                          endTime: TimeOfDay(hour: 7, minute: 0)),
                      disabledColor: Colors.red.withOpacity(0.5),
                    )),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}

class UsageScreen extends StatefulWidget {
  @override
  _UsageScreen createState() => _UsageScreen();
}

class _UsageScreen extends State<UsageScreen> {
  bool _rememberMe = false;

  Widget _buildUsageTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Set Data Limit',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black12,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.black38,
              ),
                hintText: 'Enter your Usage',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUsageBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => UsageScreen()));
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.red,
        child: Text(
          'MB',
          style: TextStyle(
            color: Color(0xFFFAFAFA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFFAFAFA),
                      Color(0xFFFAFAFA),
                      Color(0xFFFAFAFA),
                      Color(0xFFFAFAFA),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Data Usage',
                        style: TextStyle(
                          color: Colors.black38,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      _buildUsageTF(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _buildUsageTF(),
                      _buildUsageBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
