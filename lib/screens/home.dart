// ignore_for_file: library_private_types_in_public_api, unused_field, unnecessary_new, unnecessary_const, sort_child_properties_last, prefer_const_literals_to_create_immutables, duplicate_ignore, prefer_const_constructors

import 'package:need_a_pi_project/screens/PIs.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:need_a_pi_project/screens/login.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        leading:Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipOval(

        child: Image(image: Image.asset('assets/icons/detective.svg').image),
        ),

      ),),

      endDrawer: Theme(

        data: Theme.of(context).copyWith(
          canvasColor: Color.fromARGB(255, 51, 48, 212),
          //This will change the drawer background to blue.
          //other styles

        ),

        child: ClipRRect(

          //borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
          borderRadius: BorderRadius.circular(40),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: new Drawer(

elevation: 0.0,
child: Column(
  children: [
    const SizedBox(height: 80,),
    Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(70),
        image: const DecorationImage(
          image: const AssetImage('assets/icons/detective.svg'),
          fit: BoxFit.fill,

        ),
      ),
    ),
    const SizedBox(height: 25,),
    const Divider(color: Colors.white, thickness: 5,),
    const SizedBox(height: 45,),
    Row(
      children: [
        const SizedBox(width: 45,),
        Column(
          children: [
            //GestureDetector(
                    //onTap: (){
                      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const PIScreens()));
                  //  }
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),

                  image: const DecorationImage(
                    image: const AssetImage('assets/icons/home.svg'),
                     fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 4,
                    offset: const Offset(6, 8), // changes position of shadow
                  ),
                ],
              ),

            ),
            const SizedBox(height: 20,),
            const Text("Home", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          ],
        ),
        const SizedBox(width: 65,),
        Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: const AssetImage('assets/icons/about.svg'),
                  fit: BoxFit.fill,

                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 4,
                    offset: const Offset(6, 8), // changes position of shadow
                  ),
                ],
              ),

            ),
            const SizedBox(height: 20,),
            const Text("About", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          ],
        ),
      ],
    ),
    const SizedBox(height: 30,),
    Row(
      children: [
        const SizedBox(width: 45,),
        Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: const AssetImage(''),


                  // fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 4,
                    offset: const Offset(6, 8), // changes position of shadow
                  ),
                ],
              ),

            ),
            const SizedBox(height: 20,),
            const Text("Settings", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          ],
        ),
        const SizedBox(width: 65,),
        Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: const AssetImage(''),
                  // fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 4,
                    offset: const Offset(6, 8), // changes position of shadow
                  ),
                ],
              ),

            ),
            const SizedBox(height: 20,),
            const Text("Contact Us", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          ],
        ),
      ],
    ),
    const SizedBox(height: 30,),
    Row(
      children: [
        const SizedBox(width: 45,),
        Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: const AssetImage(''),
                  // fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 4,
                    offset: const Offset(6, 8), // changes position of shadow
                  ),
                ],
              ),

            ),
            const SizedBox(height: 20,),
            const Text("Location", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          ],
        ),
        const SizedBox(width: 65,),
        Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: const AssetImage(''),
                  // fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 4,
                    offset: const Offset(6, 8), // changes position of shadow
                  ),
                ],
              ),

            ),
            const SizedBox(height: 20,),
            const Text("Services" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          ],
        ),
      ],
    ),
    const SizedBox(height: 40,),
    Row(
      children: [
        const SizedBox(width: 110,),
        Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(

                  image: const AssetImage(''),



                  // fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 4,
                    offset: const Offset(6, 8), // changes position of shadow
                  ),
                ],
              ),

            ),
               GestureDetector(
                onTap: ()=> LogInPage(),
                child: Text(
                  'LogOut',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: "LogOut",
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    letterSpacing: 0.0,
                    color: Colors.white,
                  ),
                ),
               ),
            ],
        ),
      ],
    ),
    const SizedBox(height: 10,),
    Row(
      children: const [
        SizedBox(width: 80,),
        Text("Made By "),
        Text("Pradyoth Reddy Gampala", style: TextStyle(fontSize: 12, decoration: TextDecoration.underline, color: Colors.blue), ),
      ],
    ),

  ],
),

          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(

        key: _bottomNavigationKey,
        index: 2,

        height: 60.0,
        items: <Widget>[
          const Icon(
            Icons.home,
            size: 30,
            color: Color(0xFFFFBE9D),
          ),

          const Icon(Icons.list, ),
          //Icon(Icons.add, size: 30, color: Color(0xff9677fc),),
          FloatingActionButton(
            onPressed: () {},
            heroTag: const Text("btn1"),
            child: const Icon(Icons.add),
            backgroundColor: const Color(0xFFFFBE9D),

          ),
          const Icon(
            Icons.save,

          ),
          const Icon(Icons.perm_identity, ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        animationCurve: Curves.bounceOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),


      body: Column(
        children: [

 Row(
   children: [
     const SizedBox(width: 5,),
     Container(
       height: 340,
       width: 340,
       padding: const EdgeInsets.only(top: 5.0),
       child: new Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[

             const Text(
         ' Lawyer Services ',
             style: TextStyle(
               fontSize: 25.0,
               fontFamily: 'Roboto',
               color: Color.fromARGB(255, 226, 202, 202),
                 fontStyle: FontStyle.italic,
               fontWeight: FontWeight.bold,
             )
         ),
             const Text(
                 ' Individual Services  ',
                 style: TextStyle(
                   fontSize: 25.0,
                   fontFamily: 'Roboto',
                   color: Color.fromARGB(255, 242, 132, 132),
                   fontStyle: FontStyle.italic,
                   fontWeight: FontWeight.bold,
                 )
             ),



       ]
     ),

       decoration: BoxDecoration(
         //color: Color(0xFFFFBE9D),
         color: Colors.white,
         borderRadius: BorderRadius.circular(30),
         boxShadow: [
           BoxShadow(
             color: const Color(0xFFFFBE9D).withOpacity(0.5),
             spreadRadius: 0.5,
             blurRadius: 0.5,
             offset: const Offset(12, 15), // changes position of shadow
           ),
         ],
         image: const DecorationImage(
           image: AssetImage('assets/icons/111-1115761_detective-png-detective-character-concept-art-transparent-png.jpg'),
           //fit: BoxFit.cover,

         ),
       ),
     ),
   ],
 ),
const SizedBox(height: 30,),
Row(
  children: const [
    SizedBox(width: 25,),
    Text("Specialty", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
  ],
),
const SizedBox(height: 25,),
          Row(
            children: [
              const SizedBox(width: 15,),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const PIScreens()));
                    },
                    child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 96, 37, 14),
                        borderRadius: BorderRadius.circular(20),

                        image: const DecorationImage(

                        image: const AssetImage('assets/images/login_bottom.png',  ),
                        // ignore: unnecessary_new
                        ),
                      ),
                    ),
                  ),
                  const Text("Assault",  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(width: 15,),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const PIScreens()));
                    },
                    child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 42, 24, 16),
                        borderRadius: BorderRadius.circular(20),

                        image: const DecorationImage(

                        image: const AssetImage('assets/images/main_bottom.png',  ),
                        // ignore: unnecessary_new
                        ),
                      ),
                    ),
                  ),
                  const Text("Missing Persons",  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ),const SizedBox(width: 15,),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const PIScreens()));
                    },
                    child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 59, 15, 135),
                        borderRadius: BorderRadius.circular(20),

                        image: const DecorationImage(

                        image: const AssetImage('assets/images/main_top.png',  ),
                        // ignore: unnecessary_new
                        ),
                      ),
                    ),
                  ),
                  const Text("Espionage",  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                ],
              ),
            ],
          )
        ],
      ),

    );
  }
}