

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
      debugShowCheckedModeBanner: false,
      title: 'Sumar y resetear Getx',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Sumar y resetear Getx')),
        ),
        body: Obx(() => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [

                Center(child: Text('${c.counter}',style: 
                const TextStyle(
                  fontSize:150.0,
                  ),
                  )),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    child: const Text('sumar'), onPressed: () => c.sumar()),
                ElevatedButton(child: const Text('reset'),
                onPressed: ()=>c.reset()),
              ],
            ),
            const SizedBox(height: 50),
             Text('${c.texto}', style:const TextStyle(
               fontSize: 20.0,
             )),
            
             ],
            )),
           
            
      ),
    );
  }
}
