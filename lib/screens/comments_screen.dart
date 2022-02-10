import 'package:flutter/material.dart';
import 'package:instagram_clone_app/widgets/widgets.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comments'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 30,
                itemBuilder: (_, i) {
                  return Column(
                    children: [
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const AvatarCircle(
                                      avatarUrl: 'bzapata95',
                                      radius: 40,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                                // overflow: TextOverflow.ellipsis,
                                                text: const TextSpan(children: [
                                              TextSpan(
                                                  text: 'bryanczapata',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              TextSpan(
                                                  text:
                                                      ' Exercitation sit pariatur nisi sunt mollit veniam pariatur nisi. Nostrud ex mollit laborum elit consequat',
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                            ])),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text('hora',
                                                style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    fontSize: 12))
                                          ]),
                                    )
                                  ],
                                ),
                              ),
                              if (i != 0)
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_border,
                                      size: 18,
                                      color: Colors.grey.shade600,
                                    )),
                            ],
                          )),
                      if (i == 0) const Divider()
                    ],
                  );
                }),
          ),
          const Divider(),
          SafeArea(
              maintainBottomViewPadding: true,
              top: false,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(children: const [
                    AvatarCircle(
                      avatarUrl: 'bzapata95',
                      radius: 55,
                    ),
                    SizedBox(width: 10),
                    Text('CUADRO DE COMENTARIOS')
                  ])))
        ],
      ),
    );
  }
}
