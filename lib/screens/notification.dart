import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Notifications extends StatefulWidget{
  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

    body: SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      children: [
        Padding(padding:EdgeInsets.only(top: 30),
          child:Center(
            child: Text("Notifiction",style:TextStyle(fontSize: 20,color: Colors.grey),),
          ),),
          Divider(
         height:20,
         thickness: 1,
         color: Colors.grey,

       ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 700,
            height: 100,
            color: Color(0x99bfc3e7),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child:  Image.asset("logo.png"),
                ),
                Column(
                  children: [
                    Container(margin: EdgeInsets.fromLTRB(10, 40, 0, 0),
                        child: Text("There is a new road taxes add to your tesal car.",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),)),
                    Container(margin: EdgeInsets.fromLTRB(0, 10,200, 0),
                        child: Text("10:04 AM",style:TextStyle(fontSize: 13,color: Colors.grey),)),
                  ],
                ),
                Container(
                  child: Image.asset("car.png", width:80.0, height: 80.0,fit: BoxFit.cover),
                  margin:   EdgeInsets.only(left: 30),
                  width:80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),

                  ),


                ),


              ],
            ),
        ),
          Container(
          margin: EdgeInsets.only(top: 5),
          width: 700,
          height: 100,
          color: Color(0x99bfc3e7),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,
                ),
                child:  Image.asset("logo.png"),
              ),
              Column(
                children: [
                  Container(margin: EdgeInsets.fromLTRB(10, 40, 0, 0),
                      child: Text("There is a new road taxes add to your tesal car.",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),)),
                  Container(margin: EdgeInsets.fromLTRB(0, 10,200, 0),
                      child: Text("10:04 AM",style:TextStyle(fontSize: 13,color: Colors.grey),)),
                ],
              ),
              Container(
                child: Image.asset("car.png", width:80.0, height: 80.0,fit: BoxFit.cover),
                margin:   EdgeInsets.only(left: 30),
                width:80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),

                ),


              ),


            ],
          ),
        ),
          Container(
          margin: EdgeInsets.only(top: 5),
          width: 700,
          height: 100,
          color: Color(0x99bfc3e7),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,
                ),
                child:  Image.asset("logo.png"),
              ),
              Column(
                children: [
                  Container(margin: EdgeInsets.fromLTRB(10, 40, 0, 0),
                      child: Text("There is a new road taxes add to your tesal car.",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),)),
                  Container(margin: EdgeInsets.fromLTRB(0, 10,200, 0),
                      child: Text("10:04 AM",style:TextStyle(fontSize: 13,color: Colors.grey),)),
                ],
              ),
              Container(
                child: Image.asset("car.png", width:80.0, height: 80.0,fit: BoxFit.cover),
                margin:   EdgeInsets.only(left: 30),
                width:80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),

                ),


              ),


            ],
          ),
        ),
          Container(
          margin: EdgeInsets.only(top: 5),
          width: 700,
          height: 100,
          color: Color(0xffffffff),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,
                ),
                child:  Image.asset("logo.png"),
              ),
              Column(
                children: [
                  Container(margin: EdgeInsets.fromLTRB(10, 40, 0, 0),
                      child: Text("There is a new road taxes add to your tesal car.",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),)),
                  Container(margin: EdgeInsets.fromLTRB(0, 10,200, 0),
                      child: Text("10:04 AM",style:TextStyle(fontSize: 13,color: Colors.grey),)),
                ],
              ),
              Container(
                child: Image.asset("car.png", width:80.0, height: 80.0,fit: BoxFit.cover),
                margin:   EdgeInsets.only(left: 30),
                width:80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),

                ),


              ),


            ],
          ),
        ),
          Container(
          margin: EdgeInsets.only(top:5),
          width: 700,
          height: 100,
          color: Color(0xffffffff),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,
                ),
                child:  Image.asset("logo.png"),
              ),
              Column(
                children: [
                  Container(margin: EdgeInsets.fromLTRB(10, 40, 0, 0),
                      child: Text("There is a new road taxes add to your tesal car.",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),)),
                  Container(margin: EdgeInsets.fromLTRB(0, 10,200, 0),
                      child: Text("10:04 AM",style:TextStyle(fontSize: 13,color: Colors.grey),)),
                ],
              ),
              Container(
                child: Image.asset("car.png", width:80.0, height: 80.0,fit: BoxFit.cover),
                margin:   EdgeInsets.only(left: 30),
                width:80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),

                ),


              ),


            ],
          ),
        ),
          Container(
          margin: EdgeInsets.only(top:5),
          width: 700,
          height: 100,
          color: Color(0xffffffff),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,
                ),
                child:  Image.asset("logo.png"),
              ),
              Column(
                children: [
                  Container(margin: EdgeInsets.fromLTRB(10, 40, 0, 0),
                      child: Text("There is a new road taxes add to your tesal car.",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),)),
                  Container(margin: EdgeInsets.fromLTRB(0, 10,200, 0),
                      child: Text("10:04 AM",style:TextStyle(fontSize: 13,color: Colors.grey),)),
                ],
              ),
              Container(
                child: Image.asset("car.png", width:80.0, height: 80.0,fit: BoxFit.cover),
                margin:   EdgeInsets.only(left: 30),
                width:80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),

                ),


              ),


            ],
          ),
        ),
          Container(
          margin: EdgeInsets.only(top:5),
          width: 700,
          height: 100,
          color: Color(0xffffffff),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,
                ),
                child:  Image.asset("logo.png"),
              ),
              Column(
                children: [
                  Container(margin: EdgeInsets.fromLTRB(10, 40, 0, 0),
                      child: Text("There is a new road taxes add to your tesal car.",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),)),
                  Container(margin: EdgeInsets.fromLTRB(0, 10,200, 0),
                      child: Text("10:04 AM",style:TextStyle(fontSize: 13,color: Colors.grey),)),
                ],
              ),
              Container(
                child: Image.asset("car.png", width:80.0, height: 80.0,fit: BoxFit.cover),
                margin:   EdgeInsets.only(left: 30),
                width:80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),

                ),


              ),


            ],
          ),
        ),


      ],
    )
    )
    )

    );
}
}