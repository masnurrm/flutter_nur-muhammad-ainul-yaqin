import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'widget/bottom_navbar.dart';

class MaturityAssesment extends StatefulWidget {
  const MaturityAssesment({super.key});

  @override
  State<MaturityAssesment> createState() => _MaturityAssesmentState();
}

class _MaturityAssesmentState extends State<MaturityAssesment> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget> [
        Container(
          color: Colors.white,
        ),
        Image.asset(
          'assets/background.png',
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Align(
                alignment: Alignment.bottomLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
              ),
              title: const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 30),
                  child: Text(
                    'Maturity Self Assesment',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              centerTitle: true,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget> [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text.rich(
                      TextSpan(
                        text: 'Bagian ',
                        style: TextStyle(
                          fontSize: 20
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: '1/4',
                            style: TextStyle(
                              fontSize: 20, 
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ]
                      )
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Seberapa sering permasalahan muncul di bisnis Anda?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 16),
                              QuestionOption(),
                              SizedBox(height: 10),
                              QuestionOption(),
                              SizedBox(height: 10),
                              QuestionOption(),
                              SizedBox(height: 10),
                              QuestionOption(),
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Seberapa sering permasalahan muncul di bisnis Anda?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 16),
                              QuestionOption(),
                              SizedBox(height: 10),
                              QuestionOption(),
                              SizedBox(height: 10),
                              QuestionOption(),
                              SizedBox(height: 10),
                              QuestionOption(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/result_maturity');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        primary: Color(0xFF163760),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child:  Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                ]
              )
            )
          ),
        ),
      ]
    );
  }
}

class QuestionOption extends StatelessWidget {
  const QuestionOption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFFB5E0E9),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFB5E0E9).withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 0,
              offset: Offset.zero,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.check_box_outline_blank_rounded,
                color: Colors.black,
                size: 24,
              ),
            ),
            SizedBox(width: 10),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Sangat sering',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}