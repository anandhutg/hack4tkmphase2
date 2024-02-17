import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  int sum = 0;
  bool _buttonDisabled = false;
  bool _buttonDisabled1 = false;
  bool _buttonDisabled2 = false;
  bool _buttonDisabled3 = false;

  void _onButtonClicked() {
    setState(() {
      sum += 2;
      _buttonDisabled = true;
    });
  }

  void _onButtonClicked1() {
    setState(() {
      sum += 1;
      _buttonDisabled1 = true;
    });
  }

  void _onButtonClicked2() {
    setState(() {
      sum += 3;
      _buttonDisabled2 = true;
    });
  }

  void _onButtonClicked3() {
    setState(() {
      sum += 1;
      _buttonDisabled3 = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.account_circle),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100,height: 100,
                      child: ElevatedButton(
                        onPressed: _buttonDisabled ? null : _onButtonClicked,
                        child: Text('Paper(2)'),
                      ),
                    ),
                    SizedBox(
                      width: 100,height: 100,
                      child: ElevatedButton(
                        onPressed: _buttonDisabled1 ? null : _onButtonClicked1,
                        child: Text('Plastic (1)'),
                      ),
                    ),
                    ]),
              ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                    SizedBox(
                      width: 100,height: 100,
                      child: ElevatedButton(
                        onPressed: _buttonDisabled2 ? null : _onButtonClicked2,
                        child: Text('EWaste(3)'),
                      ),
                    ),
                    SizedBox(
                      width: 100,height: 100,
                      child: ElevatedButton(
                        onPressed: _buttonDisabled3 ? null : _onButtonClicked3,
                        child: Text('Food (1)'),
                      ),
                    ),
                ],
              ),
                  ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle book now button press
                },
                child: Text('Book Now'),
              ),
              const SizedBox(height: 20),
              Center(child: Text('Estimated credits = $sum')),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm_rounded),
            label: 'Abc',
          ),
        ],
      ),
    );
  }
}
