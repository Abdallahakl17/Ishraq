class SurahModel {
  final String nameSuraAr;
  final String nameSuraEn;
  final String numSuraRevres;
  final int numSuraIndex;

  const SurahModel({
    required this.numSuraIndex,
    required this.numSuraRevres,
    required this.nameSuraAr,
    required this.nameSuraEn,
  });
  static List<SurahModel> suras = [
    SurahModel(
      numSuraIndex: 1,
      numSuraRevres: '7',
      nameSuraAr: 'الفاتحه',
      nameSuraEn: 'Al-Fatiha',
    ),
    SurahModel(
      numSuraIndex: 2,
      numSuraRevres: '286',
      nameSuraAr: 'البقرة',
      nameSuraEn: 'Al-Baqarah',
    ),
    SurahModel(
      numSuraIndex: 3,
      numSuraRevres: '200',
      nameSuraAr: 'آل عمران',
      nameSuraEn: 'Aal-E-Imran',
    ),
    SurahModel(
      numSuraIndex: 4,
      numSuraRevres: '176',
      nameSuraAr: 'النساء',
      nameSuraEn: 'An-Nisa\'',
    ),
    SurahModel(
      numSuraIndex: 5,
      numSuraRevres: '120',
      nameSuraAr: 'المائدة',
      nameSuraEn: 'Al-Ma\'idah',
    ),
    SurahModel(
      numSuraIndex: 6,
      numSuraRevres: '165',
      nameSuraAr: 'الأنعام',
      nameSuraEn: 'Al-An\'am',
    ),
    SurahModel(
      numSuraIndex: 7,
      numSuraRevres: '206',
      nameSuraAr: 'الأعراف',
      nameSuraEn: 'Al-A\'raf',
    ),
    SurahModel(
      numSuraIndex: 8,
      numSuraRevres: '75',
      nameSuraAr: 'الأنفال',
      nameSuraEn: 'Al-Anfal',
    ),
    SurahModel(
      numSuraIndex: 9,
      numSuraRevres: '129',
      nameSuraAr: 'التوبة',
      nameSuraEn: 'At-Tawbah',
    ),
    SurahModel(
      numSuraIndex: 10,
      numSuraRevres: '109',
      nameSuraAr: 'يونس',
      nameSuraEn: 'Yunus',
    ),
    SurahModel(
      numSuraIndex: 11,
      numSuraRevres: '123',
      nameSuraAr: 'هود',
      nameSuraEn: 'Hud',
    ),
    SurahModel(
      numSuraIndex: 12,
      numSuraRevres: '111',
      nameSuraAr: 'يوسف',
      nameSuraEn: 'Yusuf',
    ),
    SurahModel(
      numSuraIndex: 13,
      numSuraRevres: '43',
      nameSuraAr: 'الرعد',
      nameSuraEn: 'Ar-Ra\'d',
    ),
    SurahModel(
      numSuraIndex: 14,
      numSuraRevres: '52',
      nameSuraAr: 'إبراهيم',
      nameSuraEn: 'Ibrahim',
    ),
    SurahModel(
      numSuraIndex: 15,
      numSuraRevres: '99',
      nameSuraAr: 'الحجر',
      nameSuraEn: 'Al-Hijr',
    ),
    SurahModel(
      numSuraIndex: 16,
      numSuraRevres: '128',
      nameSuraAr: 'النحل',
      nameSuraEn: 'An-Nahl',
    ),
    SurahModel(
      numSuraIndex: 17,
      numSuraRevres: '111',
      nameSuraAr: 'الإسراء',
      nameSuraEn: 'Al-Isra',
    ),
    SurahModel(
      numSuraIndex: 18,
      numSuraRevres: '110',
      nameSuraAr: 'الكهف',
      nameSuraEn: 'Al-Kahf',
    ),
    SurahModel(
      numSuraIndex: 19,
      numSuraRevres: '98',
      nameSuraAr: 'مريم',
      nameSuraEn: 'Maryam',
    ),
    SurahModel(
      numSuraIndex: 20,
      numSuraRevres: '135',
      nameSuraAr: 'طه',
      nameSuraEn: 'Ta-Ha',
    ),
    SurahModel(
      numSuraIndex: 21,
      numSuraRevres: '112',
      nameSuraAr: 'الأنبياء',
      nameSuraEn: 'Al-Anbiya',
    ),
    SurahModel(
      numSuraIndex: 22,
      numSuraRevres: '78',
      nameSuraAr: 'الحج',
      nameSuraEn: 'Al-Hajj',
    ),
    SurahModel(
      numSuraIndex: 23,
      numSuraRevres: '118',
      nameSuraAr: 'المؤمنون',
      nameSuraEn: 'Al-Mu\'minun',
    ),
    SurahModel(
      numSuraIndex: 24,
      numSuraRevres: '64',
      nameSuraAr: 'النّور',
      nameSuraEn: 'An-Nur',
    ),
    SurahModel(
      numSuraIndex: 25,
      numSuraRevres: '77',
      nameSuraAr: 'الفرقان',
      nameSuraEn: 'Al-Furqan',
    ),
    SurahModel(
      numSuraIndex: 26,
      numSuraRevres: '227',
      nameSuraAr: 'الشعراء',
      nameSuraEn: 'Ash-Shu\'ara',
    ),
    SurahModel(
      numSuraIndex: 27,
      numSuraRevres: '93',
      nameSuraAr: 'النّمل',
      nameSuraEn: 'An-Naml',
    ),
    SurahModel(
      numSuraIndex: 28,
      numSuraRevres: '88',
      nameSuraAr: 'القصص',
      nameSuraEn: 'Al-Qasas',
    ),
    SurahModel(
      numSuraIndex: 29,
      numSuraRevres: '69',
      nameSuraAr: 'العنكبوت',
      nameSuraEn: 'Al-Ankabut',
    ),
    SurahModel(
      numSuraIndex: 30,
      numSuraRevres: '60',
      nameSuraAr: 'الرّوم',
      nameSuraEn: 'Ar-Rum',
    ),
    SurahModel(
      numSuraIndex: 31,
      numSuraRevres: '34',
      nameSuraAr: 'لقمان',
      nameSuraEn: 'Luqman',
    ),
    SurahModel(
      numSuraIndex: 32,
      numSuraRevres: '30',
      nameSuraAr: 'السجدة',
      nameSuraEn: 'As-Sajda',
    ),
    SurahModel(
      numSuraIndex: 33,
      numSuraRevres: '73',
      nameSuraAr: 'الأحزاب',
      nameSuraEn: 'Al-Ahzab',
    ),
    SurahModel(
      numSuraIndex: 34,
      numSuraRevres: '54',
      nameSuraAr: 'سبأ',
      nameSuraEn: 'Saba',
    ),
    SurahModel(
      numSuraIndex: 35,
      numSuraRevres: '45',
      nameSuraAr: 'فاطر',
      nameSuraEn: 'Fatir',
    ),
    SurahModel(
      numSuraIndex: 36,
      numSuraRevres: '83',
      nameSuraAr: 'يس',
      nameSuraEn: 'Ya-Sin',
    ),
    SurahModel(
      numSuraIndex: 37,
      numSuraRevres: '182',
      nameSuraAr: 'الصافات',
      nameSuraEn: 'As-Saffat',
    ),
    SurahModel(
      numSuraIndex: 38,
      numSuraRevres: '88',
      nameSuraAr: 'ص',
      nameSuraEn: 'Sad',
    ),
    SurahModel(
      numSuraIndex: 39,
      numSuraRevres: '75',
      nameSuraAr: 'الزمر',
      nameSuraEn: 'Az-Zumar',
    ),
    SurahModel(
      numSuraIndex: 40,
      numSuraRevres: '85',
      nameSuraAr: 'غافر',
      nameSuraEn: 'Ghafir',
    ),
    SurahModel(
      numSuraIndex: 41,
      numSuraRevres: '54',
      nameSuraAr: 'فصّلت',
      nameSuraEn: 'Fussilat',
    ),
    SurahModel(
      numSuraIndex: 42,
      numSuraRevres: '53',
      nameSuraAr: 'الشورى',
      nameSuraEn: 'Ash-Shura',
    ),
    SurahModel(
      numSuraIndex: 43,
      numSuraRevres: '89',
      nameSuraAr: 'الزخرف',
      nameSuraEn: 'Az-Zukhruf',
    ),
    SurahModel(
      numSuraIndex: 44,
      numSuraRevres: '59',
      nameSuraAr: 'الدّخان',
      nameSuraEn: 'Ad-Dukhan',
    ),
    SurahModel(
      numSuraIndex: 45,
      numSuraRevres: '37',
      nameSuraAr: 'الجاثية',
      nameSuraEn: 'Al-Jathiya',
    ),
    SurahModel(
      numSuraIndex: 46,
      numSuraRevres: '35',
      nameSuraAr: 'الأحقاف',
      nameSuraEn: 'Al-Ahqaf',
    ),
    SurahModel(
      numSuraIndex: 47,
      numSuraRevres: '38',
      nameSuraAr: 'محمد',
      nameSuraEn: 'Muhammad',
    ),
    SurahModel(
      numSuraIndex: 48,
      numSuraRevres: '29',
      nameSuraAr: 'الفتح',
      nameSuraEn: 'Al-Fath',
    ),
    SurahModel(
      numSuraIndex: 49,
      numSuraRevres: '18',
      nameSuraAr: 'الحجرات',
      nameSuraEn: 'Al-Hujurat',
    ),
    SurahModel(
      numSuraIndex: 50,
      numSuraRevres: '45',
      nameSuraAr: 'ق',
      nameSuraEn: 'Qaf',
    ),
    SurahModel(
      numSuraIndex: 51,
      numSuraRevres: '22',
      nameSuraAr: 'الذاريات',
      nameSuraEn: 'Adh-Dhariyat',
    ),
    SurahModel(
      numSuraIndex: 52,
      numSuraRevres: '24',
      nameSuraAr: 'الطور',
      nameSuraEn: 'At-Tur',
    ),
    SurahModel(
      numSuraIndex: 53,
      numSuraRevres: '13',
      nameSuraAr: 'النجم',
      nameSuraEn: 'An-Najm',
    ),
    SurahModel(
      numSuraIndex: 54,
      numSuraRevres: '14',
      nameSuraAr: 'القمر',
      nameSuraEn: 'Al-Qamar',
    ),
    SurahModel(
      numSuraIndex: 55,
      numSuraRevres: '11',
      nameSuraAr: 'الرحمن',
      nameSuraEn: 'Ar-Rahman',
    ),
    SurahModel(
      numSuraIndex: 56,
      numSuraRevres: '11',
      nameSuraAr: 'الواقعة',
      nameSuraEn: 'Al-Waqi\'a',
    ),
    SurahModel(
      numSuraIndex: 57,
      numSuraRevres: '18',
      nameSuraAr: 'الحديد',
      nameSuraEn: 'Al-Hadid',
    ),
    SurahModel(
      numSuraIndex: 58,
      numSuraRevres: '12',
      nameSuraAr: 'المجادلة',
      nameSuraEn: 'Al-Mujadila',
    ),
    SurahModel(
      numSuraIndex: 59,
      numSuraRevres: '12',
      nameSuraAr: 'الحشر',
      nameSuraEn: 'Al-Hashr',
    ),
    SurahModel(
      numSuraIndex: 60,
      numSuraRevres: '30',
      nameSuraAr: 'الممتحنة',
      nameSuraEn: 'Al-Mumtahina',
    ),
    SurahModel(
      numSuraIndex: 61,
      numSuraRevres: '52',
      nameSuraAr: 'الصف',
      nameSuraEn: 'As-Saff',
    ),
    SurahModel(
      numSuraIndex: 62,
      numSuraRevres: '52',
      nameSuraAr: 'الجمعة',
      nameSuraEn: 'Al-Jumu\'a',
    ),
    SurahModel(
      numSuraIndex: 63,
      numSuraRevres: '44',
      nameSuraAr: 'المنافقون',
      nameSuraEn: 'Al-Munafiqun',
    ),
    SurahModel(
      numSuraIndex: 64,
      numSuraRevres: '28',
      nameSuraAr: 'التغابن',
      nameSuraEn: 'At-Taghabun',
    ),
    SurahModel(
      numSuraIndex: 65,
      numSuraRevres: '28',
      nameSuraAr: 'الطلاق',
      nameSuraEn: 'At-Talaq',
    ),
    SurahModel(
      numSuraIndex: 66,
      numSuraRevres: '20',
      nameSuraAr: 'التحريم',
      nameSuraEn: 'At-Tahrim',
    ),
    SurahModel(
      numSuraIndex: 67,
      numSuraRevres: '56',
      nameSuraAr: 'الملك',
      nameSuraEn: 'Al-Mulk',
    ),
    SurahModel(
      numSuraIndex: 68,
      numSuraRevres: '40',
      nameSuraAr: 'القلم',
      nameSuraEn: 'Al-Qalam',
    ),
    SurahModel(
      numSuraIndex: 69,
      numSuraRevres: '31',
      nameSuraAr: 'الحاقة',
      nameSuraEn: 'Al-Haqqah',
    ),
    SurahModel(
      numSuraIndex: 70,
      numSuraRevres: '50',
      nameSuraAr: 'المعارج',
      nameSuraEn: 'Al-Ma\'arij',
    ),
    SurahModel(
      numSuraIndex: 71,
      numSuraRevres: '40',
      nameSuraAr: 'نوح',
      nameSuraEn: 'Nuh',
    ),
    SurahModel(
      numSuraIndex: 72,
      numSuraRevres: '46',
      nameSuraAr: 'الجن',
      nameSuraEn: 'Al-Jinn',
    ),
    SurahModel(
      numSuraIndex: 73,
      numSuraRevres: '42',
      nameSuraAr: 'المزّمّل',
      nameSuraEn: 'Al-Muzzammil',
    ),
    SurahModel(
      numSuraIndex: 74,
      numSuraRevres: '29',
      nameSuraAr: 'المدّثر',
      nameSuraEn: 'Al-Muddathir',
    ),
    SurahModel(
      numSuraIndex: 75,
      numSuraRevres: '19',
      nameSuraAr: 'القيامة',
      nameSuraEn: 'Al-Qiyamah',
    ),
    SurahModel(
      numSuraIndex: 76,
      numSuraRevres: '36',
      nameSuraAr: 'الإنسان',
      nameSuraEn: 'Al-Insan',
    ),
    SurahModel(
      numSuraIndex: 77,
      numSuraRevres: '25',
      nameSuraAr: 'المرسلات',
      nameSuraEn: 'Al-Mursalat',
    ),
    SurahModel(
      numSuraIndex: 78,
      numSuraRevres: '22',
      nameSuraAr: 'النبأ',
      nameSuraEn: 'An-Naba\'',
    ),
    SurahModel(
      numSuraIndex: 79,
      numSuraRevres: '17',
      nameSuraAr: 'النازعات',
      nameSuraEn: 'An-Nazi\'at',
    ),
    SurahModel(
      numSuraIndex: 80,
      numSuraRevres: '19',
      nameSuraAr: 'عبس',
      nameSuraEn: 'Abasa',
    ),
    SurahModel(
      numSuraIndex: 81,
      numSuraRevres: '26',
      nameSuraAr: 'التكوير',
      nameSuraEn: 'At-Takwir',
    ),
    SurahModel(
      numSuraIndex: 82,
      numSuraRevres: '30',
      nameSuraAr: 'الإنفطار',
      nameSuraEn: 'Al-Infitar',
    ),
    SurahModel(
      numSuraIndex: 83,
      numSuraRevres: '20',
      nameSuraAr: 'المطفّفين',
      nameSuraEn: 'Al-Mutaffifin',
    ),
    SurahModel(
      numSuraIndex: 84,
      numSuraRevres: '15',
      nameSuraAr: 'الإنشقاق',
      nameSuraEn: 'Al-Inshiqaq',
    ),
    SurahModel(
      numSuraIndex: 85,
      numSuraRevres: '21',
      nameSuraAr: 'البروج',
      nameSuraEn: 'Al-Buruj',
    ),
    SurahModel(
      numSuraIndex: 86,
      numSuraRevres: '11',
      nameSuraAr: 'الطارق',
      nameSuraEn: 'At-Tariq',
    ),
    SurahModel(
      numSuraIndex: 87,
      numSuraRevres: '8',
      nameSuraAr: 'الأعلى',
      nameSuraEn: 'Al-A\'la',
    ),
    SurahModel(
      numSuraIndex: 88,
      numSuraRevres: '5',
      nameSuraAr: 'الغاشية',
      nameSuraEn: 'Al-Ghashiyah',
    ),
    SurahModel(
      numSuraIndex: 89,
      numSuraRevres: '19',
      nameSuraAr: 'الفجر',
      nameSuraEn: 'Al-Fajr',
    ),
    SurahModel(
      numSuraIndex: 90,
      numSuraRevres: '5',
      nameSuraAr: 'البلد',
      nameSuraEn: 'Al-Balad',
    ),
    SurahModel(
      numSuraIndex: 91,
      numSuraRevres: '8',
      nameSuraAr: 'الشمس',
      nameSuraEn: 'Ash-Shams',
    ),
    SurahModel(
      numSuraIndex: 92,
      numSuraRevres: '8',
      nameSuraAr: 'الليل',
      nameSuraEn: 'Al-Lail',
    ),
    SurahModel(
      numSuraIndex: 93,
      numSuraRevres: '11',
      nameSuraAr: 'الضحى',
      nameSuraEn: 'Ad-Duha',
    ),
    SurahModel(
      numSuraIndex: 94,
      numSuraRevres: '11',
      nameSuraAr: 'الشرح',
      nameSuraEn: 'Ash-Sharh',
    ),
    SurahModel(
      numSuraIndex: 95,
      numSuraRevres: '8',
      nameSuraAr: 'التين',
      nameSuraEn: 'At-Tin',
    ),
    SurahModel(
      numSuraIndex: 96,
      numSuraRevres: '3',
      nameSuraAr: 'العلق',
      nameSuraEn: 'Al-Alaq',
    ),
    SurahModel(
      numSuraIndex: 97,
      numSuraRevres: '9',
      nameSuraAr: 'القدر',
      nameSuraEn: 'Al-Qadr',
    ),
    SurahModel(
      numSuraIndex: 98,
      numSuraRevres: '5',
      nameSuraAr: 'البينة',
      nameSuraEn: 'Al-Bayyina',
    ),
    SurahModel(
      numSuraIndex: 99,
      numSuraRevres: '4',
      nameSuraAr: 'الزلزلة',
      nameSuraEn: 'Az-Zalzalah',
    ),
    SurahModel(
      numSuraIndex: 100,
      numSuraRevres: '6',
      nameSuraAr: 'العاديات',
      nameSuraEn: 'Al-Adiyat',
    ),
    SurahModel(
      numSuraIndex: 101,
      numSuraRevres: '3',
      nameSuraAr: 'القارعة',
      nameSuraEn: 'Al-Qari\'a',
    ),
    SurahModel(
      numSuraIndex: 102,
      numSuraRevres: '6',
      nameSuraAr: 'التكاثر',
      nameSuraEn: 'At-Takathur',
    ),
    SurahModel(
      numSuraIndex: 103,
      numSuraRevres: '3',
      nameSuraAr: 'العصر',
      nameSuraEn: 'Al-Asr',
    ),
    SurahModel(
      numSuraIndex: 104,
      numSuraRevres: '5',
      nameSuraAr: 'الهمزة',
      nameSuraEn: 'Al-Humazah',
    ),
    SurahModel(
      numSuraIndex: 105,
      numSuraRevres: '4',
      nameSuraAr: 'الفيل',
      nameSuraEn: 'Al-Fil',
    ),
    SurahModel(
      numSuraIndex: 106,
      numSuraRevres: '5',
      nameSuraAr: 'قريش',
      nameSuraEn: 'Quraysh',
    ),
    SurahModel(
      numSuraIndex: 107,
      numSuraRevres: '6',
      nameSuraAr: 'الماعون',
      nameSuraEn: 'Al-Ma\'un',
    ),
    SurahModel(
      numSuraIndex: 108,
      numSuraRevres: '3',
      nameSuraAr: 'الكوثر',
      nameSuraEn: 'Al-Kawthar',
    ),
    SurahModel(
      numSuraIndex: 109,
      numSuraRevres: '6',
      nameSuraAr: 'الكافرون',
      nameSuraEn: 'Al-Kafirun',
    ),
    SurahModel(
      numSuraIndex: 110,
      numSuraRevres: '3',
      nameSuraAr: 'النصر',
      nameSuraEn: 'An-Nasr',
    ),
    SurahModel(
      numSuraIndex: 111,
      numSuraRevres: '5',
      nameSuraAr: 'المسد',
      nameSuraEn: 'Al-Masad',
    ),
    SurahModel(
      numSuraIndex: 112,
      numSuraRevres: '4',
      nameSuraAr: 'الإخلاص',
      nameSuraEn: 'Al-Ikhlas',
    ),
    SurahModel(
      numSuraIndex: 113,
      numSuraRevres: '5',
      nameSuraAr: 'الفلق',
      nameSuraEn: 'Al-Falaq',
    ),
    SurahModel(
      numSuraIndex: 114,
      numSuraRevres: '6',
      nameSuraAr: 'الناس',
      nameSuraEn: 'An-Nas',
    ),
  ];
}
 
class VerseModel {
  final int globalId;
  final int surahNumber;
  final int ayahNumber;
  final String verseKey;
  final String textAr;

  VerseModel({
    required this.globalId,
    required this.surahNumber,
    required this.ayahNumber,
    required this.verseKey,
    required this.textAr,
  });

  factory VerseModel.fromJson(Map<String, dynamic> json) {
    return VerseModel(
      globalId: json['global_id'],
      surahNumber: json['surah'],
      ayahNumber: json['ayah'],
      verseKey: json['verse_key'],
      textAr: json['text_ar'],
    );
  }
}
class SuraItemsModel {
  final int surahNumber;
  final String nameEn;
  final String nameAr;
  final int versesCount;
  final String revelationPlace;
  final List<VerseModel> verses;

  SuraItemsModel({
    required this.surahNumber,
    required this.nameEn,
    required this.nameAr,
    required this.versesCount,
    required this.revelationPlace,
    required this.verses,
  });

  factory SuraItemsModel.fromJson(Map<String, dynamic> json) {
    return SuraItemsModel(
      surahNumber: json['surah_number'],
      nameEn: json['name_en'],
      nameAr: json['name_ar'],
      versesCount: json['verses_count'],
      revelationPlace: json['revelation_place'],

      verses: (json['verses'] as List)
          .map((e) => VerseModel.fromJson(e))
          .toList(),
    );
  }
}