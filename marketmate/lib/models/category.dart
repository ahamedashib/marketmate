import 'package:flutter/material.dart';

class Category {
  Category({
    required this.id,
    required this.title,
    this.color = const Color.fromARGB(255, 255, 163, 155),
    required this.imageUrl,
  });

  final String id;
  final String title;
  final Color color;
  final String imageUrl;
}
