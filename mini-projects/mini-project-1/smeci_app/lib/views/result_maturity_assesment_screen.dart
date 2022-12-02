import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'widget/bottom_navbar.dart';

class ResultMaturityAssesment extends StatefulWidget {
  const ResultMaturityAssesment({super.key});

  @override
  State<ResultMaturityAssesment> createState() => _ResultMaturityAssesmentState();
}

class _ResultMaturityAssesmentState extends State<ResultMaturityAssesment> {
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
                    Navigator.pushNamed(context, '/');
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
                  child: Align(
                    alignment: Alignment.centerLeft,
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
                    child: Text(
                      'Nilai Maturity Assesment',
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'Nilai Anda Saat Ini',
                          style: TextStyle(
                            fontSize: 20, 
                            fontWeight: FontWeight.bold
                          ),
                        ),

                        Stack(
                          children: [
                            Center(
                              child: SizedBox(
                                height: MediaQuery.of(context).size.width / 2,
                                width: MediaQuery.of(context).size.width / 2,
                                child: const CircularProgressIndicator(
                                  strokeWidth: 16,
                                  value: 0.7,
                                  backgroundColor: Color(0xFFE4E9EE),
                                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF0B343D)),
                                ),
                              ),
                            ),
                            Center(
                              heightFactor: 2.3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    '70',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0B343D),
                                    ),
                                  ),
                                  Text(
                                    'Poin',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0B343D),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: const Color(0xFFB5E0E9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              'Sangat Baik!',
                              style: TextStyle(
                                color: Color(0xFF0B343D),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Keterangan Nilai',
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '111 - 140',
                            style: TextStyle(
                              fontSize: 16, 
                              fontWeight: FontWeight.normal
                            ),
                          ),
                          Text(
                            '81 - 110',
                            style: TextStyle(
                              fontSize: 16, 
                              fontWeight: FontWeight.normal
                            ),
                          ),
                          Text(
                            '60 - 80',
                            style: TextStyle(
                              fontSize: 16, 
                              fontWeight: FontWeight.normal
                            ),
                          ),
                          Text(
                            '0 - 59',
                            style: TextStyle(
                              fontSize: 16, 
                              fontWeight: FontWeight.normal
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Sangat Baik',
                            style: TextStyle(
                              fontSize: 16, 
                              fontWeight: FontWeight.normal
                            ),
                          ),
                          Text(
                            'Baik',
                            style: TextStyle(
                              fontSize: 16, 
                              fontWeight: FontWeight.normal
                            ),
                          ),
                          Text(
                            'Cukup',
                            style: TextStyle(
                              fontSize: 16, 
                              fontWeight: FontWeight.normal
                            ),
                          ),
                          Text(
                            'Kurang',
                            style: TextStyle(
                              fontSize: 16, 
                              fontWeight: FontWeight.normal
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 12),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/result_maturity');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        primary: Color(0xFF163760),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child:  Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/');
                            },
                            child: Text(
                              'Konfirmasi',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 20),
                ]
              )
            )
          ),
        ),
      ],
    );
  }
}