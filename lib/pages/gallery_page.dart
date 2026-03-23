import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),

              // VALORANT topbar
              const Text('VALORANT',
                  style: TextStyle(
                    color: Color(0xFFC8A84B),
                    fontSize: 11,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(height: 6),
              Container(
                  width: 32,
                  height: 2,
                  decoration: BoxDecoration(
                      color: const Color(0xFFC8A84B),
                      borderRadius: BorderRadius.circular(1))),
              const SizedBox(height: 16),

              // Page title
              const Text('Gallery',
                  style: TextStyle(
                      color: Color(0xFFC8A84B),
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              const Text('Skins & Maps',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),

              // Featured Map section
              _sectionHeader('Featured Map'),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color(0xFFC8A84B), width: 1),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: Image.asset(
                    'assets/images/map_breeze.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // My Skins section
              _sectionHeader('My Skins'),
              const SizedBox(height: 12),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.4,
                children: [
                  _skinCard('assets/images/skin_forsaken_vandal.png',
                      'Forsaken', 'Vandal'),
                  _skinCard('assets/images/skin_ayakashi_phantom.png',
                      'Ayakashi', 'Phantom'),
                  _skinCard('assets/images/skin_kogitsune_knife.png',
                      'Kogitsune', 'Knife'),
                  _skinCard('assets/images/skin_ayakashi_ghost.png',
                      'Ayakashi', 'Ghost'),
                ],
              ),
              const SizedBox(height: 20),

              // Maps section
              _sectionHeader('Maps'),
              const SizedBox(height: 12),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1.4,
                children: [
                  _mapCard('assets/images/map_abyss.png', 'Abyss'),
                  _mapCard('assets/images/map_ascent.png', 'Ascent'),
                  _mapCard('assets/images/map_bind.png', 'Bind'),
                  _mapCard('assets/images/map_fracture.png', 'Fracture'),
                  _mapCard('assets/images/map_lotus.png', 'Lotus'),
                  _mapCard('assets/images/map_sunset.png', 'Sunset'),
                ],
              ),
              const SizedBox(height: 20),

              // Highlight section
              _sectionHeader('Highlight'),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A1A),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color(0xFF2A2A2A), width: 0.5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: const Color(0xFFC8A84B), width: 1.5),
                        color: const Color(0xFFC8A84B22),
                      ),
                      child: const Icon(Icons.play_arrow,
                          color: Color(0xFFC8A84B), size: 28),
                    ),
                    const SizedBox(height: 8),
                    const Text('Best Clutch Moment',
                        style: TextStyle(
                            color: Color(0xFF888888), fontSize: 12)),
                    const Text('Coming Soon',
                        style: TextStyle(
                            color: Color(0xFF555555), fontSize: 10)),
                  ],
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sectionHeader(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
      decoration: BoxDecoration(
        color: const Color(0xFFC8A84B),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(title,
          style: const TextStyle(
              color: Color(0xFF0F0F0F),
              fontSize: 13,
              fontWeight: FontWeight.bold)),
    );
  }

  Widget _skinCard(String imagePath, String collection, String weapon) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color: const Color(0xFFC8A84B), width: 0.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset(imagePath, fit: BoxFit.contain),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Column(
              children: [
                Text(collection,
                    style: const TextStyle(
                        color: Color(0xFFC8A84B),
                        fontSize: 11,
                        fontWeight: FontWeight.bold)),
                Text(weapon,
                    style: const TextStyle(
                        color: Color(0xFF888888), fontSize: 10)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _mapCard(String imagePath, String mapName) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: const Color(0xFF2A2A2A), width: 0.5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(imagePath, fit: BoxFit.cover),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 3, horizontal: 6),
                color: const Color(0xCC0F0F0F),
                child: Text(mapName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center),
              ),
            ),
          ],
        ),
      ),
    );
  }
}