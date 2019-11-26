import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Parkir extends StatefulWidget {
  @override
  _ParkirState createState() => _ParkirState();
}

class _ParkirState extends State<Parkir> {
  String dropdown1Value = 'A1';
  String _date = "Hari";
  String _timeMasuk = "11 Masuk";
  String _timeKeluar = "22 Keluar";

  // static String masuk = _timeMasuk.substring(0,2);
  // static String keluar =  _timeKeluar.substring(0,2);

  // static int wMasuk = int.parse(masuk);
  // static  int wKeluar = int.parse(keluar);
  // int hasil = wKeluar - wMasuk;

  @override
  void initState() {
    super.initState();
  }
  int biaya() {
    int wMasuk = int.parse(_timeMasuk.substring(0,2));
    int wKeluar = int.parse(_timeKeluar.substring(0,2));
    return (wKeluar - wMasuk) * 2000;
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ28Z6By6glfahzwosbJD6dw54K-AQeDgflkLp4HK6iAmfhF2Wo'),
              width: 430.5,
            ),
            SizedBox(
              height: 380,
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Pilih Lokasi Parkir :',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      leading: Icon(
                        Icons.local_parking,
                        color: Colors.red,
                      ),
                    ),
                    ListTile(
                      title: const Text('Slot yang tersedia :'),
                      trailing: DropdownButton<String>(
                        value: dropdown1Value,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdown1Value = newValue;
                          });
                        },
                        items: <String>['A1', 'A2', 'A3', 'A4', 'A5', 'A6']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Waktu Parkir :',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      leading: Icon(
                        Icons.timer,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      child: Row(
                        // mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.0)),
                            elevation: 2.0,
                            onPressed: () {
                              DatePicker.showDatePicker(context,
                                  theme: DatePickerTheme(
                                    containerHeight: 210.0,
                                  ),
                                  showTitleActions: true,
                                  minTime: DateTime(2000, 1, 1),
                                  maxTime: DateTime(2022, 12, 31),
                                  onConfirm: (date) {
                                print('confirm $date');
                                _date =
                                    '${date.day} - ${date.month} - ${date.year}';
                                setState(() {});
                              },
                                  currentTime: DateTime.now(),
                                  locale: LocaleType.ina);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 40.0,
                              width: 110.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.date_range,
                                              size: 14.0,
                                              color: Colors.red,
                                            ),
                                            Text(
                                              " $_date",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.0),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            color: Colors.white,
                          ),
                          // SizedBox(
                          //   height: 20.0,
                          // ),
                          Column(
                            children: <Widget>[
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.0)),
                                elevation: 2.0,
                                onPressed: () {
                                  DatePicker.showTimePicker(context,
                                      theme: DatePickerTheme(
                                        containerHeight: 210.0,
                                      ),
                                      showTitleActions: true,
                                      onConfirm: (time) {
                                    print('confirm $time');
                                    _timeMasuk =
                                        '${time.hour} : ${time.minute} : ${time.second}';
                                    setState(() {});
                                  },
                                      currentTime: DateTime.now(),
                                      locale: LocaleType.ina);
                                  setState(() {});
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 40.0,
                                  width: 110.0,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.timer,
                                                  size: 14.0,
                                                  color: Colors.red,
                                                ),
                                                Text(
                                                  " $_timeMasuk",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.0),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                color: Colors.white,
                              ),
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.0)),
                                elevation: 2.0,
                                onPressed: () {
                                  DatePicker.showTimePicker(context,
                                      theme: DatePickerTheme(
                                        containerHeight: 210.0,
                                      ),
                                      showTitleActions: true,
                                      onConfirm: (time) {
                                    print('confirm $time');
                                    _timeKeluar =
                                        '${time.hour} : ${time.minute} : ${time.second}';
                                    setState(() {});
                                  },
                                      currentTime: DateTime.now(),
                                      locale: LocaleType.ina);
                                  setState(() {});
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 40.0,
                                  width: 110.0,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.timer_off,
                                                  size: 14.0,
                                                  color: Colors.red,
                                                ),
                                                Text(
                                                  " $_timeKeluar",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.0),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                color: Colors.white,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        'Total Biaya :',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      trailing: Text("RP. " + biaya().toString()),
                      leading: Icon(
                        Icons.shopping_cart,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
