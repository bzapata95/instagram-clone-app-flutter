import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  final _hasHistory = true;

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
          SingleChildScrollView(
              padding: const EdgeInsets.only(top: 5),
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                  margin: edgeInsets,
                  child: const AvatarCircle(
                    hasHistory: false,
                    avatarUrl: 'bzapata95',
                  ),
                ),
                Container(
                  margin: edgeInsets,
                  child: const AvatarCircle(
                    hasHistory: false,
                    avatarUrl: 'guilhermerodz',
                  ),
                ),
                Container(
                  margin: edgeInsets,
                  child: const AvatarCircle(
                    hasHistory: false,
                    avatarUrl: 'anasilveira9787',
                  ),
                ),
                Container(
                  margin: edgeInsets,
                  child: AvatarCircle(
                    hasHistory: _hasHistory,
                    avatarUrl: 'Sraik25',
                  ),
                ),
                Container(
                  margin: edgeInsets,
                  child: AvatarCircle(
                    hasHistory: _hasHistory,
                    avatarUrl: 'diego3g',
                  ),
                ),
                Container(
                  margin: edgeInsets,
                  child: AvatarCircle(
                    hasHistory: _hasHistory,
                    avatarUrl: 'zenorocha',
                  ),
                ),
                Container(
                  margin: edgeInsets,
                  child: AvatarCircle(
                    hasHistory: _hasHistory,
                    avatarUrl: 'wilderPariona',
                  ),
                ),
              ]))
        ],
      )),
    );
  }
}

class AvatarCircle extends StatelessWidget {
  final String avatarUrl;

  const AvatarCircle({
    Key? key,
    required bool hasHistory,
    required this.avatarUrl,
  })  : _hasHistory = hasHistory,
        super(key: key);

  final bool _hasHistory;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 0),
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: [0.2, 0.8],
                  colors: _hasHistory
                      ? [Colors.orange, Colors.redAccent]
                      : [Colors.grey, Colors.grey])),
        ),
        const SizedBox(
          height: 65,
          width: 65,
          child: CircleAvatar(backgroundColor: Colors.white),
        ),
        SizedBox(
          height: 59,
          width: 59,
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://github.com/$avatarUrl.png'),
          ),
        )
      ],
    );
  }
}
