import 'package:flutter/material.dart';
import 'package:project_sample/components/textfrom_field.dart';

class Columnwidget extends StatelessWidget {
  TextEditingController _answerController = TextEditingController();
  Columnwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications from a single codebase for any web browser, Fuchsia, Android, iOS, Linux, macOS, and Windows. First described in 2015, Flutter was released in",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              "An asynchronous operation executes in a thread, separate from the main application thread?"),
        ),
        AppInputTextfieldscreen(
          controller: _answerController,
          validator: (value) {
            if (value == false) {
              return 'Required.';
            }
          },
        ),
        // Textfromfieldscreen(),
      ],
    );
  }
}
