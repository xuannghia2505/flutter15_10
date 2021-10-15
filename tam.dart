import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
class MyApp3 extends StatelessWidget {
  const MyApp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var data = ["Nguyen van A", "Nguyen Thi C", "Tran Van D"];
  var lsEnglishWord = generateWordPairs().take(50).toList();
  createHeader(){
    return AppBar(
      title: Text(
        "Trang chủ",
        style: TextStyle(color:Colors.amber, fontSize: 30),
      ),
      leading: Icon(
        Icons.home,
        size: 30,
        color: Colors.amber,),
    );
  }
  createBody(){
    return ListView.builder(
        itemCount: lsEnglishWord.length,
        itemBuilder: (BuildContext context , int index) {
          return Card(
            elevation: 0,

            child: ListTile(
              leading:CircleAvatar(child: Text((index+1).toString())),
              title: Text(lsEnglishWord[index].asString,style:TextStyle(fontSize: 20,color:Colors.blue),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: (){},
                      icon:Icon(Icons.favorite,  color:  Colors.red,)),
                  GestureDetector(
                      onTap: (){
                        print("Đã nhấn vào Camera. ${index+1}");
                      },
                      child: Icon(Icons.linked_camera,  color:  Colors.black12)),
                ],
              ),
            ),
          );

        });
  }
  createItemList(){

  }
  createBottom(){
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color:Colors.blueGrey,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.call, color:Colors.green,size:30)),
          IconButton(onPressed: (){}, icon: Icon(Icons.messenger,color:Colors.orange,size:30)),
        ],
      ),
    );
  }
  createFloatAction(){
    return FloatingActionButton(
        backgroundColor: Colors.purpleAccent,
        onPressed: (){},
        child: Icon(Icons.add, color: Colors.white)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createHeader(),
      body: createBody(),
      bottomNavigationBar: createBottom() ,
      floatingActionButton: createFloatAction(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}