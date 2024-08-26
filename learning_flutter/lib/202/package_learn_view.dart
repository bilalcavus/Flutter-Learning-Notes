
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/202/1_tab_learn.dart';
import 'package:learning_flutter/202/package/loading_bar.dart';
import 'package:learning_flutter/demos/notes_demos_view.dart';


class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: 
      const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _welcomeTextCustom(),
           LoadingBar()
           ]), // paket eklerken ayrı bir file da entegre etmeye dikkat et 
       floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next_rounded),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return  TabLearn(); 
            },
            settings: const RouteSettings()
          ));
        }),
    );
  }


 }

class _welcomeTextCustom extends StatelessWidget {
  const _welcomeTextCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('Welcome!' ,style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic, backgroundColor: Colors.red));
  }
}