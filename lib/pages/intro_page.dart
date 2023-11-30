import 'package:flutter/material.dart';
import 'package:project/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C1316),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 130),
            child: Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/img/logo_dark.png'),
                      Positioned(
                        top: 150,
                        left: -55,
                        child: SizedBox(
                            height: 300,
                            width: 500,
                            child: Image.asset('assets/img/nameTXT.png')),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Column(
            children: [
              Text(
                "O Servico que voce procura,",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text("mais perto de VOCE.",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ],
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffC1FE71),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const SizedBox(
                height: 70,
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Vamos Comecar",
                      style: TextStyle(fontSize: 19, color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_right_sharp,
                      size: 45,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
