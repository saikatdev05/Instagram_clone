import 'package:flutter/material.dart';
class PostWidget extends StatefulWidget {
  final snapshot;
  PostWidget(this.snapshot, {super.key});


  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 54,
          color: Colors.white,
          child: Center(
            child: ListTile(
              leading: ClipOval(
                child: SizedBox(
                  width: 35,
                  height: 35,
                  child: Image.asset('images/person.png'),
                ),
              ),
              title: Text(
                'Username',
                style: TextStyle(fontSize: 13),
              ),
              subtitle: Text(
                'Location',
                style: TextStyle(fontSize: 11),
              ),
              trailing: const Icon(Icons.more_horiz),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 375,
          height: 375,
          child: Image.asset(
            'images/post.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 375,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                    height: 40,
                  ),
                  Icon(
                    Icons.favorite_outline_rounded,
                    size: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'images/comment.webp',
                    height: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'images/send.jpg',
                    height: 30,
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Image.asset(
                      'images/save.png',
                      height: 30,
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                EdgeInsets.only(left: 19, top: 13, bottom: 10),
                child: Text(
                  "0",
                  style: TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      'Username' + '',
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'caption',
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15,top: 10,bottom: 8),
                child: Text(
                  'dataformat',
                  style: TextStyle(fontSize: 13),
                ),
              )
            ],
          ),
        )
      ],
    );;
  }
}
