// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:hng_stg1_proj_v1/customClipperguy.dart';
import 'package:hng_stg1_proj_v1/webview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/webViewContainer':(context) => const webViewContainer(),
          },
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var sizePrime = MediaQuery.of(context).size;
    return Scaffold(
            body: Stack(
              alignment: Alignment.center,
              children: [
                
                ClipPath(
                  clipper: customClipperguy(),
                  child: Container(
                    color: Colors.yellow,
                    height: sizePrime.height,
                    
                  ),
                            ),
              
              Positioned(
                top: 250, 
                
                child: Container(
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
                  boxShadow: const [BoxShadow(color: Color.fromARGB(255, 218, 218, 218), spreadRadius: 1,
                  blurRadius: 5,)]
                  ),
                  height: 400,
                  width: 300,

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        // ignore: avoid_unnecessary_containers
                        child: Container( 
                          child: const CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage('images/DP temp.JPG'),
                            
                            
                          ),),
                      ),

                      const Text ('Slack Display Name',style: TextStyle(fontSize: 10),),
                      const Text ('Kolade Modupe',style: TextStyle(fontSize: 20),),
                      const Text ('Mobile App Developer at HNGx',style: TextStyle(fontSize: 10),),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: FilledButton(
                                        style: FilledButton.styleFrom(
                                          backgroundColor: Colors.blueAccent
                                         ) ,
                                        onPressed: () {
                                          Navigator.of(context).pushNamed('/webViewContainer');
                                        },
                                          child: const Text(
                        'Open GitHub',
                        style: TextStyle(color: Colors.white, fontSize: 13.0),
                        
                                          ),
                                        ),
                      ),
                      
                      
                    ],

                  ),
                   
                  ),
              ),
                
                ]
            ),
          );
  }
}



