import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    await launch(url);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Follow us:",
            style: TextStyle(fontSize: 20.0),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                  onPressed: () {
                    _launchURL("https://www.facebook.com/easystopwatchapp");
                  },
                  icon: Image.asset('assets/Facebook.png'),
                  label: const Text("")),
              TextButton.icon(
                  onPressed: () {
                    _launchURL("https://twitter.com/EasyStopwatch");
                  },
                  icon: Image.asset('assets/Twitter.png'),
                  label: const Text("")),
              TextButton.icon(
                  onPressed: () {
                    _launchURL(
                        "https://medium.com/@yoavsbg17/hey-i-just-fixed-your-stopwatch-app-2cd206e571d");
                  },
                  icon: Image.asset('assets/Medium.png'),
                  label: const Text("")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    final Uri emailLaunchUri = Uri(
                        scheme: 'mailto', path: 'EasyStopwatchApp@gmail.com');
                    _launchURL(emailLaunchUri.toString());
                  },
                  child: const Text("EasyStopwatchApp@gmail.com"))
            ],
          ),
        ],
      ),
    );
  }
}
