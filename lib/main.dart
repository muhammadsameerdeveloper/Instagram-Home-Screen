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
      backgroundColor: Colors.white,

      // ================= APP BAR =================
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        title: const Text(
          'Instagram',
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.black,
              size: 28,
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chat_bubble_outline,
              color: Colors.black,
              size: 26,
            ),
          ),
        ],
      ),

      // ================= BODY =================
      body: ListView(
        children: [
          // ================= STORIES =================
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // Your Story
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 8, top: 10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          const CircleAvatar(
                            radius: 34,
                            backgroundImage: NetworkImage(
                              'https://i.pravatar.cc/150?img=12',
                            ),
                          ),

                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 5),

                      const Text('Your story', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),

                // Other Stories
                story('Alex', 1),
                story('Sarah', 2),
                story('John', 3),
                story('Emma', 4),
                story('David', 5),
                story('Maria', 6),
              ],
            ),
          ),

          const Divider(),

          // ================= POST 1 =================
          post(
            username: 'alex_dev',
            location: 'Karachi, Pakistan',
            profileImage: 'https://i.pravatar.cc/150?img=1',
            postImage: 'https://picsum.photos/id/1015/600/600',
            likes: '1,245',
            caption: 'Beautiful view! 🌄❤️',
          ),

          // ================= POST 2 =================
          post(
            username: 'sarah_style',
            location: 'Lahore, Pakistan',
            profileImage: 'https://i.pravatar.cc/150?img=2',
            postImage: 'https://picsum.photos/id/1027/600/600',
            likes: '2,431',
            caption: 'Enjoying my day! ✨',
          ),

          // ================= POST 3 =================
          post(
            username: 'john_travel',
            location: 'Islamabad, Pakistan',
            profileImage: 'https://i.pravatar.cc/150?img=3',
            postImage: 'https://picsum.photos/id/1036/600/600',
            likes: '987',
            caption: 'Travel makes life beautiful ❤️',
          ),
        ],
      ),

      // ================= BOTTOM BAR =================
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),

          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),

          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: '',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.movie_outlined), label: ''),

          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 13,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=12'),
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  // ================= STORY WIDGET =================
  Widget story(String name, int imageNumber) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.orange, Colors.pink, Colors.purple],
              ),
            ),
            child: CircleAvatar(
              radius: 31,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/150?img=$imageNumber',
                ),
              ),
            ),
          ),

          const SizedBox(height: 5),

          Text(name, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  // ================= POST WIDGET =================
  Widget post({
    required String username,
    required String location,
    required String profileImage,
    required String postImage,
    required String likes,
    required String caption,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // User Information
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),

          leading: CircleAvatar(
            radius: 21,
            backgroundImage: NetworkImage(profileImage),
          ),

          title: Text(
            username,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),

          subtitle: Text(location),

          trailing: const Icon(Icons.more_vert),
        ),

        // Post Image
        Image.network(
          postImage,
          width: double.infinity,
          height: 380,
          fit: BoxFit.cover,
        ),

        // Post Buttons
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border, size: 28),
              ),

              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chat_bubble_outline, size: 27),
              ),

              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send_outlined, size: 27),
              ),

              const Spacer(),

              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_border, size: 28),
              ),
            ],
          ),
        ),

        // Likes
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            '$likes likes',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        const SizedBox(height: 6),

        // Caption
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black, fontSize: 14),
              children: [
                TextSpan(
                  text: username,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),

                const TextSpan(text: '  '),

                TextSpan(text: caption),
              ],
            ),
          ),
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}
