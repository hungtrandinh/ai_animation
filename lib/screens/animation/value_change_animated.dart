import 'package:flutter/material.dart';

class ValueChangeAnimated extends StatefulWidget {
  const ValueChangeAnimated({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ValueChangeState();
  }
}

class ValueChangeState extends State<ValueChangeAnimated>
    with SingleTickerProviderStateMixin {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: 250.0,
          height: 250.0,
          color: Colors.red,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 50.0),
          ),
        ),
      ),
    );
  }

}
