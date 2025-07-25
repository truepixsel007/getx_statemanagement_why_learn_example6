
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int x = 20;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      x++;
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // set state with full widget rebuild hota hai , this is costly
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Totorial'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(x.toString(),
              style: TextStyle(fontSize: 60),
            ),
          ),
          Expanded(
              child:ListView.builder(
                  itemCount: 10000,
                  itemBuilder: (context, index){
                    return ListTile(
                      title: Text(index.toString()),
                    ) ;
                  }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          x++;
          // setState(() {
          //
          // });
        },
      ),
    );
  }
}
