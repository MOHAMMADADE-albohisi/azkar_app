import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  String _Deker = 'أسغفر الله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          'مسبحة الإستغفار',
          style: GoogleFonts.arefRuqaa(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/info_screen',
                  arguments: <String, dynamic>{});
            },
            icon: const Icon(Icons.info),
            color: Colors.black54,
          ),
          PopupMenuButton<String>(
            onSelected: (String value) {
              if (_Deker != value) {
                setState(
                  () {
                    _Deker = value;
                    _counter = 0;
                  },
                );
              }
            },
            offset: const Offset(0, 45),
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                color: Color(0xFFDFBB9D),
                width: 1,
              ),
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 'أسغفر الله',
                  height: 20,
                  child: Text(
                    'أستغفر الله ',
                    style: GoogleFonts.arefRuqaa(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const PopupMenuDivider(),
                PopupMenuItem(
                  value: 'الحمد الله',
                  height: 20,
                  child: Text(
                    'الحمد لله  ',
                    style: GoogleFonts.arefRuqaa(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const PopupMenuDivider(),
                PopupMenuItem(
                  value: 'الله أكبر ',
                  height: 20,
                  child: Text(
                    'الله أكبر  ',
                    style: GoogleFonts.arefRuqaa(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFDFBB9D),
            Color(0xFFF7E2D6),
          ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFE4DCCF),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://modo3.com/thumbs/fit630x300/22127/1441132438/%D9%85%D8%A7_%D8%AD%D9%83%D9%85_%D8%A7%D8%B3%D8%AA%D8%AE%D8%AF%D8%A7%D9%85_%D8%A7%D9%84%D9%85%D8%B3%D8%A8%D8%AD%D8%A9.jpg',
                    ),
                  ),
                  //عمل الظل على الشكل
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 6,
                      offset: Offset(0, 6),
                    ),
                  ]),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              height: 80,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 6,
                    offset: Offset(0, 6),
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _Deker,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.arefRuqaa(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 80,
                    color: const Color(0xFFF9F9C5),
                    alignment: Alignment.center,
                    child: Text(
                      _counter.toString(),
                      style: GoogleFonts.arefRuqaa(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(
                          () => {++_counter},
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFFFDEB4),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        'تسبيح',
                        style: GoogleFonts.arefRuqaa(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() => {
                              _counter = 0,
                            });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFFFF9CA),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                            bottomEnd: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        'تصفير',
                        style: GoogleFonts.arefRuqaa(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter += 1;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
