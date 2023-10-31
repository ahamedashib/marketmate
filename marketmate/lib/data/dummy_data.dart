import 'package:marketmate/models/category.dart';
import 'package:marketmate/models/meat.dart';

List<Category> availablecategory = [
  Category(
    id: '1',
    title: 'Meat',
    imageUrl: 'assets/images/meat.png',
  ),
  Category(
    id: '2',
    title: 'Dairy',
    imageUrl: 'assets/images/dairy.png',
  ),
  Category(
    id: '3',
    title: 'Fruits',
    imageUrl: 'assets/images/Orange.png',
  ),
  Category(
    id: '4',
    title: 'Vegetables',
    imageUrl: 'assets/images/veg.png',
  ),
  Category(
    id: '5',
    title: 'Breads',
    imageUrl: 'assets/images/breads.png',
  ),
];
final List<Meat> availablemeat = [
  Meat(
    id: '1',
    title: 'Chicken Leg',
    image: 'assets/images/chickenleg.png',
    price: '12.99',
  ),
  Meat(
    id: '2',
    title: 'Beef Steak',
    image: 'assets/images/meat.png',
    price: '18.99',
  ),
  Meat(
    id: '3',
    title: 'Whole Chicken',
    image: 'assets/images/wholechicken.png',
    price: '14.49',
  ),
  Meat(
    id: '4',
    title: 'Mutton',
    image: 'assets/images/goat.png',
    price: '18.49',
  ),
  Meat(
    id: '5',
    title: 'Wings',
    image: 'assets/images/wings.png',
    price: '18.49',
  ),
  Meat(
    id: '6',
    title: 'Mutton',
    image: 'assets/images/ribs.png',
    price: '18.49',
  ),
];
