import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hh/layout.dart';
import 'package:hh/screens//resetpassword.dart';
import '../widgets/custom_otp_input.dart';

class verfiypassword extends StatefulWidget {
  final String email="";
  final String password="";
  const verfiypassword({super.key,String? email,String? password});

  @override
  State<verfiypassword> createState() => _verfiypasswordState();
}

class _verfiypasswordState extends State<verfiypassword> {
  bool invalidOtp = false;
  int resendTime = 30;
  bool isLoading=true;
  late Timer countdownTimer;
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();
  TextEditingController txt5 = TextEditingController();
  TextEditingController txt6 = TextEditingController();

  @override
  void initState() {
    startTimer();
    super.initState();
  }


  startTimer() {
    countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        resendTime = resendTime - 1;
      });
      if (resendTime < 1) {
        countdownTimer.cancel();
      }
    });
  }

  stopTimer() {
    if (countdownTimer.isActive) {
      countdownTimer.cancel();
    }
  }

  String strFormatting(n) => n.toString().padLeft(2, '0');
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0),
          child: Column(

            children: [
              Padding(padding:EdgeInsets.only(top: 30),
                child:Image.asset("ver_code.PNG",width: 219,height: 216,),
              ),

              Padding(padding:EdgeInsets.only(top: 10),
                child:Column(
                  children: [
                    Align(alignment: Alignment.center,child: Text(" 00:${strFormatting(resendTime)}",style: const TextStyle(fontSize: 15,color:Color(0xff0063E6),fontWeight: FontWeight.bold ),)),
                    SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        invalidOtp ? 'x wrong validation code, please try again.' : '',
                        style: TextStyle(fontSize: 15, color: Colors.red.withOpacity(0.8),),
                      ),
                    ),
                  ],
                ) ,),

              Padding(padding:EdgeInsets.fromLTRB(0,10,0,0),
                child: Column(
                  children: [
                    Padding(padding:EdgeInsets.only(right: 103),
                      child: const Text(
                        "Verification Code",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),

                    ),

                    const Text(
                      'Please confirm the security code recieved on your registration email.', style: TextStyle(fontSize: 13,color: Colors.grey),

                    ),

                  ],
                ),),



              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomOTPInput(context: context,controller: txt1,),
                      CustomOTPInput(context: context,controller: txt2,),
                      CustomOTPInput(context: context,controller: txt3,),
                      CustomOTPInput(context: context,controller: txt4,),
                      CustomOTPInput(context: context,controller: txt5,),
                      CustomOTPInput(context: context,controller: txt6,),
                    ],
                  ),
                ),
              ),
              const SizedBox(height:30),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width/1.25,
                  height: 50,
                  child:Container(
                    child:  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),),
                        backgroundColor: const Color(0xff1C2D9A),
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        final otp = txt1.text + txt2.text + txt3.text + txt4.text+txt5.text+txt6.text;
                        if (otp.length==6) {
                          // Go to welcome
                          setState(() {
                            invalidOtp=false;
                          });

                          print(otp.length);
                          stopTimer();
                          Navigator.push(context,MaterialPageRoute(builder:(context)=>resetpassword()));
                        } else {
                          setState(() {
                            invalidOtp = true;
                          });
                        }
                      },
                      child: const Text(
                        "Confirm",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )
                ),
              ),
              SizedBox(height: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 30,),
                  GestureDetector(
                    onTap: resendTime==0?() {
                      invalidOtp = false;
                      resendTime = 30;
                      startTimer();
                    }:null,
                    child: Text(
                      'Did not recieve the code?',style: TextStyle(fontSize: 15,color:resendTime==0?Colors.black:Colors.grey),
                    ),
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: resendTime==0?() {
                      invalidOtp = false;
                      resendTime = 30;
                      startTimer();
                    }:null,
                    child: Text(
                      'Send Again',style: TextStyle(fontSize: 15,color:Colors.blue.shade800,fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
