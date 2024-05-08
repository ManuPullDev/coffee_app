import 'package:coffee_app/Screens/square.dart';
import 'package:coffee_app/tabbar/tabbar.dart';
//import 'package:coffee_app/body_home/tab_home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/Group 1.png",
            height: size.height * 0.24,
          ),
          const SizedBox(height: 10),
          const Text(
            "Create a New Account",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 25,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                    prefixIcon: const Icon(
                      Icons.person_3,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    labelText:
                        'E-mail', // Mettez à jour le libellé pour le mot de passe
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: '00 000 000 00',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // ajustez la valeur selon votre préférence
                      borderSide: const BorderSide(),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 13,
                      horizontal: 20,
                    ),
                  ),
                  initialCountryCode: 'US',
                  onChanged: (phone) {
                    if (kDebugMode) {
                      print(phone.completeNumber);
                    }
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: rememberMe,
                      onChanged: (value) {
                        // Mettez à jour l'état de rememberMe lorsque la case à cocher est cliquée
                        setState(() {
                          rememberMe = value!;
                        });
                      },
                    ),
                    const Text("Remember Me"),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  const FRTabBarScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign in ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Or",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTitle(imagePath: 'assets/images/facebook (2).png'),
                    SizedBox(width: 10),
                    SquareTitle(imagePath: 'assets/images/google (1).png'),
                    SizedBox(width: 10),
                    SquareTitle(imagePath: 'assets/images/apple1.png'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
