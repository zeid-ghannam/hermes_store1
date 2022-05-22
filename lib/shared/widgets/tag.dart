import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';

class tag extends StatelessWidget {
  final String label;
  final Color? color;
  const tag({
    Key? key, required this.label, this.color = Colors.black45,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Dimensions.width5),
      child: Chip(
        label: Text(label, style: const TextStyle(color: Colors.white),),
        elevation: 0.0,
        padding: EdgeInsets.all(Dimensions.width5/Dimensions.width5),
        backgroundColor: color,
      ),
    );
  }
}


//book category
// Container(
// width: Dimensions.textItemContainer,
// child: Wrap(
// alignment:WrapAlignment.start ,
// children: books[index]['book_category']
// .map<Widget>(
// (item) => tag(
// label: item,
// color: (colors..shuffle()).first,
// ),
// )
// .toList(),
// ),
// ),