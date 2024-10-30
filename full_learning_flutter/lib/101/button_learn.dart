import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.pressed)) {
                return Colors.green;
              }
              return Colors.white;
            })),
            child: const Text('Save'),
          ),
           ElevatedButton(onPressed: (){}, child: const Text('data')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_outlined)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white12,
                  padding: const EdgeInsets.all(10)),
              onPressed: () {},
              child: const SizedBox(width: 200, child: Text('data'))),
          InkWell(
            onTap: () {},
            child: const Text('custom'),
          ),
         
          const SizedBox(height: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 218, 120, 115),
                  shadowColor: Colors.blue,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 40, left: 40),
                child: Text('Place Bid',
                    style: Theme.of(context).textTheme.headlineSmall),
              ))
        ],
      ),
    );
  }
}


//Borders 
// Circleborder(), RoundedRectangleBorder() 