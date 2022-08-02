import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 252, 131, 31),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/wallpaper.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Container(
            width: 300,
            height: 600,
            child: Material(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromARGB(150, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [ 
                  const SizedBox(
                    height: 30,
                  ),             
                  Container(
                    width: 180,
                    height: 180,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(100, 0, 0, 200),
                       shape: BoxShape.circle
                    ),
                    child: Image.asset(
                      'images/scorpion4.png',
                      cacheHeight: 150,
                      cacheWidth: 150,
                      ),
                  ),                  
                  const Text(
                    'Hanzo Hasashi',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      ),
                  ),          
                  const Text(
                    'Mortal Kombat Champion',
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ), 
                  Container(
                    height: 50,
                    width: 250,
                    color: Color.fromARGB(100, 241, 198, 6),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.phone_android,
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          '09-123456',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.lightGreenAccent,
                          ),
                          ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    color: Color.fromARGB(100, 241, 198, 6),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.alternate_email,
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'hanzo987@mail.com',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.lightGreenAccent,
                          ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
