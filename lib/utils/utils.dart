import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var male = 'Male';
  var female = 'Female';

  String sscOne = '33%-39%';
  var sscTwo = '40%-49%';
  var sscThree = '50%-59%';
  var sscFour = '60%-69%';
  var sscFive = '70%-79%';
  var sscSix = '80% or Above';


  enum SscMarksPercentage {SSCOne, SSCTwo,SSCThree,SSCFour,SSCFive,SSCSix}


  BoxDecoration decoration = const BoxDecoration(
     borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
                  color: Colors.amberAccent,
  );