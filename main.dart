import 'package:flutter/material.dart';
import 'package:nhom3/login.dart';


void main() {
  runApp(MyApp5());
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  Widget createColumn(String data, IconData icon, Color color, double size){
    return Column(
      children: [
        Icon(icon,color: color,size:size, textDirection: TextDirection.ltr,),
        Text(data,textDirection: TextDirection.ltr,style:TextStyle(color:color),)
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    var dataList =["Call","Place","Alarm"];
    var iconList = [Icons.call,Icons.place,Icons.alarm];
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Center(
        child:Container(
          height: 65,
          decoration: BoxDecoration(
            color:Colors.black12,
          ),
        child: Column(
          children:[
              Text("Xin chao cac ban",textDirection: TextDirection.ltr, style: TextStyle(color:Colors.red),),
              Row(
              textDirection: TextDirection.ltr,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                createColumn(dataList[0], iconList[0], Colors.green, 30),
                createColumn(dataList[1], iconList[1] , Colors.orange, 30),
                createColumn(dataList[2], iconList[2], Colors.red, 30),
              ],
          ),
          ],
        ),
      ),
      ),
    );
  }
}

