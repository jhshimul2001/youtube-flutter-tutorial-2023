import 'package:flutter/material.dart';

class Login1stui extends StatefulWidget {
  const Login1stui({Key? key}) : super(key: key);

  @override
  State<Login1stui> createState() => _Login1stuiState();
}

class _Login1stuiState extends State<Login1stui> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue,
                    Colors.green,
                  ],
                )
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/image/back.png",height: 55,width: 55,),
                      ClipOval(
                        child: Image.asset(
                          "assets/image/shimul_fb.jpg",
                          width: 45,
                          height: 45,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_back,size: 15,),
                          SizedBox(width: 5,),
                          Text("Mar",style: TextStyle(fontSize: 12),)

                        ],
                      ),
                      Row(
                        children: [
                          Text("April", style: TextStyle(fontSize: 20,color: Colors.indigo,fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Row(
                        children: [
                          Text("May",style: TextStyle(fontSize: 12),),
                          Icon(Icons.arrow_forward,size: 15,)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.indigo
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("12",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(height: 5,),
                            Text("Wed",style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("13",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.indigo),),
                            SizedBox(height: 5,),
                            Text("Wed",style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("14",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.indigo),),
                            SizedBox(height: 5,),
                            Text("Wed",style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("15",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.indigo),),
                            SizedBox(height: 5,),
                            Text("Wed",style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Text("Ongoing",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.w900,fontSize: 20),),
                  SizedBox(height: 30,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("9 Am"),
                          SizedBox(height: 50,),
                          Text("10 AM"),
                        ],
                      ),
                      Container(
                          height: 110,
                          width: MediaQuery.of(context).size.width/1.5,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.all(Radius.circular(15)),

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Mobile App Design",style: TextStyle(color: Colors.white),),
                                  Text("Juvaid hasan shimul",style: TextStyle(color: Colors.white,fontSize: 12),),
                                  Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 100,
                                        child: Stack(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(100))
                                              ),
                                              child: ClipRRect(
                                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                                  child: Image.asset("assets/image/shimul_fb.jpg",height: 50,width: 50,)),
                                            ),
                                            Positioned(
                                                left: 35,
                                                child:  Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.all(Radius.circular(100))
                                                  ),
                                                  child: ClipRRect(
                                                      borderRadius: BorderRadius.all(Radius.circular(100)),
                                                      child: Image.asset("assets/image/shimul.jpg",height: 50,width: 50,)),
                                                ))
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20.0),
                                        child: Column(
                                          children: [
                                            Text("9.00 AM to 10.00 AM",style: TextStyle(fontSize: 12,color: Colors.white),),
                                          ],
                                        ),
                                      )

                                    ],
                                  ),
                                ],
                              ),
                            ),

                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("11 AM")
                          ],
                        ),
                        Container(
                          height: 2,
                          width: 200,
                          color: Colors.indigo,
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("12 Am"),
                            SizedBox(height: 50,),
                            Text("1 PM"),
                          ],
                        ),
                        Container(
                            height: 110,
                            width: MediaQuery.of(context).size.width/1.5,
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.all(Radius.circular(15)),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Mobile App Design",style: TextStyle(color: Colors.white),),
                                    Text("Juvaid hasan shimul",style: TextStyle(color: Colors.white,fontSize: 12),),
                                    Row(
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 100,
                                          child: Stack(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(100))
                                                ),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.all(Radius.circular(100)),
                                                    child: Image.asset("assets/image/shimul_fb.jpg",height: 50,width: 50,)),
                                              ),
                                              Positioned(
                                                  left: 30,
                                                  child:  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.all(Radius.circular(100))
                                                    ),
                                                    child: ClipRRect(
                                                        borderRadius: BorderRadius.all(Radius.circular(100)),
                                                        child: Image.asset("assets/image/shimul.jpg",height: 50,width: 50,)),
                                                  ))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20.0,),
                                          child: Column(
                                            children: [
                                              Text("10.00 AM to 11.00 AM",style: TextStyle(fontSize: 11,color: Colors.white),),
                                            ],
                                          ),
                                        )

                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            )
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("2 pm"),
                            SizedBox(height: 50,),
                            Text("3 pM"),
                          ],
                        ),
                        Container(
                            height: 110,
                            width: MediaQuery.of(context).size.width/1.5,
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.all(Radius.circular(15)),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Mobile App Design",style: TextStyle(color: Colors.white),),
                                    Text("Juvaid hasan shimul",style: TextStyle(color: Colors.white,fontSize: 12),),
                                    Row(
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 100,
                                          child: Stack(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(100))
                                                ),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.all(Radius.circular(100)),
                                                    child: Image.asset("assets/image/shimul_fb.jpg",height: 50,width: 50,)),
                                              ),
                                              Positioned(
                                                  left: 35,
                                                  child:  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.all(Radius.circular(100))
                                                    ),
                                                    child: ClipRRect(
                                                        borderRadius: BorderRadius.all(Radius.circular(100)),
                                                        child: Image.asset("assets/image/shimul.jpg",height: 50,width: 50,)),
                                                  ))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20.0),
                                          child: Column(
                                            children: [
                                              Text("2.00 PM to 3.00 PM",style: TextStyle(fontSize: 12,color: Colors.white),),
                                            ],
                                          ),
                                        )

                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ),
          )
      ),
    );
  }
}
