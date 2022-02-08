import 'package:easy_stopwatch_web/utils/constants.dart';
import 'package:flutter/material.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {},
          child: Image.asset('assets/icon_app_60x60.png'),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 10.0,
              color: kPrimaryColor,
            )
          ],
        ),
        Row(
          children: const [
            Padding(padding: EdgeInsets.all(16.0), child: HeaderLogo())
          ],
        )
      ],
    );
  }
}
