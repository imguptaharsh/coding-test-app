import 'package:codeditor/variables/variables.dart';
import 'package:codeditor/variables/themes.dart';
import 'package:flutter/material.dart';
import 'package:code_editor/code_editor.dart';

import '../widgets/custom_button.dart';
// import 'package:flutter_highlight/flutter_highlight.dart';
// import 'package:flutter_highlight/themes/github.dart';

class CodeEditors extends StatefulWidget {
  const CodeEditors({Key? key}) : super(key: key);

  @override
  State<CodeEditors> createState() => _HomePageState();
}

class _HomePageState extends State<CodeEditors> {
  int count = 0;
  late EditorModel model;
  @override
  void initState() {
    super.initState();

    List<FileEditor> files = [
      FileEditor(
        name: "C++",
        language: "cpp",
        code: "// Write your C++ code here",
      ),
      FileEditor(
        name: "Java",
        language: "java",
        code: "// Write your Java code here",
      ),
      FileEditor(
        name: "Dart",
        language: "dart",
        code: "// Write your Dart code here",
      ),
      FileEditor(
        name: "Python",
        language: "python",
        code: "# Write your Python code here",
      ),
    ];

    model = EditorModel(
      files: files,
      styleOptions: EditorModelStyleOptions(
          placeCursorAtTheEndOnEdit: false,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          showUndoRedoButtons: true,
          editorColor: GlobalVariables.cardBackgroundColor,
          heightOfContainer: 600,
          fontSize: 14,
          editorBorderColor: Colors.white,
          editorToolButtonColor: const Color.fromARGB(255, 32, 32, 32),
          editButtonTextColor: Colors.green,
          // editor

          editButtonBackgroundColor: Colors.white,
          theme: CustomTheme.theme)
        ..defineEditButtonPosition(
            // yes with 2 dots
            bottom: 10,
            // left: 110,
            right: 10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: GlobalVariables.backgroundAppBarColor,
        title: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(right: 40),
          child: const Text(
            "Code Editor",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CodeEditor(
                model: model,
                // formatters: [_selectedLanguage],
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    onTap: () {},
                    isText: false,
                    icon: "assets/run_code.svg",
                    width: 80,
                    gradient: GlobalVariables.submitGradient,
                    // height: 10,
                  ),
                  CustomButton(
                    onTap: () {},
                    text: "Submit",
                    icon: "assets/submit_code.svg",

                    width: 100,
                    // height: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 15.0),
              child: Text(
                'Note: Plagiarism is strictly prohibited',
                style: TextStyle(
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10.0, right: 10),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: GlobalVariables.cardBackgroundColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: const Icon(
            Icons.dashboard,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
