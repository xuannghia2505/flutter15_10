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
        style: TextStyle(color: Colors.white,fontSize: 30),
      ),
      leading: Icon(
        Icons.home,
        color: Colors.red,
        size: 30,
      ),
    );
  }
  createBody(){
    return ListView.builder(
        itemCount: lsEnglishWord.length,
        itemBuilder: (BuildContext context, int index){
          return Card(
            elevation: 0,
            child: ListTile(
              leading: CircleAvatar(child: Text((index+1).toString())),
              title: GestureDetector(
                    onTap: (){
                      print("Bạn đã nhấn vào text vị trí: ${index+1}");
                    },
                    child: Text(lsEnglishWord[index].asString,style: TextStyle(color:Colors.blue,fontSize: 20),)
                 ),

              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: (){
                        print("đã nhấn vào icon trái tim có chỉ số vị trí: ${index+1}");
                      },
                      icon: Icon(Icons.favorite,color: Colors.redAccent,size: 20,)),
                  GestureDetector(
                      onTap: (){
                        print("đã nhấn vào icon Camera có chỉ số vị trí: ${index+1}");
                      },
                      child: Icon(Icons.camera_alt,color:Colors.black12,size: 20,)),
                ],
              ) ,
            ),
          );

    });
  }
  createItemList(){

  }
  createBottom(){
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.blueGrey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.call,color: Colors.green,size: 30,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.message,color: Colors.orange,size: 30,))
          ],
        ),
    );
  }
  createFloatAction(){
    return  FloatingActionButton(
        backgroundColor: Colors.purpleAccent,
        onPressed: (){},
        child: Icon(Icons.add,color: Colors.white,size: 30,),
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