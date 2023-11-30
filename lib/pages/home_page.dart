import 'package:flutter/material.dart';
import 'package:project/component/my_textfield.dart';
import 'package:project/pages/intro_page.dart';

import '../component/category.dart';
import '../component/profile_w.dart';
import '../models/profile_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _searchController = TextEditingController();
  var _currentIndex = 1;

  int counter(List<Profile> count) {
    return count.length;
  }

  int counterMap(List<Map<String, dynamic>> count) {
    return count.length;
  }

  void _loadScreen() {
    switch(_currentIndex) {
      case 0: Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const IntroPage()),
                );
                break;
      case 1: Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
                break;
    }
  }

  List<Map<String, dynamic>> sections = [
    {
      'category': 'Escola',
      'icon': Icons.book,
      'categId': '0000',
    },
    {
      'category': 'Comida',
      'icon': Icons.food_bank,
      'categId': '0001',
    },
    {
      'category': 'Saúde',
      'icon': Icons.local_hospital,
      'categId': '0002',
    },
    {
      'category': 'Transporte',
      'icon': Icons.fire_truck,
      'categId': '0003',
    },
    {
      'category': 'Lazer',
      'icon': Icon(Icons.gamepad),
      'categId': '0004',
    },
    {
      'category': 'Computer',
      'icon': Icon(Icons.phone),
      'categId': '0005',
    },
    {
      'category': 'Jogos',
      'icon': Icon(Icons.games),
      'categId': '0006',
    },
    {
      'category': 'Casa',
      'icon': Icon(Icons.home),
      'categId': '0007',
    },
  ];

  List<Profile> profile = [
    Profile(
      "Ricardo Neres",
      25,
      "Tech | Computer | Programming",
      "lorem ipsum dolor lorem in dolor lore tempor inv Donec id lorem ipsum dolor lorem in dolor lore tempor inv Donec id",
      "None",
      1010,
      "assets/img/profile/men1.png",
      5
    ),
    Profile(
      "Ricardo Neymar",
      26,
      "Builder | Engineer | Fixer",
      "lorem ipsum dolor lorem in dolor lore tempor inv Donec id lorem ipsum dolor lorem in dolor lore tempor inv Donec id",
      "None",
      1011,
      "assets/img/profile/men2.png",
      1.2
    ),
    Profile(
      "Amanda Rodrigo",
      26,
      "Secretaria",
      "lorem ipsum dolor lorem in dolor lore tempor inv Donec id lorem ipsum dolor lorem in dolor lore tempor inv Donec id",
      "None",
      1101,
      "assets/img/profile/women1.png",
      3
    ),
    Profile(
      "Carol Rafaela",
      31,
      "Organiza | Limpa | Conserta",
      "lorem ipsum dolor lorem in dolor lore tempor inv Donec id lorem ipsum dolor lorem in dolor lore tempor inv Donec id",
      "None",
      1111,
      "assets/img/profile/women2.png",
      4.1
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff0C1316),
        title: Image.asset(
          'assets/img/nome_dark.png',
          height: 60,
          width: 500,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(13, 18, 22, 1),
      body: Column(children: [
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            child: MyTextField(
                controller: _searchController,
                hintText: "Search Here...",
                obscureText: false),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 300,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: counter(profile),
            separatorBuilder: (context, index) {
              return const SizedBox(width: 10);
            },
            itemBuilder: (context, index) {
              return myProfiles(profile[index], 300, 300, index, context);
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                const Text(
                  "Categorias:",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 150,
                  width: 500,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemCount: counterMap(sections),
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 20);
                    },
                    itemBuilder: (context, index) {
                      return category(sections, index);
                    },
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
          setState(() => _currentIndex = index);
          _loadScreen();
          },
          backgroundColor: const Color(0xff0C1316),
          unselectedLabelStyle:
              const TextStyle(color: Colors.white, fontSize: 14),
          fixedColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.arrow_back,
                  color: Color.fromRGBO(193, 254, 113, 1),
                ),
                label: "Back",
                backgroundColor: Color(0xff0C1316)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Color.fromRGBO(193, 254, 113, 1),
                ),
                label: "Search",
                backgroundColor: Color(0xff0C1316)),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color.fromRGBO(193, 254, 113, 1),
              ),
              label: "Home",
              backgroundColor: Color(0xff0C1316),
            ),
          ]),
    );
  }
}
