import 'package:bloggie/UI/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationW extends StatelessWidget {
  const NotificationW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.0),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 16.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: context.theme.primaryColor,
              boxShadow: [
                BoxShadow(
                  color: context.theme.shadowColor.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(3, 3),
                )
              ]),
          width: double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 100,
                height: 100,
                alignment: AlignmentDirectional(0, 0),
                child: CircleAvatar(
                  minRadius: 40,
                  maxRadius: 50,
                  child: Icon(
                    Icons.person_add_alt_1_rounded,
                    size: 44,
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User Liked Your Article',
                      style: Themes.headingStyle.copyWith(fontSize: 22),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Wed at 00:23',
                            style: Themes.bodyStyle
                                .copyWith(color: context.theme.shadowColor),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    ));
  }
}
