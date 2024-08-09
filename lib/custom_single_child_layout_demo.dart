import 'package:flutter/material.dart';

class CustomSingleChildLayoutDemo extends StatelessWidget {
  const CustomSingleChildLayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSingleChildLayout(
        delegate: CustomLayout(),
        child: Container(
          color: Colors.black,
          child: const FlutterLogo(
            size: 100,
          ),
        ),
      ),
    );
  }
}

class CustomLayout extends SingleChildLayoutDelegate {
  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints.tightFor(
        width: constraints.maxWidth / 2, height: constraints.maxHeight / 3);
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return false;
  }
}
