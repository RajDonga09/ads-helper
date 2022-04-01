import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            if (index % 10 == 0) {
              return const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 400,
                  child: NativeAdViewWrapper(),
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'this is text $index',
                  style: Theme
                      .of(context)
                      .textTheme
                      .body1,
                ),
              );
            }
          },
          itemCount: 50,
          separatorBuilder: (BuildContext context, _) => const Divider(),
        ),
      ),
      // body: GridView.builder(
      //   itemCount: 30,
      //   shrinkWrap: true,
      //   key: widget.key,
      //   padding: const EdgeInsets.all(20),
      //   addAutomaticKeepAlives: true,
      //   itemBuilder: (context, index) {
      //     return Card(
      //       semanticContainer: true,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(6.0),
      //       ),
      //       clipBehavior: Clip.antiAliasWithSaveLayer,
      //       child: Container(
      //         color: Colors.white,
      //       ),
      //       elevation: 5,
      //     );
      //   },
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 20.0,
      //     mainAxisSpacing: 20.0,
      //     childAspectRatio: 0.55,
      //   ),
      // ),
    )
    ,
    );
  }
}
