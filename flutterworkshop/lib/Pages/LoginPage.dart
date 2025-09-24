import 'package:flutter/material.dart';
import 'package:flutterworkshop/Pages/HomePage.dart';
import 'package:flutterworkshop/Widgets/CustomButton.dart';
import 'package:flutterworkshop/Widgets/CustomTextField.dart';
import 'package:flutterworkshop/Widgets/PillShapeButton.dart';
import 'package:flutterworkshop/constant.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int tabSwitch = 0;
  final lEmailController = TextEditingController();
  final lPasswordController = TextEditingController();
  final rEmailController = TextEditingController();
  final rPasswordController = TextEditingController();
  final rConfirmpasswordController = TextEditingController();
  late final PageController _pageCtrl;

  void _switchTab(int index) {
    if (tabSwitch == index) return;
    setState(() => tabSwitch = index);
    _pageCtrl.animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.bounceInOut,
    );
  }
  void _loginFunc(){
    print(lEmailController.text);
    print(lPasswordController.text);
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
  }
  void _registFunc(){
    print(rEmailController.text);
    print(rPasswordController.value);
    print(rConfirmpasswordController.text);
  }
  @override
  void initState() {
    super.initState();
     _pageCtrl = PageController(initialPage: tabSwitch);
  }
  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.125,),
            Padding(
              padding: const EdgeInsets.all(paddingNum),
              child: Text("Hello! Welcome to the Flutter Workshop",
              textAlign: TextAlign.center,
              style: titleTextStyle),
            ),
            Spacer(),
            Container(
              height: 0.7 * size.height,
              width: size.width,
              decoration: BoxDecoration(
                color: greenColor,
                border: Border(
                  top: BorderSide(   
                    color:greenBorderColor,
                    width: 5,
                  )
                ),
                borderRadius: BorderRadius.all(Radius.circular(40))
              ),
             child: Padding(
               padding: const EdgeInsets.all(paddingNum),
               child: Column(
                children: [
                  SizedBox(height: 20,),
                  PillShapeButton(index:tabSwitch , onChanged: _switchTab , leftText: "login", rightText: "register"),
                  SizedBox(height: 20,),
                  Expanded(
                    child: PageView(
                      controller: _pageCtrl,
                       onPageChanged: (i) => setState(() => tabSwitch = i),
                       children: [
                        SizedBox.expand(
                          child: _LoginForm(emailController: lEmailController, passwordController: lPasswordController, onPressed: _loginFunc),
                        ),
                        SizedBox.expand(
                          child: _RegistForm(emailController: rEmailController, passwordController: rPasswordController, confirmController: rConfirmpasswordController, onPressed: _registFunc),
                        )
                       ],
                    ),
                  )
                ],
               ),
             ),
            )
          ],
        ),
    
    );
  }
}

class _RegistForm extends StatelessWidget {
  
  final TextEditingController emailController; 
 final TextEditingController passwordController;
 final TextEditingController confirmController;
 final VoidCallback onPressed;

  const _RegistForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.confirmController,
    required this.onPressed
    });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        CustomTextField(
          hintText: "Email",
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          
        ),
        CustomTextField(
          hintText: "Password",
          obscureText: true,
          controller: passwordController,
        ),
        CustomTextField(
          hintText: "Comfirm Password",
          obscureText: true,
          controller: confirmController,
        ),
         SizedBox(height:100 ,),
        CustomButton(buttoName: "Login", width: size.width * 0.7,onPressed: onPressed),
      ],
    );
  }
}

class _LoginForm extends StatelessWidget {
  
  final TextEditingController emailController; 
 final TextEditingController passwordController;
 final VoidCallback onPressed;

  const _LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.onPressed
    });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        CustomTextField(
          hintText: "Email",
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          
        ),
        CustomTextField(
          hintText: "Password",
          obscureText: true,
          controller: passwordController,
        ),
         SizedBox(height:100 ,),
        CustomButton(buttoName: "Login", width: size.width * 0.7, onPressed: onPressed),
      ],
    );
  }
}