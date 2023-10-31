import 'package:flutter/material.dart';
import 'package:marketmate/models/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key, required this.category, required this.isSelected});

  final Category category;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20, top: 10),
        height: 120,
        width: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(width: 0.5, color: Colors.black38),
            color: isSelected
                ? const Color.fromARGB(255, 244, 67, 54)
                : Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 213, 194, 194).withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 3),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 82,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color.fromARGB(255, 244, 241, 241)),
              child: Center(
                child: Image(
                  image: AssetImage(
                    category.imageUrl,
                  ),
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              category.title,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: isSelected
                      ? Colors.white
                      : const Color.fromARGB(255, 244, 67, 54)),
            )
          ],
        ));
  }
}
