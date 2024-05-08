import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hh/screens/verfiypassword.dart';

class resetpassword extends StatefulWidget {

  @override
  State<resetpassword> createState() => _resetpasswordState();
}


class _resetpasswordState extends State<resetpassword> {



  bool invalidOtp = false;
  int resendTime = 30;
  bool isLoading=true;
  late Timer countdownTimer;
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
  bool passwordVisible=false;

  @override



  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0),
          child: Column(
            children: [
             Padding(
               padding: EdgeInsets.fromLTRB(0, 3, 240, 0),
                child: ElevatedButton.icon(onPressed: (){
  Navigator.push(context,MaterialPageRoute(builder:(context)=>verfiypassword()));
  }, icon:Icon(Icons.arrow_back,color:CupertinoColors.systemGrey,), label:Text(''),style: ElevatedButton.styleFrom(primary:Color(0xEDFFFFFF),backgroundColor: Colors.white),),


             ),
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
                        child:Column(
                          children: [
                            const Text(
                              "Reset Password",
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
                            ),],






                        )

                    ),
                    const SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          label: Text("PASSWORD",style:TextStyle(fontSize:17,fontWeight: FontWeight.bold),), hintText:"Enter Password",
                          hintStyle:TextStyle(fontSize:10,fontWeight:FontWeight.bold),
                          border: OutlineInputBorder()


                      ),

                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          label: Text(" CONFIRM PASSWORD",style:TextStyle(fontSize:17,fontWeight: FontWeight.bold),),
                          hintText:"Confirm Password",
                          hintStyle:TextStyle(fontSize:10,fontWeight:FontWeight.bold),
                          border: OutlineInputBorder()

                      ),
                    )

                  ],
                ),),
              const SizedBox(height: 15),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width/1.25,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),),
                      backgroundColor: const Color(0xff1C2D9A),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {


                    },



                    child: const Text(
                      "Confirm",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),


            ],
          ),
        ),
      ),
    );
  }
}



