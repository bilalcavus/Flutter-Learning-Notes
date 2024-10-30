import 'package:flutter/material.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> {
  Color _backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
        final result = await showModalBottomSheet(
            backgroundColor: _backgroundColor,
            // barrierColor: Colors.transparent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            isScrollControlled: true, //tüm ekranı kaplatır
            context: context,
            builder: (context) {
            return _CustomSheet(backgroundColor: _backgroundColor);
          });

          if (result is bool) {
            setState(() {
              _backgroundColor = Colors.pink;
            });
          }
        },
        child: const Icon(Icons.share_outlined),
        ),
    );
  }
}

class _CustomSheet extends StatefulWidget {
  const _CustomSheet({
    Key? key,
    required Color backgroundColor,
  }) : super(key: key);

  

  @override
  State<_CustomSheet> createState() => _CustomSheetState();
}

class _CustomSheetState extends State<_CustomSheet> {
  Color _backgroundColor =Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 150), //componentin boyutu
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.red,
                  child: Divider(
                    color: Colors.black26,
                    thickness: 3,
                    indent: MediaQuery.of(context).size.width * 0.45,
                    endIndent: MediaQuery.of(context).size.width * 0.45,
                  ),
                ),
              
              ],
            ),
            const Text('ddasd'),
            Image.network('https://picsum.photos/id/237/200/300',height: 200,),
            ElevatedButton(onPressed: (){
              setState(() {
                _backgroundColor = Colors.red;
              });
              Navigator.of(context).pop<bool>(true);
            }, child: const Text('OK'))
          ],
        ),
      ),
    );
  }
}