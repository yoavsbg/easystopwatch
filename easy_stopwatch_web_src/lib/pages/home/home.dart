import 'package:easy_stopwatch_web/utils/globals.dart';
import 'package:flutter/material.dart';
import 'componenets/footer.dart';
import 'componenets/header.dart';
import 'componenets/main_body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Header(),
              ),
              MainBody(),
              SizedBox(
                height: 21.0,
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
