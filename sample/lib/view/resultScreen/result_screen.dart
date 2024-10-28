import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sample/quizDatabase.dart';
import 'package:sample/utils/animation_constant.dart';
import 'package:sample/utils/colorconstant.dart';
import 'package:sample/view/homeScreen.dart';
import 'package:sample/view/quizhomescreen/quizHomeScreen.dart';


class ResultScreen extends StatefulWidget {
  const ResultScreen({required this.rightanswer,required this.category, super.key});

  final int rightanswer;
     final String category;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  int starcount=0;
  calculateStarcount(){
      var percentage = (widget.rightanswer / (Quizdatabase.questions[widget.category]?.length ?? 1))*100;
      if(percentage >=80){
        starcount=3;
      }else if(percentage >=50){
        starcount=2;
      }else if(percentage >=30){
        starcount=1;
      }else{
        starcount=0;
      }
      print(percentage);
    }
    @override
  void initState() {
    calculateStarcount();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colorconstant.mainblack,
      ),
    body: 
    Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(3, (index) =>
               Padding(
                 padding:  EdgeInsets.only(left: 15,right: 15,bottom: index==1 ? 30:0),
                 child: Icon(Icons.star,
                 color:index <starcount
                 ?  Colorconstant.maingolden
                 :Colorconstant.maingrey,
                 size: index==1?70:45,
                 ),
               ),),
               
        
          ),  
      
          starcount ==0 || starcount ==1?SizedBox():
           Stack(
           alignment: Alignment.topCenter,
              children: [
            
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/rb_13474.png"),
                      fit: BoxFit.cover, 
                    ),
                  ),
                ),
                   Lottie.asset(AnimationConstant.star),
              ],
            ),
          
            Text("congratulations",style: TextStyle(
             color:Colorconstant.maingolden,
             fontSize: 25,
             fontWeight: FontWeight.bold,
            ),),

            SizedBox(height: 15),
               Text("Your score",style: TextStyle(
             color: Colorconstant.mainwhite,
             fontSize: 23,
             fontWeight: FontWeight.bold,
            ),),

               Text("${widget.rightanswer}/${Quizdatabase.questions[widget.category]?.length}",style: TextStyle(
             color: Colorconstant.maingolden,
             fontSize: 25,
             fontWeight: FontWeight.bold,
            ),),


                 SizedBox(height: 15,),
//  restart button
             GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,MaterialPageRoute(
                        builder:(context) => Quizhomescreen(category: widget.category,),));
                  
                    },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15,),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colorconstant.buttoncolor,
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.restart_alt,color: Colorconstant.mainwhite,
                                          ),
                                          SizedBox(width: 10,),
                                          Text("Restart",style: TextStyle(
                                            color: Colorconstant.mainwhite,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                            
                                          ),)
                                        ],
                                        
                                      ),
                                    ),
                                    
                      ),
                    ),

                    SizedBox(height: 20,),
                      GestureDetector(
                    onTap: () {
                     
                      Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) => Homescreen(),),
                       (Route<dynamic> route) => false, );
                    },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15,),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colorconstant.buttoncolor,
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.arrow_left,color: Colorconstant.mainwhite,
                                          ),
                                          SizedBox(width: 10,),
                                          Text("Go to Home",style: TextStyle(
                                            color: Colorconstant.mainwhite,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                            
                                          ),)
                                        ],
                                        
                                      ),
                                    ),
                                    
                      ),
                    ),
          ],
        ),
      ),
    ),
    );
  }
}


