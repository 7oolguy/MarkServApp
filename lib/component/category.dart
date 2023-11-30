import 'package:flutter/material.dart';

Widget category(List<Map<dynamic, dynamic>> sections, index) {
  String nome = sections[index]["category"];
  String id = sections[index]["categId"];
  
  return Container(
      decoration: BoxDecoration(color: Colors.black,
      borderRadius: BorderRadius.circular(20),
      ),
      height: 50,
      width: 500,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 1),
          child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 500,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 0),
                      child: Icon(Icons.abc, color: Color.fromRGBO(193, 254, 113, 1), size: 50,),
                      ),
                      Text("-$nome", style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "Lexend",
                      ),)
                  ],
                ),
              )
            )
        ),
      ));
}
