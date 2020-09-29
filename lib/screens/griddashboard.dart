import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
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




                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.menu, color: Colors.black38,size: 52.0,),
                      Image.asset('assets/logos/image.png',width: 52.0,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "Welcome, Doctor code \nSelect an option",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.start,
                  ),
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
                                              Image.asset('assets/logos/todo.png',width: 64.0,),
                                              SizedBox(
                                                height: 10.0,
                                              ),
                                              Text(
                                                "Dashboard",
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20.0
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Text(
                                                "2 Items",
                                                style: TextStyle(
                                                    color: Colors.black38,
                                                    fontWeight: FontWeight.w100
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                    ),

                                ),

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
                                              Image.asset('assets/logos/note.png',width: 64.0,),
                                              SizedBox(
                                                height: 10.0,
                                              ),
                                              Text(
                                                "Filter",
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20.0
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Text(
                                                "12 Items",
                                                style: TextStyle(
                                                    color: Colors.black38,
                                                    fontWeight: FontWeight.w100
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                    ),

                                ),
                          ],
                        ),
                        SizedBox(height: 10,),

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
                                               Image.asset('assets/logos/pause.png',width: 64.0,),
                                                SizedBox(
                                             height: 10.0,
                                               ),
                                            Text(
                                               "Pause",
                                                style: TextStyle(
                                              color: Colors.red,
                                             fontWeight: FontWeight.bold,
                                                     fontSize: 20.0
                                           ),
                                              ),
                                           SizedBox(
                                                height: 5.0,
                                          ),
                                              Text(
                                            "4 Items",
                                       style: TextStyle(
                                               color: Colors.red,
                                           fontWeight: FontWeight.w100
                                            ),
                                            )
                                         ],
                                    ),
                                      )
                              ),
                               
                               ),
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
                                   Image.asset('assets/logos/settings.png',width: 64.0,),
                                         SizedBox(
                                                 height: 10.0,
                                         ),
                                          Text(
                                              "Bedtime",
                                          style: TextStyle(
                                                    color: Colors.red,
                                                 fontWeight: FontWeight.bold,
                                                      fontSize: 20.0
                                            ),
                                            ),
                                             SizedBox(
                                                 height: 5.0,
                                            ),
                                             Text(
                                             "6 Items",
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.w100
                                              ),
                                              )
                                            ],
                                           ),

                                   )
                                   ),

                               ),
                                ],
                              ),
                        SizedBox(height: 10,),
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
                                          Image.asset('assets/logos/todo.png',width: 64.0,),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            "Surfing Time",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text(
                                            "2 Items",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.w100
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                ),

                            ),

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
                                          Image.asset('assets/logos/note.png',width: 64.0,),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            "Data Usage",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text(
                                            "12 Items",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.w100
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



