import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //scaffold can,t be const when some containers or something inside in the scaffold
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 188, 228, 247),
      body: Column(
        
        children: [
          
          Expanded(
            flex: 2,
            child: Container
            (
              height: 200,
              width: double.infinity,
              color: const Color.fromARGB(255, 195, 195, 195), 
              //if don't use any colour for the box,containers we can use sizeBox on behalf of container

              //in the container the child must same as the parent widget(container)
              //when we using center widget it can be a different sizes within the range bt it should be a exact position.
              child: Center(
                child: Image.asset(" ",
                
                width:size.width/2
                ),
                // child: Container(
                //   color: HexColor("19589D"), 
                  // To add hexcolour first go to flutter package hexcolour in google.then copy the code 
                  //under dependencies in installing.after go to the pubsespec.yaml & copy the perticular code under dependencies
                  // width: 150,
                  // height: 150,
                
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 200, 
              width: double.infinity,
              color: Color.fromARGB(255, 255, 255, 255),

              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column
                  (
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:
                       [
                        const Text(
                          "Hey its splassh page",
                          style: TextStyle(fontSize: 30),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: SizedBox(
                              // color: Colors.grey,
                              height: 50,
                              width: size.width /
                                  2, //if we want use any size->>> size. width*2/3
                              child:  Row(
                                children: 
                                [
                                 square(Colors.blue.shade200),
                                 square(Colors.blue.shade300),
                                 square(Colors.blue.shade400),
                                 square(Colors.blue.shade500),
                                 square(Colors.blue.shade600),
                                 
                        
                              
                                ],
                              )),
                        )
                      ])),
            ),
          ),

          Expanded(
            flex:1,
            child: Container(color:Color.fromARGB(255, 252, 139, 27)))

          
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class square extends StatelessWidget {
   final Color color;
  const square(
    this.color,
    {
    
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   
    return Expanded(
      
      child: Padding(
        padding: const EdgeInsets.only(left:8 ,right:8),
        child:AspectRatio(
          aspectRatio: 1,
        child: Container(
            //  width: 20, It doesn't want to use wisth coz it is in expanded widget
             height: 25,
            //  color: Colors.green
            color:color,
            
            ),
      ),
      ),
    );
  }
}
