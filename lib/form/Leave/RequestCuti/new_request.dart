import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewRequest extends StatefulWidget {
  const NewRequest({Key? key}) : super(key: key);

  @override
  State<NewRequest> createState() => _NewRequestState();
}

//leaves
String leaveSelected = '';
final _leaves = TextEditingController();
final _dateStart = TextEditingController();
final _dateEnd = TextEditingController();

List<String> data = [
  "Advance DP",
  "Annual Leave",
  "DayPay",
  "Sick Leave",
];

class _NewRequestState extends State<NewRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Request"),
        backgroundColor: Colors.teal[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
              child: Container(
                width: double.infinity,
                height: 390.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0.0, 3.0),
                        blurRadius: 15.0,
                      )
                    ]),
                child: SingleChildScrollView(
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            TextFormField(
                              autovalidateMode: AutovalidateMode.always,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                              // enabled: _enableTextField,

                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                enabled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                // ignore: unnecessary_string_interpolations
                                labelText: "Emp.No",
                                prefixIcon: const Icon(Icons.alarm_on),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onChanged: (value) {
                                //
                              },
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 12.0),
                            ),
                            TextFormField(
                              autovalidateMode: AutovalidateMode.always,
                              enabled: true,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                              // enabled: _enableTextField,

                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                // ignore: unnecessary_string_interpolations
                                labelText: "Name",
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                prefixIcon: const Icon(Icons.alarm),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onTap: () async {
                                DateTime? pickEndDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(2100));

                                if (pickEndDate != null) {
                                  setState(() {
                                    _dateEnd.text = DateFormat('yyy-MM-dd')
                                        .format(pickEndDate);
                                  });
                                }
                              },
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 12.0),
                            ),
                            TextFormField(
                              autovalidateMode: AutovalidateMode.always,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                              // enabled: _enableTextField,

                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                enabled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 5.0, horizontal: 5.0),
                                // ignore: unnecessary_string_interpolations
                                labelText: "Department",
                                prefixIcon: const Icon(Icons.alarm_on),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onChanged: (value) {
                                //
                              },
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 12.0),
                            ),
                            TextFormField(
                              autovalidateMode: AutovalidateMode.always,
                              // controller: _longitudeController,
                              enabled: true,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                labelText: "Title",
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                prefixIcon: const Icon(Icons.map),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 12.0),
                            ),
                            TextFormField(
                              autovalidateMode: AutovalidateMode.always,
                              // controller: _longitudeController,
                              enabled: true,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                labelText: "Leave No",
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                prefixIcon: const Icon(Icons.map),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 12.0),
                            ),
                            TextFormField(
                              autovalidateMode: AutovalidateMode.always,
                              // controller: _longitudeController,
                              enabled: true,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                labelText: "Date",
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                prefixIcon: const Icon(Icons.map),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 12.0),
                            ),
                            TextFormField(
                              autovalidateMode: AutovalidateMode.always,
                              // controller: _longitudeController,
                              enabled: true,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                labelText: "Status",
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                prefixIcon: const Icon(Icons.map),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 12.0),
                            ),
                            TextFormField(
                              autovalidateMode: AutovalidateMode.always,
                              // controller: _longitudeController,
                              enabled: true,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                labelText: "Progress",
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                prefixIcon: const Icon(Icons.map),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
              child: Container(
                width: double.infinity,
                height: 390.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0.0, 3.0),
                        blurRadius: 15.0,
                      )
                    ]),
                child: SingleChildScrollView(
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            TextFormField(
                                autovalidateMode: AutovalidateMode.always,
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.done,
                                // autofocus: true,
                                // autocorrect: true,
                                // enabled: _enableTextField,
                                controller: _dateStart,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: InputDecoration(
                                  enabled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 10.0),
                                  // ignore: unnecessary_string_interpolations
                                  labelText: "Start Date",
                                  prefixIcon: const Icon(Icons.brightness_4),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                ),
                                onTap: () async {
                                  DateTime? pickStartDate =
                                      await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime(2100));

                                  if (pickStartDate != null) {
                                    setState(() {
                                      _dateStart.text = DateFormat('yyyy-MM-dd')
                                          .format(pickStartDate);
                                    });
                                  }
                                }),
                            const Padding(
                              padding: EdgeInsets.only(top: 12.0),
                            ),
                            TextFormField(
                              autovalidateMode: AutovalidateMode.always,
                              enabled: true,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                              // enabled: _enableTextField,

                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                // ignore: unnecessary_string_interpolations
                                labelText: "End Date",
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                prefixIcon: const Icon(Icons.alarm),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onTap: () async {
                                DateTime? pickEndDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(2100));

                                if (pickEndDate != null) {
                                  setState(() {
                                    _dateEnd.text = DateFormat('yyy-MM-dd')
                                        .format(pickEndDate);
                                  });
                                }
                              },
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 12.0),
                            ),
                            TextFormField(
                              autovalidateMode: AutovalidateMode.always,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                              // enabled: _enableTextField,

                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                enabled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                // ignore: unnecessary_string_interpolations
                                labelText: "Status",
                                prefixIcon: const Icon(Icons.alarm_on),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onChanged: (value) {
                                //
                              },
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 12.0),
                            ),
                            TextFormField(
                              autovalidateMode: AutovalidateMode.always,
                              // controller: _longitudeController,
                              enabled: true,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                labelText: "Qty",
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                prefixIcon: const Icon(Icons.map),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 12.0),
                            ),
                            TextFormField(
                              autovalidateMode: AutovalidateMode.always,
                              // controller: _longitudeController,
                              enabled: true,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                labelText: "Description/Diagnosis",
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                prefixIcon: const Icon(Icons.map),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 12.0),
                            ),
                            Card(
                              color: Colors.teal,
                              elevation: 5,
                              child: Container(
                                height: 50,
                                child: InkWell(
                                  splashColor: Colors.white,
                                  // enableFeedback: btnSave,
                                  onTap: () async {},
                                  child: const Center(
                                    child: Text(
                                      'Save',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
