import 'package:datahack_3/organizers.dart';
import 'package:datahack_3/texfield.dart';
import 'package:datahack_3/models/task_organiser.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'navigation_host.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
  bool _isLoading = false;


  // Fonction pour gérer le login
  Future<void> _handleLogin() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      setState(() => _errorMessage = "Veuillez remplir tous les champs");
      return;
    }

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print("Connexion réussie : ${userCredential.user?.email}");

      // Cherche l'organisateur dans sampleOrganisers
      // Lit le document depuis Firestore
      DocumentSnapshot doc = await FirebaseFirestore.instance
          .collection('organisateurs')
          .doc(userCredential.user!.uid)
          .get();

// Construit TaskOrganiser depuis les données Firestore
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

      TaskOrganiser loginUser = TaskOrganiser(
        name: Name(
          nom: data['nom'] ?? '',
          prenom: data['prenom'] ?? '',
        ),
        email: data['email'] ?? '',
        phoneNumber: data['phoneNumber'] ?? '',
        role: data['role'] ?? '',
        password: '',
        profileImage: data['image'] ?? '',
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => NavigationHost(loginUser: loginUser),
        ),
      );
    }on FirebaseAuthException catch (e) {
      setState(() {
        if (e.code == 'user-not-found') {
          _errorMessage = "Aucun compte trouvé avec cet email";
        } else if (e.code == 'wrong-password') {
          _errorMessage = "Mot de passe incorrect";
        } else {
          _errorMessage = "Erreur : ${e.message}";
        }
      });
    } finally {
      setState(() => _isLoading = false);
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
                      Image.asset('assets/Simple.png', width: 256, height: 256),
                      SizedBox(height: 36),
                      Text(
                        "Please Log In to your account",
                        style: TextStyle(fontSize: 20, color: Colors.black87),
                      ),
                      SizedBox(height: 36),
                      // Champ Email
                      Container(
                        height: 56,
                        child: TextField(
                          controller: _emailController,
                          autocorrect: true,
                          obscureText: false,
                          style: TextStyle(color: Colors.grey, fontSize: 16),
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
                          style: TextStyle(color: Colors.grey, fontSize: 16),
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
                        onPressed: _isLoading ? null : _handleLogin,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          fixedSize: Size(600, 62),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: _isLoading
                            ? CircularProgressIndicator(color: Colors.white)
                            : Text(
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
