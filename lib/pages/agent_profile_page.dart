import 'package:flutter/material.dart';

class AgentProfilePage extends StatelessWidget {
  const AgentProfilePage({super.key});

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
              const Text(
                'VALORANT',
                style: TextStyle(
                  color: Color(0xFFC8A84B),
                  fontSize: 11,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 6),
              Container(
                width: 32,
                height: 2,
                decoration: BoxDecoration(
                  color: const Color(0xFFC8A84B),
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
              const SizedBox(height: 16),

              // Page title
              const Text(
                'Agent Profile',
                style: TextStyle(
                  color: Color(0xFFC8A84B),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              // Chamber name + portrait + info panel row
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left: Chamber ID card image
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Chamber',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFFC8A84B),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(9),
                            child: Image.asset(
                              'assets/images/chamber_ID_Card.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),

                  // Right: Info panel
                  Expanded(
                       flex: 5,
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                        const SizedBox(height: 46),
                        _sectionHeader('Personal Profile'),
                        const SizedBox(height: 6),
                        _infoRow('Name', 'Vincent Fabron'),
                        _infoRow('Country', 'France'),
                        const SizedBox(height: 10),
                        _sectionHeader('Protocol Profile'),
                        const SizedBox(height: 6),
                        _infoRow('Agent No.', '18'),
                        _infoRowWithIcon('Role', 'Sentinel', 'assets/images/icon_sentinel.png'),
                        _infoRow('Class', 'Human'),
                        const SizedBox(height: 10),
                        _sectionHeader('Development'),
                        const SizedBox(height: 6),
                        _infoRow('Codename', 'Deadeye'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Bio description card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A1A),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xFFC8A84B),
                    width: 0.5,
                  ),
                ),
                child: const Text(
                  'Well dressed and well armed, French weapons designer Chamber expels aggressors with deadly precision. He leverages his custom arsenal to hold the line and pick off enemies from afar, with a contingency built for every plan.',
                  style: TextStyle(
                    color: Color(0xFF888888),
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Abilities section
              const Text(
                'Abilities',
                style: TextStyle(
                  color: Color(0xFFC8A84B),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),

              Row(
                children: [
                  _abilityCard('C', 'assets/images/icon_trademark.png', 'Trademark'),
                  const SizedBox(width: 8),
                  _abilityCard('Q', 'assets/images/icon_headhunter.png', 'Headhunter'),
                  const SizedBox(width: 8),
                  _abilityCard('E', 'assets/images/icon_rendezvous.png', 'Rendezvous'),
                  const SizedBox(width: 8),
                  _abilityCard('R', 'assets/images/icon_tourdeforce.png', 'Tour De Force'),
                ],
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
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFC8A84B),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF0F0F0F),
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0xFF2A2A2A), width: 0.5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFF888888),
              fontSize: 11,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
  Widget _infoRowWithIcon(String label, String value, String iconPath) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Color(0xFF2A2A2A), width: 0.5),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,
            style: const TextStyle(
                color: Color(0xFF888888), fontSize: 11)),
        Row(
          children: [
            Image.asset(iconPath, width: 16, height: 16,
                color: Colors.white),
            const SizedBox(width: 4),
            Text(value,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    ),
  );
}

  Widget _abilityCard(String key, String iconPath, String name) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        decoration: BoxDecoration(
          color: const Color(0xFF1A1A1A),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color(0xFFC8A84B),
            width: 0.5,
          ),
        ),
        child: Column(
          children: [
            Text(
              key,
              style: const TextStyle(
                color: Color(0xFFC8A84B),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Image.asset(
              iconPath,
              width: 40,
              height: 40,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 6),
            Text(
              name,
              style: const TextStyle(
                color: Color(0xFF888888),
                fontSize: 9,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}