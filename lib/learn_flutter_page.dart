import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  bool isSwitch = false;
  bool? isCheckbox = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('learn flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_circle_left),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('actions');
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image.asset('images/einstein.jpg',),
            Container(
              height: 500.00,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('images/einstein.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'this is a text widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.green : Colors.blue,
              ),
              onPressed: () {
                debugPrint('ElevatedButton');
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('TextButton');
              },
              child: const Text('TextButton'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('this is row');
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('Row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(
                  () {
                    isSwitch = newBool;
                  },
                );
              },
            ),
            Checkbox(
              value: isCheckbox,
              onChanged: (bool? newBool) {
                setState(
                  () {
                    isCheckbox = newBool;
                  },
                );
              },
            ),
            Image.network('https://casaguides.nrao.edu/images/c/c7/Einstein.jpg')
          ],
        ),
      ),
    );
  }
}
