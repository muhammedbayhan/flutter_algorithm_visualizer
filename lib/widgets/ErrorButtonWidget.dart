import 'package:flutter/material.dart';
import 'package:flutter_algorithm_visualizer/resources/color.dart';

class ErrorButtonWidget extends StatelessWidget {
   const ErrorButtonWidget({
    super.key,required this.text,required this.function,

  });

 final String text;
 final Function function;
  
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(6.0),
           gradient:  LinearGradient(
             begin: Alignment(-0.95, 0.0),
             end: Alignment(1.0, 0.0),
             colors: [Color.fromARGB(255, 179, 66, 21),AppColor.error],
             stops: [0.0, 1.0],
           ),
         ),
         child: ElevatedButton(
           style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,
               foregroundColor: Colors.transparent,
               shadowColor: Colors.transparent,),
    
           onPressed: (){function();},
    
           child:  Center(
             child: Text(
               text,
               style: TextStyle(
                 fontSize: 16,
                 color: Color(0xffffffff),
               ),
               textAlign: TextAlign.center,
             ),
           ),
         ),
       );
  }
}
