import 'package:flutter/material.dart';
import 'package:instagram_clone_app/widgets/widgets.dart';

class LikesScreen extends StatelessWidget {
  const LikesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Likes'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(children: [
              Container(
                child: _CardLike(),
                margin: const EdgeInsets.only(bottom: 15),
              ),
              Container(
                child: _CardLike(),
                margin: const EdgeInsets.only(bottom: 15),
              ),
              Container(
                child: _CardLike(),
                margin: const EdgeInsets.only(bottom: 15),
              ),
              Container(
                child: _CardLike(
                  isFollowing: true,
                ),
                margin: const EdgeInsets.only(bottom: 15),
              ),
              Container(
                child: _CardLike(
                  isFollowing: true,
                ),
                margin: const EdgeInsets.only(bottom: 15),
              ),
              Container(
                child: _CardLike(),
                margin: const EdgeInsets.only(bottom: 15),
              ),
              Container(
                child: _CardLike(),
                margin: const EdgeInsets.only(bottom: 15),
              ),
            ]),
          )
        ]),
      ),
    );
  }
}

class _CardLike extends StatelessWidget {
  final bool isFollowing;

  const _CardLike({Key? key, this.isFollowing = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(children: [
        AvatarCircle(
          avatarUrl: 'bzapata95',
          radius: 65,
        ),
        SizedBox(
          width: 10,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'camila__millan06',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Cmila06_09💋',
            style: TextStyle(color: Colors.grey.shade600),
          )
        ])
      ]),
      isFollowing
          ? OutlinedButton(
              onPressed: () {},
              child: Text('Following', style: TextStyle(color: Colors.grey)),
              style: ElevatedButton.styleFrom(
                  elevation: 0, minimumSize: const Size(100, 30)),
            )
          : ElevatedButton(
              onPressed: () {},
              child: Text('Follow'),
              style: ElevatedButton.styleFrom(
                  elevation: 0, minimumSize: const Size(100, 30)),
            )
    ]);
  }
}
