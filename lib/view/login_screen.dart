import 'package:flutter/material.dart';
import 'package:moviez/auth/firebase_auth_service.dart';

class LoginScreen extends StatelessWidget {
  final FirebaseAuthService _authService = FirebaseAuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Continue With Google')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final user = await _authService.signInWithGoogle();
            if (user != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Welcome ${user.displayName}!')),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Login cancelled or failed')),
              );
            }
          },
          child: Text('Sign in with Google'),
        ),
      ),
    );
  }
}
