import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_puzzle_1/controller.dart';

void main() {
  runApp(MaterialApp(
    home: First(),
  ));
}

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  controller co = new controller();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // co.l.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: double.infinity,
            alignment: Alignment.center,
            child: Obx(() => Text("${co.msg.value}", style: TextStyle(fontSize: 30),),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: () => co.get(0), child: fun(0)),
              InkWell(onTap: () => co.get(1), child: fun(1)),
              InkWell(onTap: () => co.get(2),child: fun(2)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: () => co.get(3),child: fun(3)),
              InkWell(onTap: () => co.get(4),child: fun(4)),
              InkWell(onTap: () => co.get(5),child: fun(5)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: () => co.get(6),child: fun(6)),
              InkWell(onTap: () => co.get(7),child: fun(7)),
              InkWell(onTap: () => co.get(8),child: fun(8)),
            ],
          )
        ],
      ),
    );
  }

  Widget fun(int i) => Container(
      height: 100,
      width: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Obx(
        () => Text(
          "${co.l[i]}",
          style: TextStyle(fontSize: 25),
        ),
      ));
}
