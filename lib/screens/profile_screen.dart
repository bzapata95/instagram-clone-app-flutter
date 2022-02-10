import 'package:flutter/material.dart';
import 'package:instagram_clone_app/widgets/avatar_circle.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('bryanczapatap',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 15),
          child: _HeaderProfile(),
        ),
        SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('B R Y A N Z A P A T A',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    Text(
                        'Consectetur sint laborum aliquip nulla in eu nostrud quis eu fugiat do aute sit incididunt.')
                  ]),
            )),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: OutlinedButton(
              onPressed: () {},
              child: Text('Edit profile'),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: GridView.extent(
              shrinkWrap: true,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              maxCrossAxisExtent: 150,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Image.network('https://github.com/bzapata95.png'),
                Image.network('https://github.com/bzapata95.png'),
                Image.network('https://github.com/bzapata95.png'),
                Image.network('https://github.com/bzapata95.png'),
                Image.network('https://github.com/bzapata95.png'),
                Image.network('https://github.com/bzapata95.png'),
                Image.network('https://github.com/bzapata95.png'),
                Image.network('https://github.com/bzapata95.png'),
                Image.network('https://github.com/bzapata95.png'),
                Image.network('https://github.com/bzapata95.png'),
                Image.network('https://github.com/bzapata95.png'),
                Image.network('https://github.com/bzapata95.png'),
                Image.network('https://github.com/bzapata95.png'),
                Image.network('https://github.com/bzapata95.png'),
                Image.network('https://github.com/bzapata95.png'),
                Image.network('https://github.com/bzapata95.png'),
              ]),
        )
      ])),
    );
  }
}

class _HeaderProfile extends StatelessWidget {
  const _HeaderProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyleNumber =
        TextStyle(fontWeight: FontWeight.bold, fontSize: 17);
    const textStyle = TextStyle(fontWeight: FontWeight.w500, fontSize: 13);

    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const AvatarCircle(avatarUrl: 'bzapata95', radius: 100),
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Row(children: [
          Column(
            children: const [
              Text('50', style: textStyleNumber),
              SizedBox(
                height: 3,
              ),
              Text('Posts', style: textStyle)
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: const [
              Text('850', style: textStyleNumber),
              SizedBox(
                height: 3,
              ),
              Text('Followers', style: textStyle)
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: const [
              Text('745', style: textStyleNumber),
              SizedBox(
                height: 3,
              ),
              Text('Followings', style: textStyle)
            ],
          ),
        ]),
      )
    ]);
  }
}
