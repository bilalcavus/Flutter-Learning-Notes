import 'package:flutter/material.dart';
import 'package:learning_flutter/101/image_learn.dart';
import 'package:learning_flutter/demos/notes_demos_view.dart';

class BasicDemos extends StatefulWidget {
  const BasicDemos({super.key});

  @override
  State<BasicDemos> createState() => _BasicDemosState();
}

class _BasicDemosState extends State<BasicDemos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _CustomHeadlineWidget(),
      
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next_rounded),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return  NoteDemos(); 
            },
            settings: const RouteSettings()
          ));
        }),
    );
  }
}

class _CustomHeadlineWidget extends StatelessWidget {
  const _CustomHeadlineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, // yazıyı sayfanın başından başlatır
      children: [
        const SizedBox(height: 60),
       const Text('Notely', style: TextStyle(fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Colors.black
        
        ),),
        const SizedBox(height: 20,),
        const Text("Capture what's on your mind & get a reminder later at the right place or time. You can also add voice memo & other features", style: TextStyle(fontSize: 16,
        color: Colors.black),),
        Expanded(child: Align(
          alignment: Alignment.bottomCenter,
          child:  Image.asset(
            'assets/note.png',
            width: 300,
            height: 300,
            fit: BoxFit.fitHeight,
          ),
          
        ))
      ],
    ),
    );
  }
}