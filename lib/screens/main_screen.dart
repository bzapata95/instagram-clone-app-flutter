import 'package:flutter/material.dart';
import 'package:instagram_clone_app/widgets/widgets.dart';

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
        children: const [_HistoryScrollView(edgeInsets: edgeInsets), Divider()],
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
