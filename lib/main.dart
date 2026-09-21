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
            fontSize: 27,
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
              Icons.messenger_outline,
              color: Colors.black,
              size: 27,
            ),
          ),
        ],
      ),

      // ================= BODY =================
      body: ListView(
        children: [
          // =================================================
          // STORIES
          // =================================================
          SizedBox(
            height: 125,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // YOUR STORY
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 8, top: 10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          const CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                              'https://i.pravatar.cc/150?img=12',
                            ),
                          ),

                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              height: 22,
                              width: 22,
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
                                size: 17,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 6),

                      const Text('Your story', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),

                story('Alex', 1),
                story('Sarah', 2),
                story('John', 3),
                story('Emma', 4),
                story('David', 5),
                story('Maria', 6),
                story('James', 7),
              ],
            ),
          ),

          const Divider(height: 1),

          // =================================================
          // POST 1
          // =================================================
          post(
            username: 'alex_dev',
            location: 'Karachi, Pakistan',
            profileImage: 'https://i.pravatar.cc/150?img=1',
            postImage: 'https://picsum.photos/id/1015/800/800',
            likes: '1,245',
            caption: 'Beautiful place to visit! 🌄',
          ),

          // =================================================
          // POST 2
          // =================================================
          post(
            username: 'sarah_style',
            location: 'Lahore, Pakistan',
            profileImage: 'https://i.pravatar.cc/150?img=2',
            postImage: 'https://picsum.photos/id/1027/800/800',
            likes: '2,431',
            caption: 'Enjoying my beautiful day ✨❤️',
          ),

          // =================================================
          // SUGGESTED FOR YOU
          // =================================================
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            child: Text(
              'Suggested for you',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              children: [
                suggestion('Mike', 8),

                suggestion('Olivia', 9),

                suggestion('Daniel', 10),

                suggestion('Sophia', 11),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // =================================================
          // POST 3
          // =================================================
          post(
            username: 'john_travel',
            location: 'Islamabad, Pakistan',
            profileImage: 'https://i.pravatar.cc/150?img=3',
            postImage: 'https://picsum.photos/id/1036/800/800',
            likes: '987',
            caption: 'Travel makes life beautiful ❤️',
          ),

          // =================================================
          // REELS SECTION
          // =================================================
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Reels',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                reel(
                  'https://picsum.photos/id/1040/400/600',
                  'Amazing view 🌄',
                ),

                reel('https://picsum.photos/id/1041/400/600', 'Travel time ✈️'),

                reel(
                  'https://picsum.photos/id/1042/400/600',
                  'Beautiful nature 🌿',
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // =================================================
          // POST 4
          // =================================================
          post(
            username: 'maria_food',
            location: 'Islamabad, Pakistan',
            profileImage: 'https://i.pravatar.cc/150?img=6',
            postImage: 'https://picsum.photos/id/292/800/800',
            likes: '3,456',
            caption: 'Good food = good mood 😍🍔',
          ),

          // =================================================
          // POST 5
          // =================================================
          post(
            username: 'fashion_world',
            location: 'Dubai',
            profileImage: 'https://i.pravatar.cc/150?img=7',
            postImage: 'https://picsum.photos/id/325/800/800',
            likes: '5,120',
            caption: 'Simple and beautiful ✨',
          ),

          const SizedBox(height: 50),
        ],
      ),

      // =================================================
      // BOTTOM NAVIGATION
      // =================================================
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        backgroundColor: Colors.white,

        selectedItemColor: Colors.black,

        unselectedItemColor: Colors.black,

        showSelectedLabels: false,

        showUnselectedLabels: false,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 28), label: ''),

          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 28),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined, size: 28),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.movie_outlined, size: 28),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 14,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=12'),
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  // =====================================================
  // STORY WIDGET
  // =====================================================

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
              radius: 32,

              backgroundColor: Colors.white,

              child: CircleAvatar(
                radius: 29,

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

  // =====================================================
  // POST WIDGET
  // =====================================================

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
        // USER HEADER
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),

          leading: CircleAvatar(
            radius: 22,
            backgroundImage: NetworkImage(profileImage),
          ),

          title: Text(
            username,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),

          subtitle: Text(location),

          trailing: const Icon(Icons.more_vert),
        ),

        // POST IMAGE
        Image.network(
          postImage,
          width: double.infinity,
          height: 400,
          fit: BoxFit.cover,
        ),

        // ACTION BUTTONS
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border, size: 29),
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
              icon: const Icon(Icons.bookmark_border, size: 29),
            ),
          ],
        ),

        // LIKES
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            '$likes likes',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        const SizedBox(height: 6),

        // CAPTION
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

        // COMMENTS
        const Padding(
          padding: EdgeInsets.only(left: 12, top: 8),
          child: Text(
            'View all 35 comments',
            style: TextStyle(color: Colors.grey),
          ),
        ),

        // ADD COMMENT
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/150?img=12',
                ),
              ),

              const SizedBox(width: 10),

              const Expanded(
                child: Text(
                  'Add a comment...',
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              const Text('❤️  😂  👍', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),

        const SizedBox(height: 15),
      ],
    );
  }

  // =====================================================
  // SUGGESTION CARD
  // =====================================================

  Widget suggestion(String name, int imageNumber) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),

      child: Column(
        children: [
          CircleAvatar(
            radius: 42,
            backgroundImage: NetworkImage(
              'https://i.pravatar.cc/150?img=$imageNumber',
            ),
          ),

          const SizedBox(height: 10),

          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),

          const SizedBox(height: 5),

          const Text(
            'Suggested for you',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),

          const SizedBox(height: 12),

          SizedBox(
            width: double.infinity,
            height: 35,

            child: ElevatedButton(
              onPressed: () {},

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),

              child: const Text('Follow'),
            ),
          ),
        ],
      ),
    );
  }

  // =====================================================
  // REEL CARD
  // =====================================================

  Widget reel(String image, String title) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(left: 10),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),

        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
      ),

      child: Stack(
        children: [
          Positioned(
            left: 10,
            bottom: 12,

            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),

          const Positioned(
            right: 10,
            bottom: 10,

            child: Icon(Icons.play_arrow, color: Colors.white, size: 30),
          ),
        ],
      ),
    );
  }
}
