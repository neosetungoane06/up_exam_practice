import 'package:flutter/material.dart';
import '../widgets/home_menu_drawer.dart';
import 'learning_navigator.dart';

class DailyHomeScreen extends StatelessWidget {

  final String preferredName;

  const DailyHomeScreen({
    super.key,
    required this.preferredName,
  });

@override
Widget build(BuildContext context) {
return Scaffold(
  endDrawer: const HomeMenuDrawer(),
  backgroundColor: Theme.of(context).scaffoldBackgroundColor,

    body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
padding: const EdgeInsets.fromLTRB(24, 18, 24, 20),

child: Column(
crossAxisAlignment: CrossAxisAlignment.start,

children: [

/// HEADER

Row(
children: [

  Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Text(
          "${_greeting()}, $preferredName 👋",
          style:  TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).textTheme.titleLarge?.color,
          ),
        ),

SizedBox(height: 6),

Text(
"Let's keep building your mastery.",
style: TextStyle(
fontSize: 16,
  color: Theme.of(context).textTheme.bodyMedium?.color,
),
),

],
),
),

  Builder(
    builder: (context) => Tooltip(
      message: "Menu",
      child: Container(
        width: 52,
        height: 52,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              color: Color(0x12000000),
            ),
          ],
        ),
        child: IconButton(
          icon: const Icon(
            Icons.menu,
            size: 30,
          ),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
        ),
      ),
    ),
  ),

],
),

const SizedBox(height: 14),

/// MODULE BAR

  InkWell(
    borderRadius: BorderRadius.circular(16),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const LearningNavigator(),
        ),
      );
    },

    child: Container(
      height: 46,

      decoration: BoxDecoration(
        color: const Color(0xffEEF2FF),
        borderRadius: BorderRadius.circular(16),
      ),

      padding: const EdgeInsets.symmetric(horizontal: 18),

      child: const Row(
        children: [

          Icon(
            Icons.menu_book_outlined,
            color: Color(0xff4F46E5),
          ),

          SizedBox(width: 12),

          Expanded(
            child: Text(
              "MLB111 – Cell Biology",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xff4F46E5),
              ),
            ),
          ),

          Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xff4F46E5),
          ),

        ],
      ),
    ),
  ),

const SizedBox(height: 24),

/// TODAY'S MISSION

  Text(
    "Today's Mission",
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Theme.of(context).textTheme.titleLarge?.color,
    ),
  ),

const SizedBox(height: 12),

Container(

padding: const EdgeInsets.all(14),

decoration: BoxDecoration(

  color: Theme.of(context).cardColor,

borderRadius:
BorderRadius.circular(22),

boxShadow: const [

BoxShadow(

blurRadius: 16,

color: Color(0x12000000),

),

],

),

child: Row(

crossAxisAlignment:
CrossAxisAlignment.start,

children: [

Container(

width: 70,

height: 70,

decoration: const BoxDecoration(

color: Color(0xffEEF2FF),

shape: BoxShape.circle,

),

child: const Icon(

Icons.biotech,

color: Color(0xff4F46E5),

size: 34,

),

),

const SizedBox(width: 18),

Expanded(

child: Column(

crossAxisAlignment:
CrossAxisAlignment.start,

children: [

  Text(
    "DNA Replication",
    style: TextStyle(

fontWeight:
  FontWeight.bold,

  fontSize: 22,

  ),

  ),

  const SizedBox(height: 8),

  Text(
    "Yesterday you struggled with DNA Replication. Let's review it for 5 minutes.",
    style: TextStyle(
      height: 1.4,
      fontSize: 16,
      color: Theme.of(context).textTheme.bodyMedium?.color,
    ),
  ),

  const SizedBox(height: 18),

  SizedBox(

  width: double.infinity,

  height: 42,

  child: ElevatedButton(

  onPressed: () {},

  style:
  ElevatedButton.styleFrom(

  backgroundColor:
  const Color(
  0xff4F46E5),

  elevation: 0,

  shape:
  RoundedRectangleBorder(

  borderRadius:
  BorderRadius.circular(
  30),

  ),

  ),

  child: const Text(

  "Resume Review",

  style: TextStyle(

  fontWeight:
  FontWeight.bold,

  fontSize: 16,

  color: Colors.white,

  ),

  ),

  ),

  ),

  ],

  ),

  ),

  ],

  ),

  ),

  const SizedBox(height: 18),
  /// TODAY'S TASKS

  Text(
    "Today's Tasks",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).textTheme.titleLarge?.color,
    ),
  ),

  const SizedBox(height: 12),

  _taskTile(
    context,
    icon: Icons.check_circle,
  iconColor: Color(0xff22C55E),
  iconBackground: Color(0xffECFDF3),
  title: "Explain DNA Replication to AI",
  time: "8 min",
  ),

  const SizedBox(height: 10),

  _taskTile(
    context,
    icon: Icons.description_outlined,
  iconColor: Color(0xff2563EB),
  iconBackground: Color(0xffEFF6FF),
  title: "Practice 3 Exam Questions",
  time: "10 min",
  ),

  const SizedBox(height: 10),

  _taskTile(
    context,
    icon: Icons.adjust,
  iconColor: Color(0xffF59E0B),
  iconBackground: Color(0xffFFFBEB),
  title: "Review Lysosomes",
  time: "5 min",
  ),

  const SizedBox(height: 18),

  /// TODAY'S PROGRESS

  const Text(
  "Today's Progress",
  style: TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
  ),
  ),

  const SizedBox(height: 12),

  Container(
  padding: const EdgeInsets.all(12),
  decoration: BoxDecoration(
    color: Theme.of(context).cardColor,
  borderRadius: BorderRadius.circular(18),
  boxShadow: const [
  BoxShadow(
  blurRadius: 14,
  color: Color(0x12000000),
  ),
  ],
  ),

  child: Column(
  children: [

  Row(
  children: [

  Expanded(
  child: ClipRRect(
  borderRadius:
  BorderRadius.circular(20),
  child:
  const LinearProgressIndicator(
  value: 0.72,
  minHeight: 8,
  backgroundColor:
  Color(0xffE5E7EB),
  color: Color(0xff4F46E5),
  ),
  ),
  ),

  const SizedBox(width: 18),

    Text(
      "72%",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    ),

  ],
  ),

  const SizedBox(height: 8),

    Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Overall Module Mastery",
        style: TextStyle(
          color: Theme.of(context).textTheme.bodyMedium?.color,
        ),
      ),
    ),

  ],
  ),
  ),

  const SizedBox(height: 18),

  /// CONCEPT MASTERY

  Text(
    "Concept Mastery",
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Theme.of(context).textTheme.titleLarge?.color,
    ),
  ),

  const SizedBox(height: 12),

  _masteryRow(
  "DNA Replication",
  82,
  Colors.deepPurple,
  ),

  const SizedBox(height: 10),

  _masteryRow(
  "Cell Membrane",
  95,
  Colors.green,
  ),

  const SizedBox(height: 10),

  _masteryRow(
  "Photosynthesis",
  61,
  Colors.orange,
  ),

  ],
  ),
  ),
  ),
  ),
  );
}

  Widget _taskTile(
      BuildContext context, {
  required IconData icon,
  required Color iconColor,
  required Color iconBackground,
  required String title,
  required String time,
}) {
  return InkWell(
    onTap: () {},
    borderRadius: BorderRadius.circular(18),
    child: Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            blurRadius: 14,
            color: Color(0x12000000),
          ),
        ],
      ),
      child: Row(
        children: [

          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: iconBackground,
              borderRadius:
              BorderRadius.circular(16),
            ),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  time,
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyMedium?.color,
                  ),
                ),

              ],
            ),
          ),

          const Icon(
            Icons.chevron_right,
            color: Color(0xff4F46E5),
          ),

        ],
      ),
    ),
  );
}

Widget _masteryRow(
    String topic,
    int percent,
    Color color,
    ) {
  return Row(
    children: [

      SizedBox(
        width: 145,
        child: Text(
          topic,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),

      Expanded(
        child: ClipRRect(
          borderRadius:
          BorderRadius.circular(20),
          child: LinearProgressIndicator(
            value: percent / 100,
            minHeight: 5,
            backgroundColor:
            const Color(0xffE5E7EB),
            color: color,
          ),
        ),
      ),

      const SizedBox(width: 14),

      SizedBox(
        width: 42,
        child: Text(
          "$percent%",
          textAlign: TextAlign.end,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

    ],
  );
}
  String _greeting() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return "Good Morning";
    }

    if (hour < 17) {
      return "Good Afternoon";
    }

    return "Good Evening";
  }
}