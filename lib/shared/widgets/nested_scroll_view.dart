import 'package:flutter/material.dart';

class NestedScrollViewWidget extends StatelessWidget {
  NestedScrollViewWidget({Key? key}) : super(key: key);
  List<dynamic> books = [
    {
      "id": 1,
      "title": "فن الامبالاة",
      "author": "زيد غنام",
      "translator": "المقداد علي",
      "language": "عربي سوري",
      "cover": "assets/images/book1.jpg",
      "number_of_pages": 181,
      "book_category": ["رومنسي", "أكشن", "مغامرة","كوميدي", "خيال علمي", ],
      "price": 30.04
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    ) ;
  }
}
