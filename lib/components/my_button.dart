import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  Function() tap;
  Widget widget;
  MyButton({super.key, required this.tap, required this.widget});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,//passing function as parameter
      ///onTap: tap()//called immediately without user tapping on the button, meaning when the
      ///widget tree building phase
      ///onTap: tap//called only when user tap the button
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).colorScheme.secondary),
          
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: widget,
          )),
      ) ,


    );
  }
}