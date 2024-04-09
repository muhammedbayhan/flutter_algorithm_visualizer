import 'package:flutter/material.dart';

class PrimaryButtonWidget extends StatelessWidget {
   const PrimaryButtonWidget({
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
           gradient: const LinearGradient(
             begin: Alignment(-0.95, 0.0),
             end: Alignment(1.0, 0.0),
             colors: [Color(0xff667eea), Color(0xff64b6ff)],
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
