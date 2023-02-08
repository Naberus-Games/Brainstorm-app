import 'package:flutter/material.dart';

class CarouselView extends StatelessWidget {
  const CarouselView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: PageView(
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        children: [
          CategoryCardMallika1(
            title: "Whiteboard",
            image:
                "https://imgs.search.brave.com/HB14see-Aink2I25XWHuDI7XX7lHccSFwUdyXzizn1E/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9kam53/NWEwd3N6a3kwLmNs/b3VkZnJvbnQubmV0/L2lua2ZhY3Rvcnl3/cC93cC1jb250ZW50/L3VwbG9hZHMvMjAx/Ni8xMC9DbGVhbmVk/LUV4YW1wbGUyLmpw/Zw",
            onTap: () {},
            selected: false,
          ),
          CategoryCardMallika1(
              title: "Notes",
              image:
                  "https://miro.medium.com/max/4096/1*JPIrVxzu4KmwD7aLf60Q5g.png",
              onTap: () {}),
          CategoryCardMallika1(
              title: "Script",
              image:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Screenplay_example.svg/351px-Screenplay_example.svg.png",
              onTap: () {}),
          CategoryCardMallika1(
              title: "To-Do",
              image:
                  "https://assets.hongkiat.com/uploads/to-do-lists-by-hand/bj-start-here-future-log.jpg",
              onTap: () {}),
        ],
      ),
    );
  }
}

class CategoryCardMallika1 extends StatelessWidget {
  final String title;
  final String image;
  final Function() onTap;
  final bool selected;
  const CategoryCardMallika1(
      {required this.title,
      required this.image,
      required this.onTap,
      this.selected = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                image,
                width: 275,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12.5,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
