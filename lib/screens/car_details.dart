import 'package:flutter/material.dart';
import 'package:hh/screens/payment_methods.dart';

class CarDetailsScreen extends StatefulWidget {



  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  @override
  var selecteditem="date";
  dynamic x=Text(" ");
  dynamic y=Text(" ");

  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child:Image.asset(
                "car.png",
                fit: BoxFit.cover,
                height:200,
                width:500,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height/10,

                                child: const Card(
                                  color:  Color(0xff05035b),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          'Car Model',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height/10,
                                child: const Card(
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          'Tesla Model 3',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height/10,

                                child: const Card(
                                  color:  Color(0xff05035b),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          'Car Number',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height/10,
                                child: Card(
                                  child: Center(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 3),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(5),
                                          border:
                                          Border.all(color: Colors.black, width: 1.5)),
                                      child:x=  Text(
                                        '593 | ب ط ن',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height/10,

                                child: const Card(
                                  color:  Color(0xff05035b),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          'Department',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 13,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height/10,
                                child: const Card(
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          'Shebin El-kom',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height/10,

                                child: const Card(
                                  color:  Color(0xff05035b),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          'Used for',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 17,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height/10,
                                child: const Card(
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          'Personal Transportation',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height/10,

                                child: const Card(
                                  color:  Color(0xff05035b),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          'Total Taxis',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height/10,
                                child: const Card(
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          '20 EGP',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                            height: 40,
                            // child:Container(
                            //   margin: EdgeInsets.fromLTRB(400, 0, 0, 0),
                            //   child:  DropdownButton(items: ["road" ,"date"]
                            //       .map((e) => DropdownMenuItem(child: Text("$e"),value: e,))
                            //       .toList(),
                            //     onChanged: (val){
                            //     setState(() {
                            //
                            //
                            //     });
                            //     },
                            //     value: selecteditem,
                            //
                            //   ),
                            //
                            //
                            // ),
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(onPressed: (){
                              setState(() {
                                y=Container(
                                  width: 450,
                                  height: 110,
                                  color: Color(0xFFD3D3D3),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 3),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(5),
                                            border:
                                            Border.all(color: Colors.black, width: 1.5)),
                                        child:Text(
                                          '593 | ب ط ن',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 18),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Padding(padding: EdgeInsets.fromLTRB(10, 30, 0, 0),child:Text("road" ,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, ),)),
                                          Padding(padding: EdgeInsets.fromLTRB(10, 5, 0, 0),child:Text("date" ,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, ),)),
                                          Padding(padding: EdgeInsets.fromLTRB(10,5, 0, 0),child:Text("coast" ,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, ),)),

                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(180, 50, 0, 0),
                                        child:ElevatedButton(onPressed:(){}, child:Text("Report",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white),), style: ElevatedButton.styleFrom(backgroundColor: Colors.red,fixedSize:Size(100, 20),),),
                                      )
                                    ],
                                  ),
                                );
                              });
                            },child:Row(
                              children: [
                                Padding(padding: EdgeInsets.fromLTRB(13, 0, 0, 0),child:Text("road",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),),
                                Padding(padding: EdgeInsets.fromLTRB(180, 0, 0, 0),child:Text("date",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),),
                                Padding(padding: EdgeInsets.fromLTRB(120, 0, 20, 0),child: Icon(Icons.arrow_drop_down,color: Colors.grey, size:27,),),


                              ],
                            ),style: ElevatedButton.styleFrom(primary:Color(0xEDE3E3E3),),
                            )



                        ),
                        Container(
                          child:y,
                        )


                      ],
                    ),
                  ),
                ],

              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width/1.25,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff05035b),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(
                        color: Colors.white, width: 0.5),
                  ),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  showModalBottomSheet(context: context,builder: (context) {
                    return const PaymentMethods();
                  });
                },
                child: const Text(
                  "Pay Taxis (20 EGP)",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
