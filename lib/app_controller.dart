



import 'package:flutter/material.dart';

class AppController extends  ChangeNotifier{
static AppController instance = new AppController();

bool trocatema = false;

  get isDark => null;
changeTheme(){
  trocatema = !trocatema;
  notifyListeners();
}
}