// import 'package:flutter/material.dart';

// // ignore: non_constant_identifier_names
// Scaffold(
//                     appBar: AppBar(title: const Text('Demo')),
//                     body: ListView(
//                       children: values.keys.map((String key) {
//                         return CheckboxListTile(
//                           title: Text(key),
//                           value: values[key],
//                           onChanged: (value){
//                             assert(value != null);
//                             setState(
//                               () {
//                                 values[key] = value!;
//                                 print(value);
//                               },
//                             );
//                           },
//                         );
//                       }).toList(),
//                     ),
//                   ),