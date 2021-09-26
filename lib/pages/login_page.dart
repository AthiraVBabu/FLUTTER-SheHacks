import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [Image.asset("assets/welcome.png" ,
        fit:BoxFit.cover,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text("Welcome $name",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(children: [
            TextFormField(
            decoration: InputDecoration(
              hintText:"Enter Username",
              labelText: "Username",
            ),
            onChanged: (value){
              name = value;
              setState(() {
                
              });
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText:"Enter password",
              labelText: "password",
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/home");
               },

          child: Container(
            width: 150,
            height: 50,
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
            fontSize: 18),
            ),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10)),
          )
          ),



          // ElevatedButton(
          //   child: Text("Login"),
          //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
          //   onPressed: () {
          //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            // },
          // )
          ],
          ),
        )
        ],
      )
        );
  }
}