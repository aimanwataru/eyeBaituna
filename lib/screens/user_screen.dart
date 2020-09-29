import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_ui/screens/griddashboard.dart';
import 'package:flutter_login_ui/screens/sign up_screen.dart';
import 'package:flutter_login_ui/utilities/constants.dart';

import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';


class UserDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child:SingleChildScrollView(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[Container(

                  height: 50.0,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(

                      width:300,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF05A22),
                          style: BorderStyle.solid,
                          width: 3.0,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[

                          RaisedButton(

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red)),
                            onPressed: () {},
                            color: Colors.red,
                            textColor: Colors.white,


                            child: Text("eyeBaituna",
                                style: TextStyle(fontSize: 14)),
                          ),



                          Container(

                            width:100,
                            child: Center(
                              child: Text(
                                "Users",
                                style: TextStyle(
                                  color: Color(0xFFF05A22),
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                ),
                              ),


                            ),
                          ),


                          SizedBox(width: 10),


                        ],
                      ),
                    ),
                  ),
                ),




                  Text(
                    'Who is the user?',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0
                    ),
                    textAlign: TextAlign.center,
                  ),


                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                        child: Column(

                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width:150.0,
                                  height: 150.0, decoration: BoxDecoration( color:Colors.white,

                                    boxShadow: [
                                      BoxShadow(
                                        color:Colors.black.withOpacity(0.2),
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                        offset: Offset(3, 3), // changes position of shadow
                                      ),
                                    ],borderRadius: BorderRadius.circular(8.0)),

                                  child:Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: <Widget>[
                                            Image.asset('assets/logos/plus.png',width: 64.0,),
                                            SizedBox(
                                              height: 10.0,
                                            ),

                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Text(
                                              "Add User",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                  ),

                                ),


                              ],
                            ),

                    ],
                  )

                    ),









                  ),





                ],
              )
          ),
        )
    );
  }
}











class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  bool _rememberMe = false;

  Widget _buildNameTF() {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextField(
            keyboardType: TextInputType.name,
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
              hintText: 'Profile Name',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );

  }

  Widget _buildDeviceTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black38,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.black38,
              ),
              hintText: 'Device Name(Add Multiple)',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }









  Widget _buildDateTF() {
    DateTime _dateTime;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        Text(_dateTime == null ? 'Nothing has been picked yet' : _dateTime.toString()),
        RaisedButton(
          child: Text('Pick a date'),
          onPressed: () {
            showDatePicker(
                context: context,
                initialDate: _dateTime == null ? DateTime.now() : _dateTime,
                firstDate: DateTime(2001),
                lastDate: DateTime(2021)
            ).then((date) {
              setState(() {
                _dateTime = date;
              });
            });
          },
        ),
      ],
    );
  }








  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          Navigator.push(context,  MaterialPageRoute(builder: (context) => UserDashboard()));
        },
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.red,
        child: Text(
          'Submit',
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
                        'Add User',
                        style: TextStyle(
                          color: Colors.black38,
                          fontFamily: 'OpenSans',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      _buildNameTF(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _buildDeviceTF(),
                      _buildDateTF(),

                      _buildLoginBtn(),


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



