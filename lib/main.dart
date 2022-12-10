import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:const Gridviewbuilder() ,
  ) );
}
class Gridviewbuilder extends StatefulWidget {
  const Gridviewbuilder({Key? key}) : super(key: key);

  @override
  State<Gridviewbuilder> createState() => _GridviewbuilderState();
}

class _GridviewbuilderState extends State<Gridviewbuilder> {
  List color=[100,200,300,400,500];
  List icon=[Icons.home,Icons.person,Icons.engineering,Icons.wallet,Icons.phone_android];
  List title=["Home","Person","Work","Wallet","Contact"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2
            ),
          itemCount: color.length,
          itemBuilder: (BuildContext context,int i){
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                color: Colors.green[color[i]],
              child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icon[i],size: 40),
                    Text("${title[i]}"),
                  ],

                )

              ),
            );
          }),

    );
  }
}

