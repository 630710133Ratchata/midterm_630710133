// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710133';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView() {
    // TODO: build UI
    return Expanded(
        flex: 15,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Question 1 of 30', style: TextStyle(fontSize: 20)),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 73, 175, 169),
                      border: Border.all(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'What is the capital France?',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  answerBox('A', 'Berlin'),
                  answerBox('B', 'London'),
                  answerBox('C', 'Madrid'),
                  answerBox('D', 'Paris'),
                ],
              ))),
        ));
  }

  Container answerBox(Text1, Text2) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: Colors.grey, width: 2.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Text1,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  )),
            ),
            Text(
              Text2,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ));
  }

  _buildButtonPanel() {
    // TODO: build UI
    return Center(
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 139, 140),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border:
                      Border.all(color: Color.fromARGB(255, 112, 63, 63), width: 3.0),
                ),
                child: Center(
                  child: Text('<',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 73, 175, 169),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border:
                  Border.all(color: Color.fromARGB(255, 33, 81, 78), width: 3.0),
                ),
                child: Center(
                  child: Text('>',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
