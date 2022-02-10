import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:instagram_clone_app/widgets/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const edgeInsets = EdgeInsets.symmetric(horizontal: 6, vertical: 5);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Image(
          image: AssetImage('assets/logo.png'),
          height: 45,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chat_bubble_outline,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const _HistoryScrollView(edgeInsets: edgeInsets),
          const Divider(),
          SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 3, bottom: 2),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: const [
                            AvatarCircle(avatarUrl: 'bzapata95', radius: 42),
                            SizedBox(width: 10),
                            Text('bzapata95',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13)),
                          ]),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_horiz,
                                color: Colors.grey,
                              ))
                        ]),
                  ),
                  const Image(
                      image: NetworkImage(
                          'https://instagram.flim16-1.fna.fbcdn.net/v/t51.2885-15/122168340_3381370471900119_4314554744700889384_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.flim16-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=pf8mCjT8eRwAX_3Xf4V&tn=dEMk-vqEy0pht01t&edm=ALQROFkBAAAA&ccb=7-4&ig_cache_key=MjQyNzE3NDk5MTUxNzQ4NDA1MA%3D%3D.2-ccb7-4&oh=00_AT_xchNwQAX55MUb-ZlzOCginiXA1zb5Covi-BVeMlZsSQ&oe=620C2D9B&_nc_sid=30a2ef')),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                      right: 15,
                      top: 8,
                      bottom: 0,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            IconButton(
                                padding: EdgeInsets.zero,
                                iconSize: 30,
                                // splashColor: Colors.transparent,
                                // highlightColor: Colors.transparent,
                                constraints: BoxConstraints(),
                                onPressed: () {},
                                icon: Icon(Icons.favorite_border)),
                            SizedBox(width: 10),
                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, 'comments_screen');
                                },
                                icon: Icon(Icons.mode_comment_outlined,
                                    size: 27)),
                          ]),
                          IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              onPressed: () {},
                              icon: Icon(Icons.bookmark_border_outlined,
                                  size: 32)),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 0, bottom: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'likes_screen');
                            },
                            child: const Text('3,843 likes',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                          RichText(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              text: const TextSpan(children: [
                                TextSpan(
                                    text: 'bryanczapata',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                                TextSpan(
                                    text:
                                        ' Exercitation sit pariatur nisi sunt mollit veniam pariatur nisi. Nostrud ex mollit laborum elit consequat',
                                    style: TextStyle(color: Colors.black)),
                              ])),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'comments_screen');
                            },
                            child: Text('View all 213 comments',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade600)),
                          ),
                          Text('2 days ago',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade600))
                        ]),
                  ),
                ],
              )),
        ],
      )),
    );
  }
}

class _HistoryScrollView extends StatelessWidget {
  const _HistoryScrollView({
    Key? key,
    required this.edgeInsets,
  }) : super(key: key);

  final EdgeInsets edgeInsets;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.only(top: 5),
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          Container(
            margin: edgeInsets,
            child: const AvatarHistoryCircle(
              hasHistory: false,
              avatarUrl: 'bzapata95',
            ),
          ),
          Container(
            margin: edgeInsets,
            child: const AvatarHistoryCircle(
              hasHistory: false,
              avatarUrl: 'guilhermerodz',
            ),
          ),
          Container(
            margin: edgeInsets,
            child: const AvatarHistoryCircle(
              hasHistory: true,
              avatarUrl: 'anasilveira9787',
            ),
          ),
          Container(
            margin: edgeInsets,
            child: const AvatarHistoryCircle(
              hasHistory: true,
              avatarUrl: 'Sraik25',
            ),
          ),
          Container(
            margin: edgeInsets,
            child: const AvatarHistoryCircle(
              hasHistory: true,
              avatarUrl: 'diego3g',
            ),
          ),
          Container(
            margin: edgeInsets,
            child: const AvatarHistoryCircle(
              hasHistory: true,
              avatarUrl: 'zenorocha',
            ),
          ),
          Container(
            margin: edgeInsets,
            child: const AvatarHistoryCircle(
              hasHistory: true,
              avatarUrl: 'wilderPariona',
            ),
          ),
        ]));
  }
}
