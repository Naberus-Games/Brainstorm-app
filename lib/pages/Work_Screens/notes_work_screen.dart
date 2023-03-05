// ignore_for_file: library_private_types_in_public_api, camel_case_types

import 'package:brainstorm/theme.dart';
import 'package:flutter/material.dart';

class NotesWorkScreen extends StatelessWidget {
  const NotesWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const <Widget>[
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  hintText: 'Enter a title',
                  hintStyle: TextStyle(fontSize: 20)),
              style: TextStyle(fontSize: 20),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            TextField(
              maxLines: 24,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                hintText: 'Write a note',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 50.0,
          child: Row(
            children: <Widget>[
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return const bottomSheetContent();
                      },
                    );
                  },
                  icon: const Icon(Icons.text_format),
                  label: const Text('Format'),
                ),
              ),
              const Expanded(
                child: Text(''),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class bottomSheetContent extends StatefulWidget {
  const bottomSheetContent({super.key});

  @override
  _bottomSheetContentState createState() => _bottomSheetContentState();
}

class _bottomSheetContentState extends State<bottomSheetContent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const ListTile(
          title: Text(
            'Options',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.format_bold,
              color: const BrainstormTheme().primaryColor),
          title: const Text('Bold'),
        ),
        ListTile(
          leading: Icon(Icons.format_italic,
              color: const BrainstormTheme().primaryColor),
          title: const Text('Italic'),
        ),
        ListTile(
          leading: Icon(Icons.format_underlined,
              color: const BrainstormTheme().primaryColor),
          title: const Text('Underline'),
        ),
        ListTile(
          leading: Icon(Icons.strikethrough_s,
              color: const BrainstormTheme().primaryColor),
          title: const Text('Strikethrough'),
        ),
        ListTile(
          leading: Icon(Icons.text_format_sharp,
              color: const BrainstormTheme().primaryColor),
          title: const Text('Superscript'),
        ),
        ListTile(
          leading: Icon(Icons.text_format_outlined,
              color: const BrainstormTheme().primaryColor),
          title: const Text('Subscript'),
        ),
        const Divider(color: Colors.grey),
        ListTile(
          onTap: () => paragraphStylesMenu(),
          leading: Icon(Icons.format_size,
              color: const BrainstormTheme().primaryColor),
          title: const Text('Paragraph Styles'),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          onTap: () => alignMenu(),
          leading: Icon(Icons.format_align_left,
              color: const BrainstormTheme().primaryColor),
          title: const Text('Align'),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          onTap: () => lineSpacingMenu(),
          leading: Icon(Icons.format_line_spacing,
              color: const BrainstormTheme().primaryColor),
          title: const Text('Line spacing'),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          onTap: () => numberedListMenu(),
          leading: Icon(Icons.format_list_numbered,
              color: const BrainstormTheme().primaryColor),
          title: const Text('Numbered lists'),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          onTap: () => listOptionsMenu(),
          leading: Icon(Icons.format_list_bulleted,
              color: const BrainstormTheme().primaryColor),
          title: const Text('List options'),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        const Divider(color: Colors.grey),
        ListTile(
          leading: Icon(Icons.format_clear,
              color: const BrainstormTheme().primaryColor),
          title: const Text('Clear formatting'),
        ),
      ],
    );
  }

  paragraphStylesMenu() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Paragraph Styles'),
          content: SizedBox(
            height: 340.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: const Text('Normal'),
                  leading: Radio(
                    value: 1,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Title'),
                  leading: Radio(
                    value: 2,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Subtitle'),
                  leading: Radio(
                    value: 3,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Heading 1'),
                  leading: Radio(
                    value: 4,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Heading 2'),
                  leading: Radio(
                    value: 3,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Heading 3'),
                  leading: Radio(
                    value: 4,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            MaterialButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            MaterialButton(
              child: const Text('Ok'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  alignMenu() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Align'),
          content: SizedBox(
            height: 230.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: const Text('Left'),
                  leading: Radio(
                    value: 1,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Center'),
                  leading: Radio(
                    value: 2,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Right'),
                  leading: Radio(
                    value: 3,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Justify'),
                  leading: Radio(
                    value: 4,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            MaterialButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            MaterialButton(
              child: const Text('Ok'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  lineSpacingMenu() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        double? lineSpacing = 1.0;
        var customLineSpacing = 1.0;
        return AlertDialog(
          title: const Text('Line Spacing'),
          content: SizedBox(
            height: 230.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: const Text('Single'),
                  leading: Radio(
                    value: 1.0,
                    groupValue: lineSpacing,
                    onChanged: (value) {
                      setState(() {
                        lineSpacing = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('1.15'),
                  leading: Radio(
                    value: 1.15,
                    groupValue: lineSpacing,
                    onChanged: (value) {
                      setState(() {
                        lineSpacing = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Double'),
                  leading: Radio(
                    value: 2.0,
                    groupValue: lineSpacing,
                    onChanged: (value) {
                      setState(() {
                        lineSpacing = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Custom...'),
                  leading: Radio(
                    value: customLineSpacing,
                    groupValue: lineSpacing,
                    onChanged: (value) {
                      setState(() {
                        lineSpacing = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            MaterialButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            MaterialButton(
              child: const Text('Ok'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  numberedListMenu() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Numbered Lists'),
          content: SizedBox(
            height: 400.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: const Text('Start with 1'),
                  leading: Radio(
                    value: 1,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Start with 2'),
                  leading: Radio(
                    value: 2,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Start with 3'),
                  leading: Radio(
                    value: 3,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Lowercase Alphabet'),
                  leading: Radio(
                    value: 4,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Uppercase Alphabet'),
                  leading: Radio(
                    value: 3,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Lowercase Roman Numerals'),
                  leading: Radio(
                    value: 4,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Uppercase Roman Numerals'),
                  leading: Radio(
                    value: 3,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            MaterialButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            MaterialButton(
              child: const Text('Ok'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  listOptionsMenu() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('List Options'),
          content: SizedBox(
            height: 450.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: const Text('Indent'),
                  leading: Radio(
                    value: 1,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Outdent'),
                  leading: Radio(
                    value: 2,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Increase Level'),
                  leading: Radio(
                    value: 3,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Decrease Level'),
                  leading: Radio(
                    value: 4,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Bullet Style'),
                  leading: Radio(
                    value: 3,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Number Style'),
                  leading: Radio(
                    value: 4,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Increase Indent'),
                  leading: Radio(
                    value: 3,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: const Text('Decrease Indent'),
                  leading: Radio(
                    value: 4,
                    groupValue: 1,
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            MaterialButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            MaterialButton(
              child: const Text('Ok'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
}
