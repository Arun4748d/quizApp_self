
import 'package:flutter/material.dart';
import 'package:sample/quizDatabase.dart';
import 'package:sample/view/quizhomescreen/quizHomeScreen.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  // int gridindex=0;

    final List<String> categories = [
    "questionList",
    "toys",
    "cars",
    "bikes",
    "Sports",
    " games",
     "history",
      "geography",
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi, ARUN",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),),
        backgroundColor: Colors.black,
        actions: [
          CircleAvatar(
            radius: 28,
            child: Image(
              image: AssetImage("assets/images/luffy-funny-dm3tifz3800z8iie.jpg"
            )),
          ),
          SizedBox(width: 15,),
        ],
      ),
        //  backgroundColor: Colors.white,
      body:
      Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text("Let's Play",style: 
            TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            ),
          ),

          SizedBox(height: 30,),

          
          Expanded(
            child: GridView.builder(
               
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            crossAxisSpacing: 0,mainAxisSpacing: 30,),
            
                    
                     itemCount: categories.length , itemBuilder:(context, index) {
                       final selectedCategory = categories[index];
             
            
                     return  GestureDetector(
                            onTap: () {
                              // print("hiiiii${index}");
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: 
                              (context) => Quizhomescreen(category:selectedCategory),));
                            },
                             child: Stack(
                               children: [
                                             Container(
                                               
                                              margin: EdgeInsets.symmetric(horizontal: 13, vertical: 8), 
                                               padding: EdgeInsets.symmetric(horizontal: 0,),
                                               decoration: BoxDecoration(
                                                 color:Color.fromARGB(255, 161, 170, 249),
                                                 borderRadius: BorderRadius.circular(12), 
                                                 boxShadow: [
                                                   BoxShadow(
                                             color: Colors.white.withOpacity(0.4), 
                                             spreadRadius: 2,
                                             blurRadius: 2,
                                             offset: Offset(2,2), 
                                                   ),
                                             
                                                 ],
                                               ),
                                             ),
                             // image
                                             Positioned(
                                               top: 0,
                                               right: 0,
                                               left: 2,
                                               child: Image(image: AssetImage(gridspace.gridcontents[index]["image1"]),
                                               width: 130,
                                               height: 130,),
                                             ),
                               // Text
                                             Positioned(
                                               bottom: 20,
                                               right: 90,
                               
                                             
                                               child: Text(gridspace.gridcontents[index]["name"],style: TextStyle(
                                                 color: Colors.black,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 25,
                                               ),),
                                             )
                               ],
                             ),
                           );
            
                     } ,),
          ),

       

        ]
      ),
//       
    );
  }
}

























          
          // Expanded(
          //   child: GridView.builder(
               
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          //   crossAxisSpacing: 0,mainAxisSpacing: 30,),
            
                    
          //            itemCount: 8 , itemBuilder:(context, index) {
             
            
          //            return  GestureDetector(
          //                   onTap: () {
          //                     Navigator.pushReplacement(context, MaterialPageRoute(builder: 
          //                     (context) => Quizhomescreen(gridtext:index),));
          //                   },
          //                    child: Stack(
          //                      children: [
          //                                    Container(
                                               
          //                                     margin: EdgeInsets.symmetric(horizontal: 13, vertical: 8), 
          //                                      padding: EdgeInsets.symmetric(horizontal: 0,),
          //                                      decoration: BoxDecoration(
          //                                        color:Color.fromARGB(255, 161, 170, 249),
          //                                        borderRadius: BorderRadius.circular(12), 
          //                                        boxShadow: [
          //                                          BoxShadow(
          //                                    color: Colors.white.withOpacity(0.4), 
          //                                    spreadRadius: 2,
          //                                    blurRadius: 2,
          //                                    offset: Offset(2,2), 
          //                                          ),
                                             
          //                                        ],
          //                                      ),
          //                                    ),
          //                    // image
          //                                    Positioned(
          //                                      top: 0,
          //                                      right: 0,
          //                                      left: 2,
          //                                      child: Image(image: AssetImage(gridspace.gridcontents[index]["image1"]),
          //                                      width: 120,
          //                                      height: 120,),
          //                                    ),
          //                      // Text
          //                                    Positioned(
          //                                      bottom: 20,
          //                                      right: 90,
                               
                                             
          //                                      child: Text(gridspace.gridcontents[index]["name"],style: TextStyle(
          //                                        color: Colors.black,
          //                                        fontWeight: FontWeight.bold,
          //                                        fontSize: 25,
          //                                      ),),
          //                                    )
          //                      ],
          //                    ),
          //                  );
            
          //            } ,),
          // ),




















//           Expanded(
//   child: GridView(gridDelegate: 
//           SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 0, mainAxisSpacing: 30,),
       
//         //  physics: NeverScrollableScrollPhysics(),
//          // shrinkWrap: true,
//           children: [
// // Movies
//             GestureDetector(
//              onTap: () {
//                Navigator.pushReplacement(context, MaterialPageRoute(builder: 
//                (context) => Quizhomescreen(),));
//              },
//               child: Stack(
//                 children: [
//                               Container(
                                
//                                margin: EdgeInsets.symmetric(horizontal: 13, vertical: 8), 
//                                 padding: EdgeInsets.symmetric(horizontal: 0,),
//                                 decoration: BoxDecoration(
//                                   color:Color.fromARGB(255, 161, 170, 249),
//                                   borderRadius: BorderRadius.circular(12), 
//                                   boxShadow: [
//                                     BoxShadow(
//                               color: Colors.white.withOpacity(0.4), 
//                               spreadRadius: 2,
//                               blurRadius: 2,
//                               offset: Offset(2,2), 
//                                     ),
                              
//                                   ],
//                                 ),
//                               ),
//               // image
//                               Positioned(
//                                 top: 0,
//                                 right: 0,
//                                 left: 2,
//                                 child: Image(image: AssetImage(ImageConstant.movie),
//                                 width: 120,
//                                 height: 120,),
//                               ),
//                 // Text
//                               Positioned(
//                                 bottom: 20,
//                                 right: 90,
                
                              
//                                 child: Text("Movies",style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 25,
//                                 ),),
//                               )
//                 ],
//               ),
//             ),
//              GestureDetector(
//               onTap: () {
//                 Navigator.pushReplacement(context, MaterialPageRoute(builder: 
//                (context) => HistoryScreen(),));
//               },
//                child: Stack(
//                 children: [
//                   Container(
                    
//                    margin: EdgeInsets.symmetric(horizontal: 13, vertical: 8), 
//                     padding: EdgeInsets.symmetric(horizontal: 0,),
//                     decoration: BoxDecoration(
//                       color:Color.fromARGB(255, 161, 170, 249),
//                       borderRadius: BorderRadius.circular(12), 
//                       boxShadow: [
//                         BoxShadow(
//                   color: Colors.white.withOpacity(0.4), 
//                   spreadRadius: 2,
//                   blurRadius: 2,
//                   offset: Offset(2,2), 
//                         ),
                  
//                       ],
//                     ),
//                   ),
//                          // image
//                   Positioned(
//                     top: 0,
//                     right: 0,
//                     left: 2,
//                     child: Image(image: AssetImage(ImageConstant.history),
//                     width: 120,
//                     height: 120,),
//                   ),
//                            // text
//                   Positioned(
//                     bottom: 20,
//                     right: 90,
                
                  
//                     child: Text("History",style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 25,
//                     ),),
//                   )
//                 ],
//                            ),
//              ),
// //  Sports
//             GestureDetector(
//              onTap: () {
//                 Navigator.pushReplacement(context, MaterialPageRoute(builder: 
//                (context) =>SportsScreen(),));
//              },
//               child: Stack(
//                 children: [
//                               Container(
                                
//                                margin: EdgeInsets.symmetric(horizontal: 13, vertical: 8), 
//                                 padding: EdgeInsets.symmetric(horizontal: 0,),
//                                 decoration: BoxDecoration(
//                                   color:Color.fromARGB(255, 161, 170, 249),
//                                   borderRadius: BorderRadius.circular(12), 
//                                   boxShadow: [
//                                     BoxShadow(
//                               color: Colors.white.withOpacity(0.4), 
//                               spreadRadius: 2,
//                               blurRadius: 2,
//                               offset: Offset(2,2), 
//                                     ),
                              
//                                   ],
//                                 ),
//                               ),
//                 // image
//                               Positioned(
//                                 top: 0,
//                                 right: 0,
//                                 left: 2,
//                                 child: Image(image: AssetImage(ImageConstant.soccer),
//                                 width: 120,
//                                 height: 120,),
//                               ),
//                 // text
//                               Positioned(
//                                 bottom: 20,
//                                 right: 90,
                
                              
//                                 child: Text("Sports",style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 25,
//                                 ),),
//                               )
//                 ],
//               ),
//             ),
//              GestureDetector(
//               onTap: () {
                
//                 Navigator.pushReplacement(context, MaterialPageRoute(builder: 
//                (context) => ToyScreen(),));
//               },
//                child: Stack(
//                 children: [
//                   Container(
                    
//                    margin: EdgeInsets.symmetric(horizontal: 13, vertical: 8), 
//                     padding: EdgeInsets.symmetric(horizontal: 0,),
//                     decoration: BoxDecoration(
//                       color:Color.fromARGB(255, 161, 170, 249),
//                       borderRadius: BorderRadius.circular(12), 
//                       boxShadow: [
//                         BoxShadow(
//                   color: Colors.white.withOpacity(0.4), 
//                   spreadRadius: 2,
//                   blurRadius: 2,
//                   offset: Offset(2,2), 
//                         ),
                  
//                       ],
//                     ),
//                   ),
//                   Positioned(
//                     top: 0,
//                     right: 0,
//                     left: 2,
//                     child: Image(image: AssetImage(ImageConstant.Toys),
//                     width: 120,
//                     height: 120,),
//                   ),
//                   Positioned(
//                     bottom: 20,
//                     right: 90,
                
                  
//                     child: Text("Toys",style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 25,
//                     ),),
//                   )
//                 ],
//                            ),
//              ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.pushReplacement(context, MaterialPageRoute(builder: 
//                (context) => gamesScreen(),));
//               },
//               child: Stack(
//                 children: [
//                  Container(
                   
//                   margin: EdgeInsets.symmetric(horizontal: 13, vertical: 8), 
//                    padding: EdgeInsets.symmetric(horizontal: 0,),
//                    decoration: BoxDecoration(
//                      color:Color.fromARGB(255, 161, 170, 249),
//                      borderRadius: BorderRadius.circular(12), 
//                      boxShadow: [
//                        BoxShadow(
//                  color: Colors.white.withOpacity(0.4), 
//                  spreadRadius: 2,
//                  blurRadius: 2,
//                  offset: Offset(2,2), 
//                        ),
                 
//                      ],
//                    ),
//                  ),
//                  Positioned(
//                    top: 0,
//                    // right: 0,
//                    left: 0,
//                    child: Image(image: AssetImage(ImageConstant.Games),
//                    width: 130,
//                    height: 130,),
//                  ),
//                  Positioned(
//                    bottom: 20,
//                    right: 90,
                
//                 // text
//                    child: Text("Games",style: TextStyle(
//                      color: Colors.black,
//                      fontWeight: FontWeight.bold,
//                      fontSize: 25,
//                    ),),
//                  )
//                 ],
//               ),
//             ),
//              GestureDetector(
//               onTap: () {
//                 Navigator.pushReplacement(context, MaterialPageRoute(builder: 
//                (context) => geographyScreeen(),));
//               },
//                child: Stack(
//                 children: [
//                   Container(
                    
//                    margin: EdgeInsets.symmetric(horizontal: 13, vertical: 8), 
//                     padding: EdgeInsets.symmetric(horizontal: 0,),
//                     decoration: BoxDecoration(
//                       color:Color.fromARGB(255, 161, 170, 249),
//                       borderRadius: BorderRadius.circular(12), 
//                       boxShadow: [
//                         BoxShadow(
//                   color: Colors.white.withOpacity(0.4), 
//                   spreadRadius: 2,
//                   blurRadius: 2,
//                   offset: Offset(2,2), 
//                         ),
                  
//                       ],
//                     ),
//                   ),
//                   Positioned(
//                     top: 0,
//                     right: 0,
//                     left: 2,
//                     child: Image(image: AssetImage(ImageConstant.geography),
//                     width: 120,
//                     height: 120,),
//                   ),
//                   Positioned(
//                     bottom: 20,
//                     right: 45,
                
                  
//                     child: Text("Geography",style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 25,
//                     ),),
//                   )
//                 ],
//                            ),
//              ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.pushReplacement(context, MaterialPageRoute(builder: 
//                (context) => CarScreen(),));
//               },
//               child: Stack(
//                 children: [
//                  Container(
                   
//                   margin: EdgeInsets.symmetric(horizontal: 13, vertical: 8), 
//                    padding: EdgeInsets.symmetric(horizontal: 0,),
//                    decoration: BoxDecoration(
//                      color:Color.fromARGB(255, 161, 170, 249),
//                      borderRadius: BorderRadius.circular(12), 
//                      boxShadow: [
//                        BoxShadow(
//                  color: Colors.white.withOpacity(0.4), 
//                  spreadRadius: 2,
//                  blurRadius: 2,
//                  offset: Offset(2,2), 
//                        ),
                 
//                      ],
//                    ),
//                  ),
//                  Positioned(
//                    top: -50,
//                    right: 0,
//                    // left: 2,
//                    child: Image(image: AssetImage(ImageConstant.car),
//                    width: 160,
//                    height: 160,),
//                  ),
//                  Positioned(
//                    bottom: 20,
//                    right: 90,
                
                 
//                    child: Text("Car",style: TextStyle(
//                      color: Colors.black,
//                      fontWeight: FontWeight.bold,
//                      fontSize: 25,
//                    ),),
//                  )
//                 ],
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.pushReplacement(context, MaterialPageRoute(builder: 
//                (context) => BikeScreen(),));
//               },
//               child: Stack(
//                 children: [
//                  Container(
                   
//                   margin: EdgeInsets.symmetric(horizontal: 13, vertical: 8), 
//                    padding: EdgeInsets.symmetric(horizontal: 0,),
//                    decoration: BoxDecoration(
//                      color:Color.fromARGB(255, 161, 170, 249),
//                      borderRadius: BorderRadius.circular(12), 
//                      boxShadow: [
//                        BoxShadow(
//                  color: Colors.white.withOpacity(0.4), 
//                  spreadRadius: 2,
//                  blurRadius: 2,
//                  offset: Offset(2,2), 
//                        ),
                 
//                      ],
//                    ),
//                  ),
//                  Positioned(
//                    top: 0,
//                    right: 0,
//                    left: 20,
//                    child: Image(image: AssetImage(ImageConstant.Bike),
//                    width: 120,
//                    height: 120,),
//                  ),
//                  Positioned(
//                    bottom: 20,
//                    right: 50,
                
                 
//                    child: Text("Bike",style: TextStyle(
//                      color: Colors.black,
//                      fontWeight: FontWeight.bold,
//                      fontSize: 25,
//                    ),),
//                  )
//                 ],
//               ),
//             ),
//           ],),
// ),
  