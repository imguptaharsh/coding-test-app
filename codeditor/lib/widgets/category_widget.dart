import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
              // color: const Color.fromARGB(96, 39, 38, 38),
              // ignore: prefer_const_constructors
              alignment: Alignment.center,
              width: 50,
              height: 25,
              decoration: const BoxDecoration(
                // gradient: cardGradient,
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
                color: Color.fromARGB(255, 60, 60, 60),
              ),
              child: const Text("Hard",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.red))),
          const SizedBox(
            width: 10,
          ),
          Container(
              // color: const Color.fromARGB(96, 39, 38, 38),
              // ignore: prefer_const_constructors
              alignment: Alignment.center,
              width: 80,
              height: 25,
              decoration: const BoxDecoration(
                // gradient: cardGradient,
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
                color: Color.fromARGB(255, 60, 60, 60),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.tag,
                    color: Colors.white,
                    size: 20,
                  ),
                  Text("Topics",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ],
              )),
          const SizedBox(
            width: 10,
          ),
          Container(
              // color: const Color.fromARGB(96, 39, 38, 38),
              // ignore: prefer_const_constructors
              alignment: Alignment.center,
              width: 115,
              height: 25,
              decoration: const BoxDecoration(
                // gradient: cardGradient,
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
                color: Color.fromARGB(255, 60, 60, 60),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.business_center,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Text(" Companies",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ],
              ))
        ],
      ),
    );
  }
}
