import 'dart:js';

import 'package:aibert/Services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthProvider extends ChangeNotifier{
  AuthService authService=AuthService();
  void signup(){
    authService.signup();
    // AuthProvider authProvider=Provider.of<AuthProvider>(context,listen: false);
    // authProvider.signup();
  }
  void login(){}
}