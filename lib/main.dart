import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const InstagramHome(),
    );
  }
}

class InstagramHome extends StatelessWidget {
  const InstagramHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send_outlined),
          ),
        ],
      ),

      body: ListView(
        children: [

          // Stories
          SizedBox(
            height: 105,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 32,
                        backgroundImage: NetworkImage(
                          'https://i.pravatar.cc/150?img=${index + 1}',
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        index == 0 ? 'Your story' : 'User ${index + 1}',
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          const Divider(),

          // Post
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // User name
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://i.pravatar.cc/150?img=10',
                  ),
                ),
                title: Text(
                  'sameer.dev',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Karachi, Pakistan'),
                trailing: Icon(Icons.more_vert),
              ),

              // Post Image
              Image.network(
                'https://picsum.photos/600/600',
                height: 400,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              // Icons
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.comment_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send_outlined),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_border),
                  ),
                ],
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  'Liked by 120 people',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'sameer.dev Beautiful day! ❤️ Flutter practice.',
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ],
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage(
                'https://i.pravatar.cc/150?img=12',
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}