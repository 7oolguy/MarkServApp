import 'package:flutter/material.dart';

Widget botaoDark(String conteudo, int profileId) {
  return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            fixedSize: const Size(164, 40),
            backgroundColor: const Color(0xff0C1316),
            side: const BorderSide(color: Color(0xffC1FE71)),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          onPressed: () => {
                //open the person profile page,
              },
          child: Text(conteudo,
              style: const TextStyle(
                  color: Color(0xfffafafb),
                  fontSize: 20,
                  fontFamily: 'Lexend'))));
}
