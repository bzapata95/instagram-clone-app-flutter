import 'package:flutter/material.dart';
import 'package:instagram_clone_app/widgets/avatar_circle.dart';

class AvatarHistoryCircle extends StatelessWidget {
  final String avatarUrl;
  final bool hasHistory;

  const AvatarHistoryCircle(
      {Key? key, required this.avatarUrl, this.hasHistory = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AvatarCircle(
          radius: 75,
          avatarUrl: avatarUrl,
          hasHistory: hasHistory,
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
            width: 80,
            child: Center(
              child: Text(
                avatarUrl,
                style: const TextStyle(
                    overflow: TextOverflow.ellipsis, fontSize: 12),
              ),
            ))
      ],
    );
  }
}
