import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/book_item.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';

class BookItemList extends StatelessWidget {
  final scrollability = {
    "never": const NeverScrollableScrollPhysics(),
    "always": const AlwaysScrollableScrollPhysics()
  };
  final String physics;
  BookItemList({
    Key? key,
    this.physics = "always",
  }) : super(key: key);
  List<dynamic> books = [
    {
      "id": 1,
      "title": "Good Time Max",
      "author": "Homere Spicer",
      "translator": "Carline Dauney",
      "language": "Bulgarian",
      "cover": "assets/images/book1.jpg",
      "number_of_pages": 181,
      "price": 30.04,
      "book_summary":
          'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 2,
      "title": "Shot in the Heart",
      "author": "Feliza Gauch",
      "translator": "Loren MacMillan",
      "language": "Hungarian",
      "cover": "assets/images/book2.png",
      "number_of_pages": 122,
      "price": 7.38,
      "book_summary":
          'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 3,
      "title": "Macabre",
      "author": "Carny Lismer",
      "translator": "Arturo Loakes",
      "language": "Kashmiri",
      "cover": "assets/images/book3.jpg",
      "number_of_pages": 482,
      "price": 30.46,
      "book_summary":
          'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 4,
      "title": "The Sweet Ride",
      "author": "Rowland Titford",
      "translator": "Elle Hundall",
      "language": "Burmese",
      "cover": "assets/images/book4.jpg",
      "number_of_pages": 546,
      "price": 39.45,
      "book_summary":
          'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 5,
      "title": "Lesson Plan ",
      "author": "Avigdor Alps",
      "translator": "Phil Espine",
      "language": "Dutch",
      "cover": "assets/images/book5.jpg",
      "number_of_pages": 1206,
      "price": 2.13,
      "book_summary":
          'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 6,
      "title": "My Father's Glory (La gloire de mon père)",
      "author": "Konstantine Lorente",
      "translator": "Harbert Elcock",
      "language": "Kannada",
      "cover": "assets/images/book6.png",
      "number_of_pages": 565,
      "price": 13.37,
      "book_summary":
          'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 7,
      "title": "Munich",
      "author": "Ethelred Snowden",
      "translator": "Markus Blundon",
      "language": "Papiamento",
      "cover": "assets/images/book7.jpg",
      "number_of_pages": 600,
      "price": 37.04,
      "book_summary":
          'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
    {
      "id": 8,
      "title": "Somebody Up There Likes Me",
      "author": "Tonie Frostdicke",
      "translator": "Feodora Allmen",
      "language": "Persian",
      "cover": "assets/images/book8.jpg",
      "number_of_pages": 232,
      "price": 17.58,
      "book_summary":
          'ثم ها أنت ملأت الجو عطرًا بأزهارك الطيبة ، وثمارك العطرة ، فأنعشت النفوس ، وبعثت الأمل ، فلما خاف الناس من غيبتك ، وانقطاع شذاك ، أمعنوا الفكر في الاحتفاظ برائحتك ، فاستخرجوا الروائح من أزهارك ، وتحايلوا للانتفاع بها في غيابك .',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 0),
      physics: scrollability[physics],
      itemCount: books.length,
      itemBuilder: (context, index) {
        return Dismissible(
          resizeDuration: const Duration(milliseconds: 300),
          key: ValueKey(index),
          direction: DismissDirection.startToEnd,
          onDismissed: (direction) {
            Get.snackbar(
              'title',
              'this is the snackBar message',
              snackPosition: SnackPosition.BOTTOM,
              margin: EdgeInsets.only(
                bottom: Dimensions.height10,
              ),
              colorText: Colors.red,
              backgroundColor: Colors.white,
              onTap: (context) {
                print('object');
              },
            );
          },
          background: Container(
            padding: EdgeInsets.only(right: Dimensions.width20),
            color: Colors.red,
            child: Row(
              children: [
                Icon(
                  Icons.favorite,
                  size: Dimensions.iconSize30,
                  color: Colors.white70,
                ),
                SizedBox(
                  width: Dimensions.width10,
                ),
                SecondaryText(text: 'أضف للمفضلة')
              ],
            ),
            alignment: Alignment.centerRight,
          ),
          child: BookItem(
            i: index,
            bookAuthor: books[index]["author"],
            bookImage: books[index]["cover"],
            bookTitle: books[index]["title"],
            bookSummary: books[index]["book_summary"],
          ),
        );
      },
    );
  }
}
