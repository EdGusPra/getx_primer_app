

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_template/controllers/get_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final GetController c = Get.put(GetController());

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Obx(() => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [

                Center(child: Text('${c.counter}',style: 
                const TextStyle(
                  fontSize:50.0,
                  ),
                  )),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    child: const Text('sumar'), onPressed: () => c.sumar()),
                ElevatedButton(child: const Text('reset'),
                onPressed: ()=>c.reset()),
              ],
            ),
            
             ],
            )),
           
            
      ),
    );
  }
}
