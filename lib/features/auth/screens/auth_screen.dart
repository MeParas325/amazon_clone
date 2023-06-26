import 'package:amazon_clone/common/widgets/custom_textField.dart';
import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

enum Auth { signUp, signIn }

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signUp;

  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                'Welcome',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              ListTile(
                title: const Text('Create Account', style: TextStyle(fontWeight: FontWeight.w500),),
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  groupValue: _auth,
                  onChanged: ((Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  }),
                  value: Auth.signUp,
                ),
              ),
              if (_auth == Auth.signUp)
                Container(
                  padding: const EdgeInsets.all(8.0),
                  color: GlobalVariables.backgroundColor,
                  child: Form(
                    key: _signUpFormKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: _nameController,
                          hintText: 'Name',
                        ),
                        CustomTextField(
                            controller: _emailController, hintText: 'Email'),
                        CustomTextField(
                            controller: _passwordController, hintText: 'Password')
                      ],
                    ),
                  ),
                ),
              ListTile(
                title: const Text('Sign-in.', style: TextStyle(fontWeight: FontWeight.w500),),
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  groupValue: _auth,
                  onChanged: ((Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  }),
                  value: Auth.signIn,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
