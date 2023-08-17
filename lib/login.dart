import 'package:diet_batting/kakao_login.dart';
import 'package:diet_batting/main.dart';
import 'package:diet_batting/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

void main() {

  //카카오 로그인
  KakaoSdk.init(nativeAppKey: '3d7c9fce6027d8619895b07b351fc00c');

  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final viewModel = MainViewModel(kakaoLogin());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 200,
              width:200,
              child: Image.asset('assets/images/logo.png')),
            //Image.network(viewModel.user?.kakaoAccount?.profile?.profileImageUrl ?? ''),
            //Text(
              //'${viewModel.isLogined}',
              //style: Theme.of(context).textTheme.headlineMedium,
            //),
            ElevatedButton(
                onPressed: () async {
                  //await viewModel.login();
                  //setState(() {

                  //});
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage()),
                  );
                },
                child:const Text('카카오로 로그인하기'),
            ),

            /*ElevatedButton( //로그아웃 버튼
              onPressed: () async {
                await viewModel.logout();
                setState(() {

                });
              },
              child:const Text('Logout'),
            )*/
          ],
        ),
      ),
    );
  }
}
