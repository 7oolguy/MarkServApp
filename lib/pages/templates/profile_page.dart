import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/component/description.dart';
import 'package:project/models/profile_class.dart';

class ProfilePage extends StatefulWidget {
  final int index;
  final Profile profile;
  const ProfilePage({super.key, required this.index, required this.profile});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(
          color: Color.fromRGBO(193, 254, 113, 1), //change your color here
        ),
        title: Text(
          widget.profile.nome,
          style: const TextStyle(
            color: Color.fromRGBO(193, 254, 113, 1),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: const Color(0xff0C1316),
      ),
      backgroundColor: const Color.fromARGB(255, 22, 22, 22),
      body: Center(
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 10, right: 0, bottom: 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    widget.profile.profPic,
                    height: 90,
                    width: 90,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, left: 10, right: 10, bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff0C1316),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color.fromRGBO(
                            193,
                            254,
                            113,
                            1,
                          ),
                          width: 1)),
                  height: 100,
                  width: 270,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(children: [
                      Text(
                        widget.profile.skill,
                        style: const TextStyle(
                            color: Color.fromRGBO(193, 254, 113, 1),
                            fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 50),
                        child: Row(
                          children: [
                            Text(
                              "${widget.profile.distance}",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 30),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text("km de voce",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              )
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 20, right: 20, bottom: 0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff0C1316), width: 4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    padraoDescricaoCard(widget.profile.description, 10),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 0, left: 250, right: 0, bottom: 0),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Text("More...",
                            style: TextStyle(
                              color: Color.fromARGB(255, 78, 78, 78),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            )),
                      ),
                    )
                  ],
                ),
              )),
          const Padding(
            padding: EdgeInsets.only(
              right: 180,
            ),
            child: Text("Fale Comigo",
                style: TextStyle(color: Colors.white, fontSize: 30)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: TextField(
                controller: message,
                obscureText: false,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    labelText: "Digite Aqui...",
                    labelStyle: const TextStyle(color: Colors.white),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.message),
                      onPressed: () {},
                      color: const Color.fromRGBO(193, 254, 113, 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: const BorderSide(color: Color(0xff0C1316)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(00),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(193, 254, 113, 1)),
                    ),
                    fillColor: const Color.fromARGB(255, 22, 22, 22),
                    filled: true,
                    hintText: "Type",
                    hintStyle: const TextStyle(color: Colors.grey))),
          ),
        ]),
      ),
    );
  }
}
