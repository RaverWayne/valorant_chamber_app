import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
              const Text('About',
                  style: TextStyle(
                      color: Color(0xFFC8A84B),
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 24),

              // Avatar circle
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFF1A1A1A),
                    border: Border.all(
                      color: const Color(0xFFC8A84B), width: 2),
                ),
                child: ClipOval(
                   child: Image.asset(
                      'assets/images/icon_shishiba.png',
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ),

              // Name and school
              const Center(
                child: Text('Raver Wayne R. Bondoc',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 4),
              const Center(
                child: Text('PUP Binan · BSIT 3-1',
                    style: TextStyle(
                        color: Color(0xFF888888), fontSize: 13)),
              ),
              const SizedBox(height: 24),

              // Player Info section
              _sectionHeader('Player Info'),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A1A),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color(0xFF2A2A2A), width: 0.5),
                ),
                child: Column(
                  children: [
                    _infoRow('IGN', 'Juro#雲隠れ', isFirst: true),
                    _infoRowGold('Main Agent', 'Chamber'),
                    _infoRow('Rank', 'Diamond I'),
                    _infoRow('Matches', '448'),
                    _infoRow('K/D', '1.33', isLast: true),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Chamber Quotes section
              _sectionHeader('Chamber Quotes'),
              const SizedBox(height: 10),

              _quoteCard(
                '"If you\'re not doing well, keep trying. We must keep up appearances."'),
              const SizedBox(height: 10),
              _quoteCard(
                '"This killing is terrible business but I always say if I must do something, be the best."'),
              const SizedBox(height: 24),

              // Built with card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                   vertical: 16, horizontal: 14),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A1A),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color(0xFFC8A84B), width: 0.5),
                ),
                child: const Column(
                  children: [
                    Text('Built with Flutter · Designed in Figma',
                        style: TextStyle(
                            color: Color(0xFF888888), fontSize: 11),
                        textAlign: TextAlign.center),
                    SizedBox(height: 4),
                    Text('Flutter Activity #1 · 2026',
                        style: TextStyle(
                            color: Color(0xFFC8A84B),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
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

  Widget _infoRow(String label, String value,
      {bool isFirst = false, bool isLast = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        border: isLast
            ? null
            : const Border(
                bottom:
                    BorderSide(color: Color(0xFF2A2A2A), width: 0.5)),
        borderRadius: isFirst
            ? const BorderRadius.vertical(top: Radius.circular(10))
            : isLast
                ? const BorderRadius.vertical(
                    bottom: Radius.circular(10))
                : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: const TextStyle(
                  color: Color(0xFF888888), fontSize: 13)),
          Text(value,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _infoRowGold(String label, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: const BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Color(0xFF2A2A2A), width: 0.5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: const TextStyle(
                  color: Color(0xFF888888), fontSize: 13)),
          Text(value,
              style: const TextStyle(
                  color: Color(0xFFC8A84B),
                  fontSize: 13,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _quoteCard(String quote) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 3,
          height: 70,
          decoration: BoxDecoration(
            color: const Color(0xFFC8A84B),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
                vertical: 12, horizontal: 10),
            decoration: BoxDecoration(
              color: const Color(0xFF1A1A1A),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(quote,
                    style: const TextStyle(
                        color: Color(0xFFC8A84B),
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                        height: 1.5)),
                const SizedBox(height: 4),
                const Text('— Chamber, VALORANT',
                    style: TextStyle(
                        color: Color(0xFF555555), fontSize: 10)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}