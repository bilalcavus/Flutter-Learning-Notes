import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                FittedBox(
                  child: Text('asdasd',
                      style: Theme.of(context).textTheme.headlineSmall,
                      maxLines: 1,                   
                      ),
                ),
            
                Container(color: Colors.red, height: 300),
                const Divider(),
                 SizedBox(
                  height: 300,
                   child: ListView(
                    scrollDirection: Axis.horizontal,
                      children: [
                         Container(color: Colors.white, width: 100,),
                         Container(color: Colors.red, width: 100,),
                         Container(color: Colors.white, width: 100,),
                         Container(color: Colors.red, width: 100,),
                         Container(color: Colors.white, width: 100,),
                         Container(color: Colors.red, width: 100,),
            
            ],
         ),
     ),
                IconButton(onPressed: (){}, icon: Icon(Icons.close)),
                // xx // 


                 FittedBox(
                  child: Text('asdasd',
                      style: Theme.of(context).textTheme.headlineSmall,
                      maxLines: 1,                   
                      ),
                ),
            
                Container(color: Colors.red, height: 300),
                const Divider(),
                 SizedBox(
                  height: 300,
                   child: ListView(
                    scrollDirection: Axis.horizontal,
                      children: [
                         Container(color: Colors.white, width: 100,),
                         Container(color: Colors.red, width: 100,),
                         Container(color: Colors.white, width: 100,),
                         Container(color: Colors.red, width: 100,),
                         Container(color: Colors.white, width: 100,),
                         Container(color: Colors.red, width: 100,),
            
            ],
         ),
     ),
                IconButton(onPressed: (){}, icon: Icon(Icons.close))
              ],
            ),
          ),
        ],
      ),
    );
  }
}