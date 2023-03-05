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
      'https://imgs.search.brave.com/HB14see-Aink2I25XWHuDI7XX7lHccSFwUdyXzizn1E/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9kam53/NWEwd3N6a3kwLmNs/b3VkZnJvbnQubmV0/L2lua2ZhY3Rvcnl3/cC93cC1jb250ZW50/L3VwbG9hZHMvMjAx/Ni8xMC9DbGVhbmVk/LUV4YW1wbGUyLmpw/Zw',
      null),
  RecentsData(
      2,
      'Note',
      'https://firebasestorage.googleapis.com/v0/b/brainstorm-223f9.appspot.com/o/1*JPIrVxzu4KmwD7aLf60Q5g.png?alt=media&token=0efa9118-d370-4e50-916f-c91e150f02a0',
      null),
  RecentsData(
      3,
      'To-Do',
      'https://assets.hongkiat.com/uploads/to-do-lists-by-hand/bj-start-here-future-log.jpg',
      null),
  RecentsData(
      4,
      'Scripts',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Screenplay_example.svg/351px-Screenplay_example.svg.png',
      null),
  RecentsData(
      5,
      'Scripts',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Screenplay_example.svg/351px-Screenplay_example.svg.png',
      null),
  RecentsData(
      6,
      'Scripts',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Screenplay_example.svg/351px-Screenplay_example.svg.png',
      null),
];
