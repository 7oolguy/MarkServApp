import 'package:flutter/material.dart';
import 'package:project/component/my_btn.dart';
import 'package:project/models/profile_class.dart';

import 'description.dart';

Widget myProfiles(Profile profile, double height, double width, int index, BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        color: const Color.fromARGB(255, 22, 22, 22),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromRGBO(193, 254, 113, 1),
          width: 5,
        )),
    height: height,
    width: width,
    child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  profile.profPic,
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Text(
                  "${profile.nome}, ${profile.idade}",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(193, 254, 113, 1)),
                ),
                Text(
                  profile.skill,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(193, 254, 113, 1)),
                ),
              ]),
            )
          ],
        ),
        padraoDescricaoCard(profile.description, 20),
        botaoDark("Contratar", profile, index, context),
      ],
    ),
  );
}
