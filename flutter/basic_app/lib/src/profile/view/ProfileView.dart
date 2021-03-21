import 'package:basic_app/src/education/view/EducationView.dart';
import 'package:basic_app/src/tutorial/Tutorial21Days.dart';
import 'package:basic_app/util/GeneralMethod.dart';
import 'package:basic_app/util/layout/CustomColor.dart';
import 'package:basic_app/util/layout/CustomIcon.dart';
import 'package:basic_app/util/layout/CustomText.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Flutter Learning',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: CustomColor.blue,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              radius: 100,
              backgroundImage:
                  AssetImage('assets/images/users_profile/image_profile_1.jpg'),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Flutter Learning Project',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.mail,
                        size: CustomIcon.iconLblsize,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Rizkika.Palindungan1@gmail.com',
                        style: TextStyle(
                          fontSize: CustomText.textLblSize,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: CustomIcon.iconLblsize,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Indonesia',
                        style: TextStyle(
                          fontSize: CustomText.textLblSize,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.home,
                        size: CustomIcon.iconLblsize,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Jawa Timur',
                        style: TextStyle(
                          fontSize: CustomText.textLblSize,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.supervised_user_circle_outlined,
                        size: CustomIcon.iconLblsize,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Programmer',
                        style: TextStyle(
                          fontSize: CustomText.textLblSize,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                onChangeView(context, EducationView());
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'Education Detail',
                  style: TextStyle(
                    fontSize: 20,
                    color: CustomText.textButtonColor,
                  ),
                ),
              ),
              color: CustomColor.blue,
            ),
            MaterialButton(
              onPressed: () {
                onChangeView(context, Tutorial21Days());
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'Tutorial 21 days',
                  style: TextStyle(
                    fontSize: 20,
                    color: CustomText.textButtonColor,
                  ),
                ),
              ),
              color: CustomColor.blue,
            ),
          ],
        ),
      ),
    );
  }
}
