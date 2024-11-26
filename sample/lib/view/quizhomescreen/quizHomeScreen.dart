import 'dart:async';


import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sample/quizDatabase.dart';
import 'package:sample/utils/animation_constant.dart';
import 'package:sample/utils/colorconstant.dart';
import 'package:sample/view/homeScreen.dart';
import 'package:sample/view/resultScreen/result_screen.dart';

class Quizhomescreen extends StatefulWidget {
   Quizhomescreen({super.key, required this.category });

    final String category;
  @override
  State<Quizhomescreen> createState() => _QuizhomescreenState();
}

class _QuizhomescreenState extends State<Quizhomescreen> {
 late Timer _timer;
 int secondremaining=30;

  int questionIndex = 0;

  int? selectedAnswer;
  int rightAnswerCount = 0;
    List<Map<String, dynamic>> currentQuestions = [];

  


  @override
  void initState() {
    startTimer();
    super.initState();

     currentQuestions = Quizdatabase.questions[widget.category] ?? [];
   
  }


  @override
  Widget build(BuildContext context) {
     
 

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen(),));
        }, icon: Icon(Icons.arrow_back),
        color: Colors.white,),
        
        actions: [
             
          Text("${questionIndex+1}/${currentQuestions.length}",style: TextStyle(
            color: Colorconstant.mainwhite,
            fontWeight: FontWeight.bold,
            fontSize: 15,

          ),),
          SizedBox(width: 15,),

        ],
        backgroundColor: Colorconstant.mainblack,

      ),

      
      body: 
       
            Column(
              children: [
            SizedBox(height: 6,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                   
                     Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 43,
                          width: 43,
                          child: CircularProgressIndicator(
                            value: secondremaining / 30, 
                            strokeWidth: 8,
                            backgroundColor: Colorconstant.maingrey.withOpacity(0.4),
                            color:Colorconstant.mainColor,
                          ),
                        ),
                        Text(
                          secondremaining.toString(),
                          style: TextStyle(
                            color: Colorconstant.mainwhite,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            
                          ),
                        ),
                      ],
                                     ),
                   ],
                 ),
                 SizedBox(height: 6,),
              

// questionScreen
                 
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding:EdgeInsets.all(15,),
                          height: 350,
                          width: double.infinity,
                          child: Center(child: 
                          SingleChildScrollView(
                            child: Text(currentQuestions[questionIndex]["question"],
                            style: 
                            TextStyle(color: Colorconstant.mainblack,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,),
                            maxLines: 1000,
                            // overflow: TextOverflow.ellipsis,
                            ),
                          )),
                          decoration: BoxDecoration(
                            color: Colorconstant.mainColor,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 177, 135, 189).withOpacity(.7),
                                offset: Offset(2, 2),
                                blurRadius: 3,
                                spreadRadius: 3,
                              )
                            ]
                          ),
                        ),
                            if (selectedAnswer == currentQuestions[questionIndex]["answerIndex"])
                    
                       Container(
                        height: 350,
                        width: double.infinity,
                         child: Lottie.asset(AnimationConstant.starAnimation,
                          repeat: false,
                                               ),
                       ),
                          
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 6,),
// options
                Expanded(
                  child: Column(
                    children: 
                      List.generate(
                       4, 
                       (optionindex) =>   Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 7),
                         child: GestureDetector(
                          onTap: () {
                               if(selectedAnswer == null){
                        selectedAnswer = optionindex;
                  
                        if(selectedAnswer== currentQuestions[questionIndex]["answerIndex"]){
                          rightAnswerCount++;
                        }
                        setState(() {});
                        
                        print(selectedAnswer);
                               }
                          },
                           child: Container(                                         
                                           height: 50,
                                         
                                           child: Row(
                                             children: [
                                               SizedBox(width: 15,),
                                               Expanded(
                            child: SingleChildScrollView(
                              child: Text(currentQuestions[questionIndex]["options"][optionindex],style: TextStyle(
                                color: Colorconstant.mainwhite,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                
                              ),
                              maxLines: 10,
                             // overflow:TextOverflow.ellipsis,
                              ),
                            ),
                                               ),
                                               
                                             ],
                                           ),
                                           decoration: BoxDecoration(
                                         
                                             borderRadius: BorderRadius.circular(18),
                  
                                             border: Border.all(color:getColor(optionindex),
                                             
                                             width: 2.5 ),
                                           ),
                                         ),
                         ),
                       ) ,),
                    
                  ),
                ),
                SizedBox(height: 8,),
                  if( selectedAnswer !=null)
             
// Next Button
                  GestureDetector(
                    onTap: () {

                    
                       selectedAnswer = null; 
                        _timer.cancel();
                       secondremaining = 30;  
                       
                     startTimer(); 

                       if (questionIndex < currentQuestions.length - 1) {
                
                  questionIndex++;
                  setState(() {});
                } else{
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => ResultScreen(
                    rightanswer: rightAnswerCount, category:widget.category ,), ));
                }
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,),
                      child: Container(
                                    height: 50,
                                    width: double.infinity,
                                    child: Center(child: Text("Next",
                                    style: TextStyle(
                                      color: Colorconstant.mainwhite,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),)),
                                    decoration: BoxDecoration(
                                      color: Colorconstant.buttoncolor,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                  
                    ),
                  ),
                  SizedBox(height: 30,),
         
            ]
            ),
           
           
            
         
           
          

       
    );
  }

  Color getColor(int currentOptinIndex) {
  
    if (selectedAnswer != null &&
        currentOptinIndex ==
            currentQuestions[questionIndex]["answerIndex"]) {
      return Colorconstant.maingreeen;
    }


    if (selectedAnswer == currentOptinIndex) {
      if (selectedAnswer ==
          currentQuestions[questionIndex]["answerIndex"]) {
        return Colorconstant.maingreeen;
      } else {
        return Colorconstant.mainred;
      }
    } else {
      return Colorconstant.mainColor;
    }
  }


void startTimer() {
  _timer = Timer.periodic(Duration(seconds: 1), (timer) {
    setState(() {
      if (secondremaining > 0) {
        secondremaining--;
      } else {
        
        if (questionIndex < currentQuestions.length - 1) {
          questionIndex++;
          secondremaining = 30;
          selectedAnswer = null;
        } else {
       
          timer.cancel();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ResultScreen(
                rightanswer: rightAnswerCount, category: widget.category,
              ),
            ),
          );
        }
      }
    });
  });
}
}





