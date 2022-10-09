import 'package:bloggie/Controllers/profile_controller.dart';
import 'package:bloggie/UI/Size_config.dart';
import 'package:bloggie/UI/Themes.dart';
import 'package:bloggie/UI/Widgets/profilepicture.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends GetView<ProfileController> {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.theme.backgroundColor,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: ProfilePic(),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text(
              controller.name,
              style: Themes.headingStyle.copyWith(fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
            child: Text(
              controller.email,
              style: Themes.greyTitle,
            ),
          ),
          Container(
            height: 100,
            padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '15',
                      style: Themes.bodyStyle,
                    ),
                    Text(
                      'Posts',
                      style: Themes.bodyStyle.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                VerticalDivider(
                  width: 20,
                  color: Colors.black,
                ),
                Column(
                  children: [
                    Text(
                      '100',
                      style: Themes.bodyStyle,
                    ),
                    Text(
                      'Followers',
                      style: Themes.bodyStyle.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                VerticalDivider(
                  width: 20,
                  color: Colors.black,
                ),
                Column(
                  children: [
                    Text(
                      '100',
                      style: Themes.bodyStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Following',
                      style: Themes.bodyStyle.copyWith(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(16, 32, 0, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'About',
                      style: Themes.titleStyle,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          'Eiusmod cupidatat do aliqua sit est cillum sint velit velit esse. Qui cillum eiusmod aute nisi dolore duis quis nostrud incididunt in occaecat. Officia in sint enim commodo. Sunt nisi cupidatat labore ex ipsum minim ex sit est dolore laborum commodo do veniam.',
                          style: Themes.bodyStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
