import 'package:flutter/material.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

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

              // Title row
              Row(
                children: [
                  const Text('Performance Stats',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                  const Spacer(),
                  Image.asset('assets/images/icon_chamber.png',
                      width: 48, height: 48),
                ],
              ),
              const SizedBox(height: 10),

              // Chamber + Overview badges
              Row(
                children: [
                  _goldBadge('Chamber'),
                  const SizedBox(width: 8),
                  _goldBadge('Overview'),
                ],
              ),
              const SizedBox(height: 16),

              // Overview stat cards row 1
              Row(
                children: [
                  _statCard('Matches', '448'),
                  const SizedBox(width: 8),
                  _statCard('Winrate', '50.0%'),
                  const SizedBox(width: 8),
                  _statCard('K/D', '1.33'),
                ],
              ),
              const SizedBox(height: 8),

              // Overview stat cards row 2
              Row(
                children: [
                  _statCard('ACS', '209.8'),
                  const SizedBox(width: 8),
                  _statCard('ADR', '139.2'),
                  const SizedBox(width: 8),
                  _statCardGreen('DDΔ', '+7'),
                ],
              ),
              const SizedBox(height: 20),

              // Combat section
              _sectionHeader('Combat'),
              const SizedBox(height: 12),
              _statBar('Headshot %', 0.26, '26%'),
              const SizedBox(height: 10),
              _statBar('Body %', 0.60, '60%'),
              const SizedBox(height: 10),
              _statBar('Legs %', 0.04, '4%'),
              const SizedBox(height: 14),

              // Lifetime Clutches card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A1A),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color(0xFFC8A84B), width: 0.5),
                ),
                child: const Column(
                  children: [
                    Text('Lifetime Clutches',
                        style: TextStyle(
                            color: Color(0xFF888888), fontSize: 12)),
                    SizedBox(height: 4),
                    Text('597',
                        style: TextStyle(
                            color: Color(0xFFC8A84B),
                            fontSize: 32,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Per Match section
              _sectionHeader('Per Match'),
              const SizedBox(height: 12),
              Row(
                children: [
                  _statCard('K/D', '1.20'),
                  const SizedBox(width: 8),
                  _statCard('Assists', '4'),
                  const SizedBox(width: 8),
                  _statCard('DMG/Round', '160'),
                ],
              ),
              const SizedBox(height: 20),

              // Map Performance section
              Row(
                children: [
                  _sectionHeader('Map Performance'),
                  const SizedBox(width: 8),
                  Image.asset('assets/images/icon_competitive.png',
                      width: 24, height: 24),
                ],
              ),
              const SizedBox(height: 12),

              // Map list card
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A1A),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color(0xFF2A2A2A), width: 0.5),
                ),
                child: Column(
                  children: [
                    _mapRow('Abyss', '55%', false),
                    _mapRow('Ascent ★', '71%', true),
                    _mapRow('Bind', '54%', false),
                    _mapRow('Breeze', '63%', false),
                    _mapRow('Corrode', '52%', false),
                    _mapRow('Fracture', '67%', false),
                    _mapRow('Haven', '53%', false),
                    _mapRow('Icebox', '64%', false),
                    _mapRow('Lotus', '63%', false),
                    _mapRow('Pearl', '59%', false),
                    _mapRow('Split', '53%', false),
                    _mapRow('Sunset', '50%', false, isLast: true),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Vs Other Agents section
              _sectionHeader('Vs Other Agents'),
              const SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A1A),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color(0xFF2A2A2A), width: 0.5),
                ),
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          Text('Chamber',
                              style: TextStyle(
                                  color: Color(0xFFC8A84B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 6),
                          Text('1.33',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 4),
                          Text('K/D Ratio',
                              style: TextStyle(
                                  color: Color(0xFF888888),
                                  fontSize: 11)),
                        ],
                      ),
                    ),
                    Container(
                        width: 0.5,
                        height: 60,
                        color: const Color(0xFF2A2A2A)),
                    const SizedBox(width: 8),
                    const Text('VS',
                        style: TextStyle(
                            color: Color(0xFF555555), fontSize: 12)),
                    const SizedBox(width: 8),
                    Container(
                        width: 0.5,
                        height: 60,
                        color: const Color(0xFF2A2A2A)),
                    Expanded(
                      child: Column(
                        children: const [
                          Text('Yoru',
                              style: TextStyle(
                                  color: Color(0xFF888888),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 6),
                          Text('1.29',
                              style: TextStyle(
                                  color: Color(0xFF888888),
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 4),
                          Text('K/D Ratio',
                              style: TextStyle(
                                  color: Color(0xFF888888),
                                  fontSize: 11)),
                        ],
                      ),
                    ),
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

  Widget _goldBadge(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: const Color(0xFFC8A84B), width: 1),
      ),
      child: Text(text,
          style: const TextStyle(
              color: Color(0xFFC8A84B),
              fontSize: 12,
              fontWeight: FontWeight.bold)),
    );
  }

  Widget _statCard(String label, String value) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF1A1A1A),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFF2A2A2A), width: 0.5),
        ),
        child: Column(
          children: [
            Text(label,
                style: const TextStyle(
                    color: Color(0xFF888888), fontSize: 10)),
            const SizedBox(height: 4),
            Text(value,
                style: const TextStyle(
                    color: Color(0xFFC8A84B),
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget _statCardGreen(String label, String value) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF1A1A1A),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFF2A2A2A), width: 0.5),
        ),
        child: Column(
          children: [
            Text(label,
                style: const TextStyle(
                    color: Color(0xFF888888), fontSize: 10)),
            const SizedBox(height: 4),
            Text(value,
                style: const TextStyle(
                    color: Color(0xFF4CAF50),
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget _statBar(String label, double value, String display) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label,
                style: const TextStyle(
                    color: Color(0xFF888888), fontSize: 12)),
            Text(display,
                style: const TextStyle(
                    color: Color(0xFFC8A84B), fontSize: 12)),
          ],
        ),
        const SizedBox(height: 6),
        ClipRRect(
          borderRadius: BorderRadius.circular(3),
          child: LinearProgressIndicator(
            value: value,
            minHeight: 6,
            backgroundColor: const Color(0xFF1A1A1A),
            valueColor: const AlwaysStoppedAnimation<Color>(
                Color(0xFFC8A84B)),
          ),
        ),
      ],
    );
  }

  Widget _mapRow(String map, String winRate, bool isHighlight,
      {bool isLast = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: isHighlight
            ? const Color(0xFF2A2010)
            : Colors.transparent,
        border: isLast
            ? null
            : const Border(
                bottom: BorderSide(
                    color: Color(0xFF2A2A2A), width: 0.5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(map,
              style: TextStyle(
                  color: isHighlight
                      ? const Color(0xFFC8A84B)
                      : const Color(0xFF888888),
                  fontSize: 13)),
          Text(winRate,
              style: TextStyle(
                  color: isHighlight
                      ? const Color(0xFFFFD700)
                      : const Color(0xFFC8A84B),
                  fontSize: 13,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}