
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Box myBox_ = Hive.box('myBox');
  String? name;

  create() async {
    await myBox_.put('name', 'arun');
  }

  read() async {
    setState(() {
      name = myBox_.get('name');
    });
    // print(
    //   name = frndBox.get('name'),//it print in console
    // );
  }

  update() async {
    await myBox_.put("name", "20");
  }

  deleate() async {
    await myBox_.delete("name");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$name'),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
              onPressed: create,
              child: const Text('create '),
            ),
            ElevatedButton(
              onPressed: read,
              child: const Text('read   '),
            ),
            ElevatedButton(
              onPressed: update,
              child: const Text('update'),
            ),
            ElevatedButton(
              onPressed: deleate,
              child: const Text('delate'),
            ),
          ],
        ),
      ),
    );
  }
}


//SAMPLE
// import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   Box Mycase = Hive.box('myBox');
//   String? name;

//   create() async {
//     await Mycase.put('name', 'ambum villum');
//   }

//   read() async {
//     setState(() {
//       name = Mycase.get('name');
//     });
//   }

//   update() async {
//     await Mycase.put('name', 'malappuram kathi');
//   }

//   deleate() async {
//     await Mycase.delete('name');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('$name'),
//             const SizedBox(
//               height: 70,
//             ),
//             ElevatedButton(
//               onPressed: create,
//               child: const Text('create '),
//             ),
//             ElevatedButton(
//               onPressed: read,
//               child: const Text('read   '),
//             ),
//             ElevatedButton(
//               onPressed: update,
//               child: const Text('update'),
//             ),
//             ElevatedButton(
//               onPressed: deleate,
//               child: const Text('delate'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
