
import 'package:flutter/material.dart';

void errorHandleSnack (BuildContext context, String text){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }