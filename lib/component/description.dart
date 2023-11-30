import 'package:flutter/material.dart';

Widget padraoDescricaoCard(String texto, double topo){
  return Padding(
    padding: EdgeInsets.fromLTRB(10, topo, 10, 10),
    child: Text(texto, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600, fontFamily: "Lexend"), textAlign: TextAlign.justify,), 
  );
}