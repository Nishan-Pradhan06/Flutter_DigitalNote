import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicyProvider with ChangeNotifier {
  Future<void> showPrivacyDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            "Privacy Policies",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style:
                    const TextStyle(color: Colors.black), // default text style
                children: [
                  const TextSpan(
                    text:
                        "We prioritize your privacy. Our quotes app does not collect any personal data; the only information gathered is strictly limited to enhancing app functionality, such as device information and usage statistics, to improve performance and user experience. We do not store or share personally identifiable information with third parties and refrain from requesting unnecessary personal details. The quotes displayed in the app are generated using the public API from Quotable, and no data from your interaction with this API is collected or stored. While our app may include links to external sites, we do not assume responsibility for their privacy practices. Your data is safeguarded using industry-standard security measures. If you have any questions or concerns regarding our privacy policies, please contact us at.",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    text: "GITHUB",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        const url =
                            "https://github.com/Nishan-Pradhan06/Flutter_E-Note-App";
                        if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrl(Uri.parse(url));
                        } else {
                          throw "Cannot launch URL";
                        }
                      },
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}