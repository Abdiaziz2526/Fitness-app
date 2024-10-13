import 'package:fitness_app/Form/Register.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: 850, width: 500,
          decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(image: AssetImage("assets/bgg.jpeg"), 
            fit: BoxFit.cover,
            //colorFilter: ColorFilter.mode(Color(131625).withOpacity(0.0), BlendMode.color)
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 340,),
                Text("The pain you feel today will be the strength you",style: TextStyle(
                  fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold
                ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right: 150),
                   child: Text("feel tomorrow",style: TextStyle(
                    fontSize: 35, color: Color(0xff2c65d9), fontWeight: FontWeight.w400
                    ),
                      ),
                 ),
                 SizedBox(height: 250,),
                 Container(
                  height: 55, width: 400,
                  child: ElevatedButton(onPressed: 
                  (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                  }, style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff2c65d9),
                    elevation: 0
                  ),
                  child: Text("Register",style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.w400, 
                  ),
                  ),
                  ),
                  ),
                 
              ],
              
            ),
            
          ),
          
        ),
      ),
    );
  }
}