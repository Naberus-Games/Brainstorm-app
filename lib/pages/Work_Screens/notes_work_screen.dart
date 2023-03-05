// ignore_for_file: library_private_types_in_public_api, camel_case_types

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
        ListTile(
          title: Text(
            'Options',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.format_bold),
          title: Text('Bold'),
        ),
        ListTile(
          leading: Icon(Icons.format_italic),
          title: Text('Italic'),
        ),
        ListTile(
          leading: Icon(Icons.format_underlined),
          title: Text('Underline'),
        ),
        ListTile(
          leading: Icon(Icons.strikethrough_s),
          title: Text('Strikethrough'),
        ),
        ListTile(
          leading: Icon(Icons.text_format_sharp),
          title: Text('Superscript'),
        ),
        ListTile(
          leading: Icon(Icons.text_format_outlined),
          title: Text('Subscript'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.format_size),
          title: Text('Paragraph Styles'),
        ),
        ListTile(
          leading: Icon(Icons.format_align_left),
          title: Text('Align'),
        ),
        ListTile(
          onTap: () => lineSpacingMenu(),
          leading: Icon(Icons.format_line_spacing),
          title: Text('Line spacing'),
        ),
        ListTile(
          leading: Icon(Icons.format_list_numbered),
          title: Text('Numbered lists'),
        ),
        ListTile(
          leading: Icon(Icons.format_list_bulleted),
          title: Text('List options'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.format_clear),
          title: Text('Clear formatting'),
        ),
      ],
    );
  }

  lineSpacingMenu() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        double? _lineSpacing = 1.0;
        var _customLineSpacing = 1.0;
        return AlertDialog(
          title: const Text('Line Spacing'),
          content: Container(
            height: 230.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: const Text('Single'),
                  leading: Radio(
                    value: 1.0,
                    groupValue: _lineSpacing,
                    onChanged: (value) {
                      setState(() {
                        _lineSpacing = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('1.15'),
                  leading: Radio(
                    value: 1.15,
                    groupValue: _lineSpacing,
                    onChanged: (value) {
                      setState(() {
                        _lineSpacing = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Double'),
                  leading: Radio(
                    value: 2.0,
                    groupValue: _lineSpacing,
                    onChanged: (value) {
                      setState(() {
                        _lineSpacing = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Custom...'),
                  leading: Radio(
                    value: _customLineSpacing,
                    groupValue: _lineSpacing,
                    onChanged: (value) {
                      setState(() {
                        _lineSpacing = value;
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
}
