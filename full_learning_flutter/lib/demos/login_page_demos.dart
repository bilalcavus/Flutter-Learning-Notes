import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
    backgroundColor: Color(0xff21254A),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Container(
              height:height * .25,
            ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   titleText(),
                   customSizedBox(),
                   userNameTextField(),
                   customSizedBox(),
                   passwordTextField(),
                   customSizedBox(),
                   passwordForgBttn(),
                   customSizedBox(),
                   loginButton(),
                   customSizedBox(),
                   signUp(),
                ],
              ),
            )
            ],
          ),
        ),
      ),
    );

  }

  Center passwordForgBttn() {
    return Center(child: TextButton(onPressed: (){}, child:  Text('Sifremi Unuttum', style: TextStyle(color: Colors.pink[200]),
                   )
                  )
                 );
  }

  Center loginButton() {
    return Center(
                  child: TextButton(onPressed: () {}, 
                  child: Container(
                    height: 50,
                    width: 150,
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xff31274F)
                    ),
                    child: Center(child: const Text('Giris Yap' , style: TextStyle(color: Colors.white),))),),
                 );
  }

  Center signUp() {
    return Center(child: TextButton(onPressed: (){}, child:  Text('Hesap Olustur', style: TextStyle(color: Colors.pink[200]),
                   )
                  )
                 );
  }

  TextFormField passwordTextField() {
    return TextFormField(
      obscureText: true,
      style: const TextStyle(color: Colors.white),
                  decoration: customInputDecoration("Sifre"),
                );
  }

  TextFormField userNameTextField() {
    return TextFormField(
      style: TextStyle(color: Colors.white),
                  decoration: customInputDecoration("Kullanici Adi"),
                );
  }

  Text titleText() {
    return const Text('Hosgeldiniz', style: TextStyle(color:Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
    );
  }


Widget customSizedBox() => SizedBox(
  height: 20,
);

  InputDecoration customInputDecoration(String hintText) {
    return  InputDecoration(
                  hintText:hintText,
                  hintStyle: const TextStyle(color: Colors.grey),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    )
                  ),
                   focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    )
                   )
                );
  }
}