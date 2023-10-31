import 'package:flutter/material.dart';
import 'package:marketmate/models/meat.dart';

class MeatCategory extends StatelessWidget {
  const MeatCategory({super.key, required this.meat});
  final Meat meat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: 400,
          width: 300,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 211, 211),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 140,
                  width: 280,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 250, 126, 138)),
                  child: Image(
                      image: AssetImage(meat.image), height: 80, width: 80)),
              const SizedBox(
                height: 5,
              ),
              Text(meat.title,
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 244, 67, 54))),
              const SizedBox(
                height: 3,
              ),
              Text(meat.price,
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 244, 67, 54)))
            ],
          ),
        ));
  }
}
