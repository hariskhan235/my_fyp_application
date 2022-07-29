import 'package:flutter/material.dart';

var male = 'Male';
var female = 'Female';

String sscOne = '33%-39%';
var sscTwo = '40%-49%';
var sscThree = '50%-59%';
var sscFour = '60%-69%';
var sscFive = '70%-79%';
var sscSix = '80% or Above';

BoxDecoration decoration() {
  return const BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
    color: Color(0xFF4267B2),
  );
}

TextStyle whiteTextStyle =
    const TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
