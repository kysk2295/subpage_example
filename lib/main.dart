import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SubPage Example',
      initialRoute: '/',
      routes: {'/':(context)=>MyHomePage(),
      '/second':(context)=>SecondPage()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }


}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Sub Page Main'),
        ),
        body: Container(
          child: Center(
            child: Text('첫 번째 페이지'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            //다음화면으로 이동
            Navigator.of(context)
                .pushNamed('/second');

          },
          child: Icon(Icons.add),
        ),
      );
    }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: (){
              // 스택 메모리에서 맨 위에 있는 페이지를 제거
              Navigator.of(context).pop();
            },
            child: Text('돌아가기'),
          ),
        ),
      ),
    );
  }

}
