// ignore_for_file: library_private_types_in_public_api, sized_box_for_whitespace, file_names, duplicate_ignore

import 'package:need_a_pi_project/screens/home.dart';
import 'package:flutter/material.dart';
class PIScreens extends StatefulWidget {
  const PIScreens({Key? key}) : super(key: key);

  @override
  _PIScreensState createState() => _PIScreensState();
}

class _PIScreensState extends State<PIScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Private Investigators", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
          },
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
    Row(
        children: [
          const SizedBox(width: 15,),
          Container(
            width: 340,
            child: TextField(
              style: const TextStyle(
                fontSize: 15.0,
                color: Colors.blueAccent,
              ),
              decoration: InputDecoration(
                hintText: "Search PIs",
                fillColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(color: Colors.blueAccent, width: 50.0),
                ),
                suffixIcon: CircleAvatar(
                  radius: 20,
                  backgroundColor: const Color(0xFFFFBE9D),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
    ),
const SizedBox(height: 40,),
Row(
  children: [
    const SizedBox(width: 50,),
    Column(
        children: [
          Container(
            height: 80,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),

              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFFFBE9D).withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: const Offset(0, 22, ), // changes position of shadow
                ),
              ],
              image: const DecorationImage(
                image: AssetImage("assets/images/conan.png",                ),
                //fit: BoxFit.cover,

              ),

            ),
          ),
          Row(
            children: const [
              Text("Saul"),
              SizedBox(width: 2,),
              Text("4.5"),
              Icon(Icons.star)
            ],
          ),

        ],
    ),

    const SizedBox(width: 40,),
    Column(
      children: [
        Container(
            height: 80,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFFFBE9D).withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: const Offset(0, 22, ), // changes position of shadow
                ),
              ],
              image: const DecorationImage(
                image: AssetImage("assets/images/sherlock.png",


                ),
                //fit: BoxFit.cover,

              ),
            ),
        ),
        Row(
          children: const [
            Text("Sherlock"),
            SizedBox(width: 2,),
            Text("4.7"),
            Icon(Icons.star)
          ],
        ),
      ],
    ),
  ],
),
            const SizedBox(height: 40,),
            Row(
              children: [
                const SizedBox(width: 50,),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFFFBE9D).withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 0.5,
                            offset: const Offset(0, 22, ), // changes position of shadow
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage("assets/images/Hercule.jpg",


                          ),
                          //fit: BoxFit.cover,

                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Text("Hercule"),
                        SizedBox(width: 2,),
                        Text("4.5"),
                        Icon(Icons.star)
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 40,),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFFFBE9D).withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 0.5,
                            offset: const Offset(0, 22, ), // changes position of shadow
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage("assets/images/conan.png",


                          ),
                          //fit: BoxFit.cover,

                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Text("Conan"),
                        SizedBox(width: 2,),
                        Text("4.5"),
                        Icon(Icons.star)
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40,),
            Row(
              children: [
                const SizedBox(width: 50,),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFFFBE9D).withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 0.5,
                            offset: const Offset(0, 22, ), // changes position of shadow
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage("assets/images/jessica.png",


                          ),
                          //fit: BoxFit.cover,

                        ),
                      ),

                    ),
                    Row(
                      children: const [
                        Text("Jessica"),
                        SizedBox(width: 2,),
                        Text("4.9"),
                        Icon(Icons.star)
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 40,),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFFFBE9D).withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 0.5,
                            offset: const Offset(0, 22, ), // changes position of shadow
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage("assets/images/ether.png",


                          ),
                          //fit: BoxFit.cover,

                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Text("Ether"),
                        SizedBox(width: 2,),
                        Text("4.2"),
                        Icon(Icons.star)
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40,),
            Row(
              children: [
                const SizedBox(width: 50,),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFFFBE9D).withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 0.5,
                            offset: const Offset(0, 22, ), // changes position of shadow
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage("assets/images/itachi.png",


                          ),
                          //fit: BoxFit.cover,

                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Text("Itachi"),
                        SizedBox(width: 2,),
                        Text("4.1"),
                        Icon(Icons.star)
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 40,),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFFFBE9D).withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 0.5,
                            offset: const Offset(0, 22, ), // changes position of shadow
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage("assets/images/cyber.png",


                          ),
                          //fit: BoxFit.cover,

                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Text("Ryan"),
                        SizedBox(width: 2,),
                        Text("4.5"),
                        Icon(Icons.star)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}