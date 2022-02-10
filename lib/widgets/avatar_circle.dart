import 'package:flutter/material.dart';

class AvatarCircle extends StatelessWidget {
  final String avatarUrl;
  final double radius;
  final bool hasHistory;

  const AvatarCircle({
    Key? key,
    required this.avatarUrl,
    required this.radius,
    this.hasHistory = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 0),
      children: [
        Container(
          height: radius,
          width: radius,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: const [0.2, 0.8],
                  colors: hasHistory
                      ? [Colors.orange, Colors.redAccent]
                      : [Colors.transparent, Colors.transparent])),
        ),
        SizedBox(
          height: hasHistory ? radius - 5 : radius - 3,
          width: hasHistory ? radius - 5 : radius - 3,
          child: const CircleAvatar(backgroundColor: Colors.white),
        ),
        SizedBox(
          height: hasHistory ? radius - 10 : radius - 5,
          width: hasHistory ? radius - 10 : radius - 5,
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://github.com/$avatarUrl.png'),
          ),
        )
      ],
    );
  }
}
