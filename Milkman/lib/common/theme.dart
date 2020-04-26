// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
/*
Text(
'$helloWorld',
style: GoogleFonts.oswald(textStyle: display1, fontStyle: FontStyle.italic)
*/


final appTheme = ThemeData(
  primarySwatch: Colors.yellow,
  textTheme: GoogleFonts.oswaldTextTheme(),
);

const textInputDecoration = InputDecoration(
    hintText: '',
    fillColor: Colors.white,
    filled: true,
    enabledBorder: OutlineInputBorder(
        borderSide:BorderSide(color: Colors.white, width: 2)
    ),
    focusedBorder: OutlineInputBorder(
        borderSide:BorderSide(color: Colors.pink, width: 2)
    )
);


