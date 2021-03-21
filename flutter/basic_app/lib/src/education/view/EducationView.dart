import 'package:basic_app/util/layout/CustomColor.dart';
import 'package:flutter/material.dart';

class EducationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Education Details',
          style: TextStyle(
            color: CustomColor.black,
          ),
        ),
        elevation: 0,
        backgroundColor: CustomColor.transparent,
        iconTheme: IconThemeData(
          color: CustomColor.black,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              width: double.maxFinite,
              color: CustomColor.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User in Information Tech',
                      style: TextStyle(
                        color: CustomColor.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'University Name',
                      style: TextStyle(
                        color: CustomColor.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '2021',
                      style: TextStyle(
                        color: CustomColor.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              width: double.maxFinite,
              color: CustomColor.red,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User in Information Tech 2',
                      style: TextStyle(
                        color: CustomColor.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'University Name 2',
                      style: TextStyle(
                        color: CustomColor.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '2020',
                      style: TextStyle(
                        color: CustomColor.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              width: double.maxFinite,
              color: CustomColor.orange,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User in Information Tech 3',
                      style: TextStyle(
                        color: CustomColor.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'University Name 3',
                      style: TextStyle(
                        color: CustomColor.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '2019',
                      style: TextStyle(
                        color: CustomColor.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
