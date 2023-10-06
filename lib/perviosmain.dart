// import 'dart:async';
// import 'dart:convert';
// import 'dart:js_interop';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// Future<List<post>> fetchposts() async {
//   final response = await http
//       .get(Uri.parse('https://www.amiiboapi.com/api/amiibo/?name=mario'));
// //https://jsonplaceholder.typicode.com/posts/1
//   if (response.statusCode == 200) {
//     Iterable jsonResponse = jsonDecode(response.body);
//     List<post> posts = jsonResponse.map((data) => post.fromJson(data)).toList();
//     return posts;
//   } else {
//     throw Exception('Failed to load posts');
//   }
// }

// class post {
//   List<Amiibo>? amiibo;

//   post({this.amiibo});

//   post.fromJson(Map<String, dynamic> json) {
//     if (json['amiibo'] != null) {
//       amiibo = <Amiibo>[];
//       json['amiibo'].forEach((v) {
//         amiibo!.add(new Amiibo.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.amiibo != null) {
//       data['amiibo'] = this.amiibo!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Amiibo {
//   String? amiiboSeries;
//   String? character;
//   String? gameSeries;
//   String? head;
//   String? image;
//   String? name;
//   Release? release;
//   String? tail;
//   String? type;

//   Amiibo(
//       {this.amiiboSeries,
//       this.character,
//       this.gameSeries,
//       this.head,
//       this.image,
//       this.name,
//       this.release,
//       this.tail,
//       this.type});

//   Amiibo.fromJson(Map<String, dynamic> json) {
//     amiiboSeries = json['amiiboSeries'];
//     character = json['character'];
//     gameSeries = json['gameSeries'];
//     head = json['head'];
//     image = json['image'];
//     name = json['name'];
//     release =
//         json['release'] != null ? new Release.fromJson(json['release']) : null;
//     tail = json['tail'];
//     type = json['type'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['amiiboSeries'] = this.amiiboSeries;
//     data['character'] = this.character;
//     data['gameSeries'] = this.gameSeries;
//     data['head'] = this.head;
//     data['image'] = this.image;
//     data['name'] = this.name;
//     if (this.release != null) {
//       data['release'] = this.release!.toJson();
//     }
//     data['tail'] = this.tail;
//     data['type'] = this.type;
//     return data;
//   }
// }

// class Release {
//   String? au;
//   String? eu;
//   String? jp;
//   String? na;

//   Release({this.au, this.eu, this.jp, this.na});

//   Release.fromJson(Map<String, dynamic> json) {
//     au = json['au'];
//     eu = json['eu'];
//     jp = json['jp'];
//     na = json['na'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['au'] = this.au;
//     data['eu'] = this.eu;
//     data['jp'] = this.jp;
//     data['na'] = this.na;
//     return data;
//   }
// }

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   late Future<List<post>> futureposts;

//   @override
//   void initState() {
//     super.initState();
//     futureposts = fetchposts();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fetch Data Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Fetch Data Example'),
//         ),
//         body: Center(
//           child: FutureBuilder<List<post>>(
//             future: futureposts,
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return CircularProgressIndicator();
//               } else if (snapshot.hasData) {
//                 final postsData = snapshot.data!;
//                 return ListView.builder(
//                   itemCount: 80, // postsData.length,
//                   itemBuilder: (context, index) {
//                     final postData = postsData[index];
//                     final amiiboData = postData.amiibo;
//                     return ListTile(
//                       title:
//                           Image.network(amiiboData[index].image ?? 'noImage'),
//                       subtitle:
//                           Text('Name: ${amiiboData[index].name ?? 'N/A'}'),
//                       leading: CircleAvatar(
//                         child:
//                             Image.network(amiiboData[index].image ?? 'noImage'),
//                       ),
//                       trailing: Icon(Icons.add_home),
//                     );
//                   },
//                 );
//               } else if (snapshot.hasError) {
//                 return Column(
//                   children: [
//                     Text('${snapshot.error}'),
//                     Text("show nh ho rha ha "),
//                   ],
//                 );
//               }

//               return CircularProgressIndicator();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Post>> fetchPosts() async {
  final response = await http
      .get(Uri.parse('https://www.amiiboapi.com/api/amiibo/?name=mario'));

  if (response.statusCode == 200) {
    final jsonResponse = jsonDecode(response.body);
    final postsData = jsonResponse['amiibo'] as List<dynamic>;
    final posts = postsData.map((data) => Post.fromJson(data)).toList();
    return posts;
  } else {
    throw Exception('Failed to load posts');
  }
}

class Post {
  final String? amiiboSeries;
  final String? character;
  final String? gameSeries;
  final String? head;
  final String? image;
  final String? name;
  final Release? release;
  final String? tail;
  final String? type;

  Post({
    this.amiiboSeries,
    this.character,
    this.gameSeries,
    this.head,
    this.image,
    this.name,
    this.release,
    this.tail,
    this.type,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      amiiboSeries: json['amiiboSeries'],
      character: json['character'],
      gameSeries: json['gameSeries'],
      head: json['head'],
      image: json['image'],
      name: json['name'],
      release:
          json['release'] != null ? Release.fromJson(json['release']) : null,
      tail: json['tail'],
      type: json['type'],
    );
  }
}

class Release {
  final String? au;
  final String? eu;
  final String? jp;
  final String? na;

  Release({this.au, this.eu, this.jp, this.na});

  factory Release.fromJson(Map<String, dynamic> json) {
    return Release(
      au: json['au'],
      eu: json['eu'],
      jp: json['jp'],
      na: json['na'],
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<Post>> futurePosts;

  @override
  void initState() {
    super.initState();
    futurePosts = fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<List<Post>>(
            future: futurePosts,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasData) {
                final postsData = snapshot.data!;
                return ListView.builder(
                  itemCount: postsData.length,
                  itemBuilder: (context, index) {
                    final postData = postsData[index];
                    return Column(
                      children: [
                        ListTile(
                          title: Text(postData.gameSeries!),
                          subtitle: Text('Name: ${postData.name ?? 'N/A'}'),
                          leading: postData.image != null
                              ? CircleAvatar(
                                  child: Image.network(postData.image!),
                                )
                              : const CircleAvatar(child: Text('No Image')),
                          trailing: const Icon(Icons.add_home),
                        ),
                        Text('gameSeries ${postData.type!}'),
                        Text('Head  ${postData.head!}'),
                        Text('Charactor ${postData.character!}'),
                      ],
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Column(
                  children: [
                    Text('${snapshot.error}'),
                    const Text("show nh ho rha ha "),
                  ],
                );
              }

              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}







// // import 'dart:async';
// // import 'dart:convert';

// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;

// // // Future<iosk> fetchiosk() async {
// // //   final response =
// // //       // await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
// // //       await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

// // // //https://http.dog/[code].j pg
// // //   if (response.statusCode == 200) {
// // //     return iosk.fromJson(jsonDecode(response.body));
// // //   } else {
// // //     throw Exception('Failed to load album');
// // //   }
// // // }
// // Future<List<iosk>> fetchiosks() async {
// //   final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

// //   if (response.statusCode == 200) {
// //     // If the server returns a 200 OK response,
// //     // parse the JSON list of posts.
// //     Iterable jsonResponse = jsonDecode(response.body);
// //     List<iosk> iosks = jsonResponse.map((data) => iosk.fromJson(data)).toList();
// //     return iosks;
// //   } else {
// //     // If the server did not return a 200 OK response,
// //     // throw an exception.
// //     throw Exception('Failed to load posts');
// //   }
// // }

// // class iosk {
// //   int? userId;
// //   int? id;
// //   String? title;
// //   String? body;

// //   iosk({this.userId, this.id, this.title, this.body});

// //   iosk.fromJson(Map<String, dynamic> json) {
// //     userId = json['userId'];
// //     id = json['id'];
// //     title = json['title'];
// //     body = json['body'];
// //   }

// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = new Map<String, dynamic>();
// //     data['userId'] = this.userId;
// //     data['id'] = this.id;
// //     data['title'] = this.title;
// //     data['body'] = this.body;
// //     return data;
// //   }
// // }

// // void main() => runApp(MyApp());

// // class _MyAppState extends State<MyApp> {
// //   late Future<List<iosk>> futureiosks; // Correct variable name

// //   @override
// //   void initState() {
// //     super.initState();
// //     futureiosks = fetchiosks(); // Assign the future to futureiosks
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Fetch Data Example',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: const Text('Fetch Data Example'),
// //         ),
// //         body: Center(
// //           child: FutureBuilder<List<iosk>>(
// //             future: futureiosks,
// //             builder: (context, snapshot) {
// //               if (snapshot.connectionState == ConnectionState.waiting) {
// //                 return CircularProgressIndicator();
// //               } else if (snapshot.hasData) {
// //                 final iosksData = snapshot.data;
// //                 return ListView.builder(
// //                   itemCount: iosksData?.length ?? 0,
// //                   itemBuilder: (context, index) {
// //                     final ioskData = iosksData![index];
// //                     return ListTile(
// //                       title: Text('User ID: ${ioskData.userId ?? 'N/A'}'),
// //                       subtitle: Text('Title: ${ioskData.title ?? 'N/A'}'),
// //                     );
// //                   },
// //                 );
// //               } else if (snapshot.hasError) {
// //                 return Column(
// //                   children: [
// //                     Text('${snapshot.error}'),
// //                     Text("show nh  ho rha ha ")
// //                   ],
// //                 );
// //               }

// //               return CircularProgressIndicator();
// //             },
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // // import 'package:ecommerceapp1/splesh_screen.dart';
// // // import 'package:flutter/material.dart';
// // // // ... (import statements)

// // // import 'input.dart';

// // // void main() {
// // //   runApp(const MyApp());
// // // }

// // // class MyApp extends StatelessWidget {
// // //   const MyApp({Key? key}) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       title: 'E-Commerce App',
// // //       theme: ThemeData(
// // //         scaffoldBackgroundColor: Colors.transparent,
// // //         backgroundColor: Colors.transparent,
// // //       ),
// // //       debugShowCheckedModeBanner: false,
// // //       home: CatalogScreen(),
// // //       //SplashScreen(),
// // //     );
// // //   }
// // // }

// // // class CatalogScreen extends StatelessWidget {
// // //   final List<String> work = [
// // //     'Fluttr',
// // //     'p12k',
// // //     'php',
// // //     'java',
// // //     'Fluttr',
// // //     'p12k',
// // //     'php',
// // //     'java',
// // //     'Fluttr',
// // //     'p12k',
// // //     'php',
// // //     'java',
// // //     'assets/images/s2.jpg'
// // //   ];
// // //   final List<int> number = [
// // //     1,
// // //     2,
// // //     3,
// // //     4,
// // //     5,
// // //     5,
// // //     4,
// // //     3,
// // //     4,
// // //     34,
// // //     34,
// // //     3435,
// // //     4,
// // //   ];
// // //   List<Image> myimage = [
// // //     Image.asset('assets/images/s1.jpg'),
// // //     Image.asset('assets/images/s2.jpg'),
// // //     Image.asset('assets/images/s3.jpg'),
// // //     Image.asset('assets/images/s4.jpg'),
// // //     Image.asset('assets/images/watch1.jpg'),
// // //     Image.asset('assets/images/watch2.jpg'),
// // //     Image.asset('assets/images/watch3.jpg'),
// // //     Image.asset('assets/images/watch4.jpg'),
// // //     Image.asset('assets/images/watch5.jpg'),
// // //     Image.asset('assets/images/s1.jpg'),
// // //     Image.asset('assets/images/s2.jpg'),
// // //     Image.asset('assets/images/s3.jpg'),
// // //     Image.asset('assets/images/s4.jpg'),
// // //   ];

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Catalog Screen'),
// // //       ),
// // //       body: Column(
// // //           // Use Column here

// // //           children: [
// // //             ListTile(
// // //               leading: CircleAvatar(
// // //                   backgroundImage: AssetImage('assets/images/s4.jpg')),
// // //               title: Text('This is my work in the'),
// // //               subtitle: Text(
// // //                 'This is the oj ',
// // //                 style: TextStyle(
// // //                   fontStyle: FontStyle.italic,
// // //                 ),
// // //               ),
// // //               trailing: Icon(Icons.access_time_sharp),
// // //             ),
// // //             ListTile(
// // //               leading: CircleAvatar(
// // //                   backgroundImage: AssetImage('assets/images/s2.jpg')),
// // //               title: Text('This is my work in the'),
// // //               subtitle: Text(
// // //                 'This is the oj ',
// // //                 style: TextStyle(
// // //                   fontStyle: FontStyle.italic,
// // //                 ),
// // //               ),
// // //               trailing: Icon(Icons.access_time_sharp),
// // //             ),
// // //             Expanded(
// // //               // Use Expanded to allow ListView.builder to take remaining space
// // //               child: ListView.builder(
// // //                 itemCount: work.length,
// // //                 itemBuilder: (context, index) {
// // //                   return ListTile(
// // //                     title: Text(work[index]),
// // //                   );
// // //                 },
// // //               ),
// // //             ),
// // //             Expanded(
// // //               child: ListView.builder(
// // //                   scrollDirection: Axis.horizontal,
// // //                   itemCount: myimage.length,
// // //                   itemBuilder: (Context, index) {
// // //                     return Padding(
// // //                       padding: const EdgeInsets.all(8.0),
// // //                       child: Column(
// // //                         children: [
// // //                           Container(
// // //                             width: 100,
// // //                             height: 100,
// // //                             child: myimage[index],
// // //                           ),
// // //                           ElevatedButton(
// // //                             onPressed: () {
// // //                               // Navigator.push(
// // //                               //   context,
// // //                               //   MaterialPageRoute(
// // //                               //     builder: (context) => watches(), // Navigate to the
// // //                               //   ),
// // //                               // );
// // //                             },
// // //                             child: Row(
// // //                               mainAxisSize: MainAxisSize.min,
// // //                               children: [
// // //                                 Text('  check $index'),
// // //                               ],
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     );
// // //                   }),
// // //             ),
// // //             Expanded(
// // //               child: ListView.builder(
// // //                 itemCount: number.length,
// // //                 itemBuilder: (context, index) {
// // //                   return ListTile(title: Text('${number[index]}'));
// // //                 },
// // //               ),
// // //             ),
// // //           ]),
// // //     );
// // //   }
// // // }

// // // // class CatalogScreen extends StatelessWidget {
// // // //   final List<String> work = [
// // // //     'Fluttr',
// // // //     'p12k',
// // // //     'php',
// // // //     'java',
// // // //   ];
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text('Catalog Screen'),
// // // //       ),
// // // //       body: Container(
// // // //         child: Column(
// // // //           children: [
// // // //             ListTile(
// // // //               leading: CircleAvatar(
// // // //                   backgroundImage: AssetImage('assets/images/s4.jpg')),
// // // //               title: Text(' this is my work in the '),
// // // //               subtitle: Text(
// // // //                 ' this is work force ',
// // // //                 style: TextStyle(
// // // //                   fontStyle: FontStyle.italic,
// // // //                 ),
// // // //               ),
// // // //               trailing: Icon(Icons.access_time_sharp),
// // // //             ),
// // // //             Expanded(
// // // //               child: ListView.builder(
// // // //                 scrollDirection: Axis.horizontal,
// // // //                 itemCount: work.length,
// // // //                 itemBuilder: (context, index) {
// // // //                   return ListTile(
// // // //                     title: Text(
// // // //                       work[index],
// // // //                       style: TextStyle(
// // // //                         color: Colors.amber,
// // // //                         fontSize: 22,
// // // //                       ),
// // // //                     ),
// // // //                   );
// // // //                 },
// // // //               ),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // import 'dart:convert';
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Image API Example',
// //       home: DogImageScreen(),
// //     );
// //   }
// // }

// // class DogImageScreen extends StatefulWidget {
// //   @override
// //   _DogImageScreenState createState() => _DogImageScreenState();
// // }

// // class _DogImageScreenState extends State<DogImageScreen> {
// //   late String imageUrl;

// //   Future<void> fetchDogImage() async {
// //     final response =
// //         await http.get(Uri.parse('https://api.thedogapi.com/v1/images/search'));
// //     if (response.statusCode == 200) {
// //       final List<dynamic> jsonData = json.decode(response.body);
// //       setState(() {
// //         imageUrl = jsonData[0]['url'];
// //       });
// //     } else {
// //       throw Exception('Failed to load image');
// //     }
// //   }

// //   @override
// //   void initState() {
// //     super.initState();
// //     fetchDogImage();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Image API Example'),
// //       ),
// //       body: Center(
// //         child: imageUrl.isEmpty
// //             ? CircularProgressIndicator() // Loading indicator while fetching image
// //             : Image.network(imageUrl),
// //       ),
// //     );
// //   }
// // }
