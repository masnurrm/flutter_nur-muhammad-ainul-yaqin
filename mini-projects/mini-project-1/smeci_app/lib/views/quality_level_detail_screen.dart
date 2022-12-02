import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../model/data.dart';

class QualityLevelDetail extends StatefulWidget {
  const QualityLevelDetail({super.key});

  @override
  State<QualityLevelDetail> createState() => _QualityLevelDetailState();
}

class _QualityLevelDetailState extends State<QualityLevelDetail> {
  final dokumen = Dokumen();

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
              title: const Padding(
                padding: EdgeInsets.only(top: 30, right: 50),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'QSA Level 4',
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
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget> [
                  const SizedBox(height: 8),
                  DataTable(
                    columnSpacing: 7,
                    columns: const [
                      DataColumn(label: Text('Dokumen')),
                      DataColumn(label: Text('Unggah')),
                      DataColumn(label: Text('Waktu')),
                      DataColumn(label: Text('Verifikasi'))
                    ],
                    rows: dokumen.data.map(
                        (element) => DataRow(
                            cells: <DataCell>[
                              DataCell(Text(element["name"])), //Extracting from Map element the value
                              DataCell(ElevatedButton(
                                onPressed: () {
                                  _showSimpleModalDialog(context);
                                },
                                child: const Text(
                                  'Klik Disini', 
                                  style: TextStyle(
                                    fontSize: 10
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(90, 30),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              )),
                              DataCell(Text(element["waktu unggah"])),
                              DataCell(Row(
                                children: [
                                  (element["verifikasi"]["Terkirim"]? const Icon(Icons.check_box) : const Icon(Icons.check_box_outline_blank)),
                                  (element["verifikasi"]["Terverifikasi"]? const Icon(Icons.check_box) : const Icon(Icons.check_box_outline_blank))
                                ],
                              ))
                            ]
                        )
                    ).toList()
                  )
                ]
              )
            )
          )
        )
      ]
    );
  }

  _showSimpleModalDialog(context){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(20.0)),
          child: Container(
            constraints: const BoxConstraints(maxHeight: 600),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Unggah Dokumen',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Unggahlah foto/scan dokumen [Nama Dokumen] seperti contoh berikut.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    color: Colors.red,
                    height: 300,
                    margin: const EdgeInsets.all(10),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Foto atau scan dokumen'
                  ),
                  // Input file with border
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.attach_file),
                        SizedBox(width: 8),
                        Text(
                          'Pilih File',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                          primary: const Color(0xFFC4C4C4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child:  Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'Batal',
                              style: TextStyle(
                                color: Color(0xFFF6F6F6),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                          primary: const Color(0xFF163760),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child:  Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              'Kirim',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        );
      });
  }
}