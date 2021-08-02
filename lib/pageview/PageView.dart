import 'package:flutter/material.dart';

import 'Pagescreen1.dart';
import 'Pagescreen2.dart';
import 'Pagescreen3.dart';

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[
        Center(
          child: Page1(),
        ),
        Center(
          child: Page2(),
        ),
        Center(
          child: Page3(),
        )
      ],
    );
  }
}
