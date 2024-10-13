import 'package:fitness_app/Home/HomeLose.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Color(0xff2c65d9),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Register here",
                style: TextStyle(
                    fontSize: 27,
                    color: Color(0xff2c65d9),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10,),
               TextField(
                decoration: InputDecoration( 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Enter your name',
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration( 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Enter your age',
                ),
              ),
               SizedBox(height: 15,),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration( 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Enter your height',
                ),
              ),
               SizedBox(height: 15,),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration( 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Enter your weight',
                ),
              ),
              SizedBox(height: 25,),
               Container(
                  height: 55, width: 400,
                  child: ElevatedButton(onPressed: 
                  (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeLoseweight()));
                  }, style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff2c65d9),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  child: Text("Submit",style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.w400, 
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
