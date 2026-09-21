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
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.black,
              size: 29,
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chat_bubble_outline,
              color: Colors.black,
              size: 27,
            ),
          ),
        ],
      ),

      // ================= BODY =================
      body: ListView(
        children: [
          // ================= STORIES =================
          SizedBox(
            height: 125,

            child: ListView(
              scrollDirection: Axis.horizontal,

              children: [
                yourStory(),

                story('Ali', 1),
                story('Sarah', 2),
                story('John', 3),
                story('Maria', 4),
                story('David', 5),
                story('Emma', 6),
                story('James', 7),
                story('Olivia', 8),
              ],
            ),
          ),

          const Divider(),

          // ================= LIVE NOW =================
          const Padding(
            padding: EdgeInsets.all(12),

            child: Text(
              'Live now',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 100,

            child: ListView(
              scrollDirection: Axis.horizontal,

              children: [
                liveUser('Mike', 9),
                liveUser('Sophia', 10),
                liveUser('Daniel', 11),
                liveUser('Noah', 12),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // ================= POST 1 =================
          post(
            username: 'ali_developer',
            location: 'Karachi',
            profileImage: 'https://i.pravatar.cc/150?img=1',
            postImage: 'https://picsum.photos/id/1015/800/800',
            likes: '1,234',
            caption: 'Amazing day! Flutter is awesome 🚀',
          ),

          // ================= POST 2 =================
          post(
            username: 'sarah_fashion',
            location: 'Lahore',
            profileImage: 'https://i.pravatar.cc/150?img=2',
            postImage: 'https://picsum.photos/id/1027/800/800',
            likes: '2,540',
            caption: 'Simple look for today ✨',
          ),

          // ================= SHOPPING =================
          const Padding(
            padding: EdgeInsets.all(12),

            child: Text(
              'Shopping',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 230,

            child: ListView(
              scrollDirection: Axis.horizontal,

              children: [
                productCard(
                  'Shoes',
                  'https://picsum.photos/id/21/500/500',
                  '\$45',
                ),

                productCard(
                  'Watch',
                  'https://picsum.photos/id/26/500/500',
                  '\$80',
                ),

                productCard(
                  'Bag',
                  'https://picsum.photos/id/30/500/500',
                  '\$55',
                ),

                productCard(
                  'Glasses',
                  'https://picsum.photos/id/40/500/500',
                  '\$30',
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // ================= POST 3 =================
          post(
            username: 'john_traveler',
            location: 'Islamabad',
            profileImage: 'https://i.pravatar.cc/150?img=3',
            postImage: 'https://picsum.photos/id/1036/800/800',
            likes: '4,320',
            caption: 'Nature is always beautiful 🌿❤️',
          ),

          // ================= SUGGESTIONS =================
          const Padding(
            padding: EdgeInsets.all(12),

            child: Text(
              'Suggested for you',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 225,

            child: ListView(
              scrollDirection: Axis.horizontal,

              children: [
                suggestion('Hamza', 13),
                suggestion('Ayesha', 14),
                suggestion('Usman', 15),
                suggestion('Hina', 16),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // ================= REELS =================
          const Padding(
            padding: EdgeInsets.all(12),

            child: Text(
              'Reels',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 270,

            child: ListView(
              scrollDirection: Axis.horizontal,

              children: [
                reel('https://picsum.photos/id/50/500/700', 'Travel'),

                reel('https://picsum.photos/id/60/500/700', 'Nature'),

                reel('https://picsum.photos/id/70/500/700', 'Fashion'),

                reel('https://picsum.photos/id/80/500/700', 'Lifestyle'),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // ================= POST 4 =================
          post(
            username: 'food_lovers',
            location: 'Islamabad',
            profileImage: 'https://i.pravatar.cc/150?img=6',
            postImage: 'https://picsum.photos/id/292/800/800',
            likes: '6,540',
            caption: 'Food makes everything better 😍🍔',
          ),

          // ================= POST 5 =================
          post(
            username: 'travel_world',
            location: 'Dubai',
            profileImage: 'https://i.pravatar.cc/150?img=7',
            postImage: 'https://picsum.photos/id/325/800/800',
            likes: '8,120',
            caption: 'Another beautiful destination ✈️',
          ),

          // ================= END =================
          const SizedBox(height: 80),
        ],
      ),

      // ================= BOTTOM NAV =================
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        backgroundColor: Colors.white,

        selectedItemColor: Colors.black,

        unselectedItemColor: Colors.black,

        showSelectedLabels: false,

        showUnselectedLabels: false,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 29), label: ''),

          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 29),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined, size: 29),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.movie_outlined, size: 29),
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
  // YOUR STORY
  // =====================================================

  Widget yourStory() {
    return Padding(
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
                  height: 23,
                  width: 23,

                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,

                    border: Border.all(color: Colors.white, width: 2),
                  ),

                  child: const Icon(Icons.add, color: Colors.white, size: 17),
                ),
              ),
            ],
          ),

          const SizedBox(height: 6),

          const Text('Your story', style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  // =====================================================
  // STORY
  // =====================================================

  Widget story(String name, int image) {
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
                  'https://i.pravatar.cc/150?img=$image',
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
  // LIVE USER
  // =====================================================

  Widget liveUser(String name, int image) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 5),

      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(3),

                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),

                child: CircleAvatar(
                  radius: 32,

                  backgroundImage: NetworkImage(
                    'https://i.pravatar.cc/150?img=$image',
                  ),
                ),
              ),

              Positioned(
                bottom: 0,
                left: 16,

                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 2,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),

                  child: const Text(
                    'LIVE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 4),

          Text(name, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  // =====================================================
  // POST
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

        // IMAGE
        Image.network(
          postImage,

          width: double.infinity,

          height: 400,

          fit: BoxFit.cover,
        ),

        // BUTTONS
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),

          child: Row(
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
            'View all 42 comments',

            style: TextStyle(color: Colors.grey),
          ),
        ),

        // COMMENT ROW
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

              const Text('❤️ 😂 👍'),
            ],
          ),
        ),

        const SizedBox(height: 15),
      ],
    );
  }

  // =====================================================
  // PRODUCT CARD
  // =====================================================

  Widget productCard(String name, String image, String price) {
    return Container(
      width: 170,

      margin: const EdgeInsets.only(left: 10),

      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),

        borderRadius: BorderRadius.circular(10),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),

            child: Image.network(
              image,

              height: 140,
              width: double.infinity,

              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8),

            child: Text(
              name,

              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),

            child: Row(
              children: [
                Text(
                  price,

                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),

                const Spacer(),

                const Icon(Icons.favorite_border, size: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // =====================================================
  // SUGGESTION
  // =====================================================

  Widget suggestion(String name, int image) {
    return Container(
      width: 165,

      margin: const EdgeInsets.only(left: 10),

      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),

        borderRadius: BorderRadius.circular(10),
      ),

      child: Column(
        children: [
          CircleAvatar(
            radius: 40,

            backgroundImage: NetworkImage(
              'https://i.pravatar.cc/150?img=$image',
            ),
          ),

          const SizedBox(height: 10),

          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),

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
  // REEL
  // =====================================================

  Widget reel(String image, String title) {
    return Container(
      width: 165,

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
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const Positioned(
            right: 10,
            bottom: 10,

            child: Icon(Icons.play_circle_fill, color: Colors.white, size: 35),
          ),
        ],
      ),
    );
  }
}
