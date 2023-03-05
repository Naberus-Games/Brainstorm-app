import 'package:firebase_storage/firebase_storage.dart';

final storage = FirebaseStorage.instance;
final storageRef = FirebaseStorage.instance.ref();

class RecentsData {
  final int pageNumber;
  final String title;
  final String thumbnail;
  final String? route;

  RecentsData(this.pageNumber, this.title, this.thumbnail, this.route);
}

List<RecentsData> carouselDataList = [
  RecentsData(
      1,
      'Whiteboard',
      'https://firebasestorage.googleapis.com/v0/b/brainstorm-223f9.appspot.com/o/Cleaned-Example2.jpg?alt=media&token=9b59037e-c419-4b36-96ba-26e199b5facb',
      null),
  RecentsData(
      2,
      'Note',
      'https://firebasestorage.googleapis.com/v0/b/brainstorm-223f9.appspot.com/o/1*JPIrVxzu4KmwD7aLf60Q5g.png?alt=media&token=0efa9118-d370-4e50-916f-c91e150f02a0',
      null),
  RecentsData(
      3,
      'To-Do',
      'https://firebasestorage.googleapis.com/v0/b/brainstorm-223f9.appspot.com/o/bj-start-here-future-log.jpg?alt=media&token=01aae888-fd0a-42d0-b1b4-5ecd657eaa6a',
      null),
  RecentsData(
      4,
      'Scripts',
      'https://firebasestorage.googleapis.com/v0/b/brainstorm-223f9.appspot.com/o/Screenplay_example.svg.png?alt=media&token=b880e890-f870-4fda-8374-cb4f4e1ef3a9',
      null),
  RecentsData(
      5,
      'Scripts',
      'https://firebasestorage.googleapis.com/v0/b/brainstorm-223f9.appspot.com/o/Screenplay_example.svg.png?alt=media&token=b880e890-f870-4fda-8374-cb4f4e1ef3a9',
      null),
  RecentsData(
      6,
      'Scripts',
      'https://firebasestorage.googleapis.com/v0/b/brainstorm-223f9.appspot.com/o/Screenplay_example.svg.png?alt=media&token=b880e890-f870-4fda-8374-cb4f4e1ef3a9',
      null),
];
