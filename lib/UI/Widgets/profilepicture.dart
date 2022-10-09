import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipOval(
            child: Material(
              color: Colors.transparent,
              child: Ink.image(
                image: NetworkImage('https://thispersondoesnotexist.com/image'),
                fit: BoxFit.cover,
                width: 128,
                height: 128,
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 4,
              child: ClipOval(
                child: Container(
                  padding: EdgeInsets.all(3),
                  color: context.theme.secondaryHeaderColor,
                  child: InkWell(
                    onTap: () {},
                    child: ClipOval(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        color: context.theme.secondaryHeaderColor,
                        child: Icon(
                          Icons.edit,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
