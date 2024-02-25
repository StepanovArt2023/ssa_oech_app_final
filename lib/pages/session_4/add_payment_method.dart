import 'package:flutter/material.dart';
import 'package:ssa_oech_app_final/widgets/btn_widget.dart';

class AddMethod extends StatefulWidget {
  static const routeName = '/add_payment_method';
  const AddMethod({super.key});

  @override
  State<AddMethod> createState() => _AddMethodState();
}

class _AddMethodState extends State<AddMethod> {
  String _selectedRadio = 'Option 1';
  bool _isSubOptionsVisible = false;
  List<String> _subOptions = [];
  void _toggleSubOptions() {
    setState(() {
      _isSubOptionsVisible = !_isSubOptionsVisible;
      if (_isSubOptionsVisible) {
        _subOptions = [
          '**** **** 3323',
          '**** **** 1547'
        ]; 
      } else {
        _subOptions = []; 
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 54),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  // Тень для нижней стороны
                  BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 1.0,
                    blurRadius: 5.0,
                    offset: const Offset(
                        0.0, 4.0), 
                  ),
                ],
              ),
              child: AppBar(
                  title: const Text(
                    'Add payment method',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(167, 167, 167, 1),
                    ),
                  ),
                  centerTitle: true),
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 20, left: 5.5)),
                Container(
                  width: 375.0,
                  child: RadioListTile<String>(
                    value: 'Option 1',
                    subtitle: Text(
                      'Complete the payment using your e wallet',
                      style: TextStyle(color: Color.fromRGBO(167, 167, 167, 1)),
                    ),
                    title: Text(
                      'Play with wallet',
                      style: TextStyle(color: Colors.black),
                    ),
                    groupValue: _selectedRadio,
                    activeColor: Color.fromRGBO(5, 69, 250, 1),
                    onChanged: (String? value) {
                      setState(() {
                        _selectedRadio = value!;
                      });
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(0, 0.25), 
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 5.5,
                    ),
                    Container(
                      width: 375,
                      padding: EdgeInsets.only(top: 8.5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset:
                                Offset(0, 0.25), 
                          ),
                        ],
                      ),
                      child: RadioListTile<String>(
                        title: Text(
                          'Credit/ debet card',
                          style: TextStyle(color: Colors.black),
                        ),
                        subtitle: Text(
                          'Complete the payment with using card',
                          style: TextStyle(
                              color: Color.fromRGBO(167, 167, 167, 1)),
                        ),
                        value: 'Option 2',
                        activeColor: Color.fromRGBO(5, 69, 250, 1),
                        groupValue: _selectedRadio,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedRadio = value!;

                            _toggleSubOptions();
                          });
                        },
                      ),
                    ),
                    if (_subOptions.isNotEmpty)
                      for (var subOption in _subOptions)
                        RadioListTile<String>(
                          title: Text('**** **** 3323'),
                          value: subOption,
                          groupValue: _selectedRadio,
                          activeColor: Color.fromRGBO(5, 69, 250, 1),
                          onChanged: (String? value) {
                            setState(() {
                              _selectedRadio = value!;
                            });
                          },
                        ),
                    Padding(
                      padding: EdgeInsets.only(top: 325),
                      child: Container(
                        width: 362,
                        height: 55,
                        child: ButtonWidget(
                          buttonName: 'Procesed to pay',
                          buttonColor: const Color.fromRGBO(5, 69, 250, 1),
                          onTap: () {
                            build(context);
                            Navigator.pushNamed(context, '/traking_page');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
