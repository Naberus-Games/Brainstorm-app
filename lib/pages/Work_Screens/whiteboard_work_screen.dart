import 'package:draggable_home/draggable_home.dart';
import 'package:brainstorm/theme.dart';
import 'package:flutter/material.dart';

//import 'camera_preview.dart';

class WhiteboardWorkScreen extends StatelessWidget {
  const WhiteboardWorkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      leading: const Icon(Icons.arrow_back_ios),
      title: const Text("Files"),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
      ],
      headerWidget: headerWidget(context),
      body: [
        listView(),
      ],
      fullyStretchable: true,
      //expandedBody: const CameraPreview(),
      backgroundColor: Colors.white,
      appBarColor: BrainstormTheme().lightAccentColor,
    );
  }

  Row headerBottomBarWidget() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(
          Icons.settings,
          color: Colors.black,
        ),
      ],
    );
  }

  Widget headerWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Files",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))),
      body: Row(
        children: const [
          Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
              child: Text("Recents",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)))
        ],
      ),
      backgroundColor: BrainstormTheme().lightAccentColor,
    );
  }

  ListView listView() {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      shrinkWrap: true,
      itemBuilder: (context, index) => Card(
        color: Colors.white70,
        child: ListTile(
          leading: CircleAvatar(
            child: Text("$index"),
          ),
          title: const Text("Title"),
          subtitle: const Text("Subtitile"),
        ),
      ),
    );
  }
}
