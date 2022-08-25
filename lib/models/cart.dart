// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cafe/models/Items.dart';

class Cart {
  final Items items;
  final int numOfItems;
  Cart({
    required this.items,
    required this.numOfItems,
  });
}

//demo data for our cart

List<Cart> demoCarts = [
  Cart(items: demoItems[0], numOfItems: 2),
  Cart(items: demoItems[1], numOfItems: 1),
  Cart(items: demoItems[2], numOfItems: 1),
  Cart(items: demoItems[3], numOfItems: 1),
];
