import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PasswordTextfield extends StatefulWidget {
  const PasswordTextfield({super.key, required this.controller});
  final TextEditingController? controller;

  @override
  State<PasswordTextfield> createState() => _PasswordTextfieldState();
}

class _PasswordTextfieldState extends State<PasswordTextfield> {
final _obsecureText = '*';
bool _isSecure = true;

void _changeLoading() {
 setState(() {
   _isSecure = !_isSecure;
 });
  
}
  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: widget.controller,
      autofillHints: const [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword, 
      obscureText: true,
      obscuringCharacter: _obsecureText,
      decoration:  InputDecoration(
        border: UnderlineInputBorder(),
        hintText: 'password',
        suffix: _onVisibilityIcon()
      ),
    );
  }

  IconButton _onVisibilityIcon() {
    return IconButton(onPressed: _changeLoading,
       icon:  AnimatedCrossFade(firstChild:const Icon(Icons.visibility_outlined), 
       secondChild: const Icon(Icons.visibility_off_outlined) , 
       crossFadeState: _isSecure ? CrossFadeState.showFirst : CrossFadeState.showSecond , duration: const Duration(seconds: 2) ));
  }
}