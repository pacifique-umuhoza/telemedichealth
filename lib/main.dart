import 'package:flutter/material.dart';

void main() {
  runApp(const EYEsHealthApp());
}

// UBWOKO BW'INDIMI N'AMAGAMBO YAZO (TRANSLATIONS DICTIONARY)
class AppStrings {
  static const Map<String, Map<String, String>> localizedValues = {
    'rw': {
      'title': 'EYEsHealth',
      'greeting': 'Muraho, Marie! 🇷🇼',
      'symptomTitle': 'Sanisha ubuzima bwawe!',
      'symptomHint': 'Mbwira uko wiyumva...',
      'chipHeadache': 'Umutwe undya',
      'chipCough': 'Gukorora',
      'chipFever': 'Umuriro',
      'checkButton': 'Sanisha',
      'upcomingConsultations': 'Ibiganiro biri mbere',
      'doctorName': 'Muganga Jeanine',
      'doctorSpecialty': '(Inzobere)',
      'startCall': 'Tangira Ikoraniro',
      'medications': 'Imiti yawe',
      'buyMedication': 'Gura Imiti',
      'navHome': 'Ahabanza',
      'navChats': 'Ibiganiro',
      'navMeds': 'Imiti',
      'navStats': 'Amakuru',
      'navProfile': 'Konti',
    },
    'en': {
      'title': 'EYEsHealth',
      'greeting': 'Hello, Marie! 🇬🇧',
      'symptomTitle': 'Check your health!',
      'symptomHint': 'Tell me how you feel...',
      'chipHeadache': 'Headache',
      'chipCough': 'Cough',
      'chipFever': 'Fever',
      'checkButton': 'Check',
      'upcomingConsultations': 'Upcoming Consultations',
      'doctorName': 'Dr. Jeanine',
      'doctorSpecialty': '(Specialist)',
      'startCall': 'Start Video Call',
      'medications': 'Your Medications',
      'buyMedication': 'Buy Meds',
      'navHome': 'Home',
      'navChats': 'Chats',
      'navMeds': 'Meds',
      'navStats': 'Stats',
      'navProfile': 'Profile',
    },
    'sw': {
      'title': 'EYEsHealth',
      'greeting': 'Habari, Marie! 🇹🇿',
      'symptomTitle': 'Kagua afya yako!',
      'symptomHint': 'Niambie jinsi unavyojisikia...',
      'chipHeadache': 'Maumivu ya kichwa',
      'chipCough': 'Kikohozi',
      'chipFever': 'Homa',
      'checkButton': 'Kagua',
      'upcomingConsultations': 'Mashauriano Yajayo',
      'doctorName': 'Dk. Jeanine',
      'doctorSpecialty': '(Bingwa)',
      'startCall': 'Anza Simu ya Video',
      'medications': 'Dawa Zako',
      'buyMedication': 'Nunua Dawa',
      'navHome': 'Nyumbani',
      'navChats': 'Mazungumzo',
      'navMeds': 'Dawa',
      'navStats': 'Takwimu',
      'navProfile': 'Wasifu',
    },
    'fr': {
      'title': 'EYEsHealth',
      'greeting': 'Bonjour, Marie ! 🇫🇷',
      'symptomTitle': 'Vérifiez votre santé !',
      'symptomHint': 'Dites-moi comment vous vous sentez...',
      'chipHeadache': 'Mal de tête',
      'chipCough': 'Toux',
      'chipFever': 'Fièvre',
      'checkButton': 'Vérifier',
      'upcomingConsultations': 'Consultations à venir',
      'doctorName': 'Dr Jeanine',
      'doctorSpecialty': '(Spécialiste)',
      'startCall': 'Démarrer l’appel',
      'medications': 'Vos Médicaments',
      'buyMedication': 'Acheter',
      'navHome': 'Accueil',
      'navChats': 'Discussions',
      'navMeds': 'Médicaments',
      'navStats': 'Statistiques',
      'navProfile': 'Profil',
    },
  };

  static String get(String lang, String key) {
    return localizedValues[lang]?[key] ?? localizedValues['rw']?[key] ?? key;
  }
}

class EYEsHealthApp extends StatefulWidget {
  const EYEsHealthApp({Key? key}) : super(key: key);

  @override
  State<EYEsHealthApp> createState() => _EYEsHealthAppState();
}

class _EYEsHealthAppState extends State<EYEsHealthApp> {
  String _currentLang = 'rw'; // Ururimi rw'ibanze ni Ikinyarwanda

  void _changeLanguage(String? newLang) {
    if (newLang != null) {
      setState(() {
        _currentLang = newLang;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EYEsHealth',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: const Color(0xFFF8F9FA),
      ),
      home: HomeScreen(
        currentLang: _currentLang,
        onLanguageChanged: _changeLanguage,
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  final String currentLang;
  final ValueChanged<String?> onLanguageChanged;

  const HomeScreen({
    Key? key,
    required this.currentLang,
    required this.onLanguageChanged,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    String lang = widget.currentLang;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row: Logo, Title & Language Switcher
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.health_and_safety, color: Colors.teal, size: 32),
                      const SizedBox(width: 8),
                      Text(
                        AppStrings.get(lang, 'title'),
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0F2C59),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      // Language Selector Dropdown
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.teal.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: DropdownButton<String>(
                          value: lang,
                          underline: const SizedBox(),
                          icon: const Icon(Icons.language, color: Colors.teal, size: 20),
                          items: const [
                            DropdownMenuItem(value: 'rw', child: Text('Kinyarwanda', style: TextStyle(fontSize: 12))),
                            DropdownMenuItem(value: 'en', child: Text('English', style: TextStyle(fontSize: 12))),
                            DropdownMenuItem(value: 'sw', child: Text('Kiswahile', style: TextStyle(fontSize: 12))),
                            DropdownMenuItem(value: 'fr', child: Text('Français', style: TextStyle(fontSize: 12))),
                          ],
                          onChanged: widget.onLanguageChanged,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Greeting
              Text(
                AppStrings.get(lang, 'greeting'),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 16),

              // AI Symptom Checker Card
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.get(lang, 'symptomTitle'),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 12),
                      TextField(
                        decoration: InputDecoration(
                          hintText: AppStrings.get(lang, 'symptomHint'),
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Wrap(
                        spacing: 8.0,
                        children: [
                          _buildChip(AppStrings.get(lang, 'chipHeadache')),
                          _buildChip(AppStrings.get(lang, 'chipCough')),
                          _buildChip(AppStrings.get(lang, 'chipFever')),
                        ],
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
                          child: Text(
                            AppStrings.get(lang, 'checkButton'),
                            style: const TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Upcoming Consultation Section
              Text(
                AppStrings.get(lang, 'upcomingConsultations'),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 24,
                            child: Icon(Icons.person, color: Colors.white),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.get(lang, 'doctorName'),
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                AppStrings.get(lang, 'doctorSpecialty'),
                                style: const TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                '14:00, 15 Oct',
                                style: TextStyle(fontSize: 12, color: Colors.teal),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[700],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          child: Text(
                            AppStrings.get(lang, 'startCall'),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Medications Section
              Text(
                AppStrings.get(lang, 'medications'),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Paracetamol',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '10-15 Oct',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal[50],
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          AppStrings.get(lang, 'buyMedication'),
                          style: const TextStyle(color: Colors.teal),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.home), label: AppStrings.get(lang, 'navHome')),
          BottomNavigationBarItem(icon: const Icon(Icons.chat), label: AppStrings.get(lang, 'navChats')),
          BottomNavigationBarItem(icon: const Icon(Icons.medical_services), label: AppStrings.get(lang, 'navMeds')),
          BottomNavigationBarItem(icon: const Icon(Icons.analytics), label: AppStrings.get(lang, 'navStats')),
          BottomNavigationBarItem(icon: const Icon(Icons.person), label: AppStrings.get(lang, 'navProfile')),
        ],
      ),
    );
  }

  Widget _buildChip(String label) {
    return Chip(
      label: Text(label, style: const TextStyle(fontSize: 12)),
      backgroundColor: Colors.teal.withOpacity(0.1),
      labelStyle: const TextStyle(color: Colors.teal),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: Colors.teal.withOpacity(0.3)),
      ),
    );
  }
}