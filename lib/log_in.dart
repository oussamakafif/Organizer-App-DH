import 'package:datahack_3/texfield.dart';
import 'package:datahack_3/models/task_organiser.dart';
import 'package:flutter/material.dart';
import 'Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? _errorMessage;

  // Fonction pour vérifier les credentials
  TaskOrganiser? loginUser;
  bool _verifyLogin(String email, String password) {
    for (var organiser in sampleOrganisers) {
      if (organiser.email == email && organiser.password == password) {
        loginUser = organiser;
        return true;
      }
    }
    return false;
  }

  // Fonction pour gérer le login
  void _handleLogin() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      setState(() {
        _errorMessage = "Veuillez remplir tous les champs";
      });
      return;
    }

    if (_verifyLogin(email, password)) {
      // Login réussi - aller à la page Home
      setState(() {
        _errorMessage = null;
      });
      Navigator.push(context,
        MaterialPageRoute(builder: (context) => Home(loginUser: loginUser!)),
      );
    } else {
      // Login échoué - afficher le message d'erreur
      setState(() {
        _errorMessage = "Email ou mot de passe incorrect";
      });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Login.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/Simple.png',
                        width: 256,
                        height: 256,
                      ),
                      SizedBox(height: 36),
                      Text(
                        "Please Log In to your account",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 36),
                      // Champ Email
                      Container(
                        height: 56,
                        child: TextField(
                          controller: _emailController,
                          autocorrect: true,
                          obscureText: false,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 8,
                            ),
                            labelText: "Email",
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontFamily: 'Popins',
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 50),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      // Champ Password
                      Container(
                        height: 56,
                        child: TextField(
                          controller: _passwordController,
                          autocorrect: true,
                          obscureText: true,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 8,
                            ),
                            labelText: "password",
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontFamily: 'Popins',
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 50),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      // Message d'erreur
                      if (_errorMessage != null)
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.red.shade100,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            _errorMessage!,
                            style: TextStyle(
                              color: Colors.red.shade900,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      SizedBox(height: 36),
                      // Bouton Login
                      ElevatedButton(
                        onPressed: _handleLogin,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          fixedSize: Size(600, 62),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}