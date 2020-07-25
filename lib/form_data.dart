import 'dart:typed_data' show Uint8List;

final Uint8List sampleSignature = Uint8List.fromList(<int>[
  137,
  80,
  78,
  146,
  177,
  61,
  24,
]);

class Contact {
  final String name;
  final String email;
  final String imageUrl;

  const Contact(this.name, this.email, this.imageUrl);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Contact &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() {
    return name;
  }
}

const allCountries = [
'Abu Dhalouf',
'Abu Samra',
'Ain Khaled',
'Ain Sinan',
'Al Adaid',
'Al Aziziya',
'Baaya',
'Bani Hajer',
'Brahat Al Jufairy',
'Bu Fasseela',
'Bu Hamour',
'Bu Samra',
'Bu Sidra',
'Al Bidda',
'Dahl Al Hammam',
'Doha International Airport',
'Doha Port',
'Duhail',
'Dukhan',
'Al Daayen',
'Al Dafna',
'Al Doha Al Jadeeda',
'Al Ebb',
'Al Egla',
'Fuwayrit',
'Fereej Abdel Aziz',
'Fereej Bin Dirham',
'Fereej Bin Mahmoud',
'Fereej Bin Omran',
'Fereej Kulaib',
'Fereej Mohammed Bin Jassim',
'Fereej Al Amir',
'Fereej Al Asiri',
'Fereej Al Asmakh',
'Fereej Al Murra',
'Fereej Al Manaseer',
'Fereej Al Nasr',
'Fereej Al Soudan',
'Fereej Al Zaeem',
'Gharafat Al Rayyan',
'Al Gharafa',
'Al Ghuwariyah',
'Hamad Medical City',
'Hazm Al Markhiya',
'Al Hilal',
'Industrial Area',
'Izghawa (Al Rayyan)',
'Izghawa (Umm Salal)',
'Jabal Thuaileb',
'Jelaiah',
'Jeryan Jenaihat',
'Jeryan Nejaima',
'Al Jasrah',
'Al Jeryan',
'Al Karaana',
'Al Kharrara',
'Al Kharaitiyat',
'Al Kharayej',
'Al Kheesa',
'Al Khor',
'Al Khulaifat',
'Leabaib',
'Lebday',
'Lejbailat',
'Lekhwair',
'Leqtaifiya',
'Lijmiliya',
'Luaib',
'Lusail',
'Al Luqta',
'Madinat ash Shamal',
'Madinat Al Kaaban',
'Madinat Khalifa North',
'Madinat Khalifa South',
'Mebaireek',
'Mehairja',
'Mesaieed',
'Mesaieed Industrial Area',
'Mesaimeer',
'Al Messila',
'Muaither',
'Muraikh',
'Mushayrib',
'Al Mamoura',
'Al Mansoura',
'Al Markhiyah',
'Al Mashaf',
'Al Masrouhiya',
'Al Mearad',
'Al Mirqab',
'Najma',
'New Al Hitmi',
'New Al Mirqab',
'New Al Rayyan',
'New Salata',
'New Fereej Al Ghanim',
'New Fereej Al Khulaifat',
'Nu`ayjah',
'Al Najada',
'Al Nasraniya',
'Old Airport',
'Old Al Ghanim',
'Old Al Hitmi',
'Old Al Rayyan',
'Onaiza',
'The Pearl',
'Al Qassar',
'Ras Abu Aboud',
'Ras Lafan',
'Rawdat Al Hamama',
'Rawdat Al Khail',
'Rawdat Egdaim',
'Rawdat Rashed',
'Rumaila',
'Ar Ruays',
'Al Rufaa',
'Sawda Natheel',
'Shagra',
'Simaisma',
'Al Sadd',
'As Salatah',
'Al Sailiya',
'Al Sakhama',
'Al Shagub',
'Al Shahaniya',
'Al Souq',
'Al Seej',
'Al Tarfa',
'Al Thakhira',
'Al Themaid',
'Al Thumama (Doha)',
'Al Thumama (Al Wakrah)',
'Umm Bab',
'Umm Birka',
'Umm Ghuwailina',
'Umm Lekhba',
'Umm Qarn',
'Umm Salal Ali',
'Umm Salal Mohammed',
'Al Utouriya',
'Wadi Al Banat',
'Wadi Al Sail',
'Wadi Al Wasaah',
'Wadi Lusail',
'Al Waab',
'Al Wajba',
'Al Wakrah',
'Al Wukair',
'Al Zubarah'];

const contacts = <Contact>[
  Contact('Andrew', 'stock@man.com',
      'https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX4057996.jpg'),
  Contact('Paul', 'paul@google.com',
      'https://mbtskoudsalg.com/images/person-stock-image-png.png'),
  Contact('Fred', 'fred@google.com',
      'https://media.istockphoto.com/photos/feeling-great-about-my-corporate-choices-picture-id507296326'),
  Contact('Brian', 'brian@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
  Contact('John', 'john@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
  Contact('Thomas', 'thomas@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
  Contact('Nelly', 'nelly@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
  Contact('Marie', 'marie@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
  Contact('Charlie', 'charlie@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
  Contact('Diana', 'diana@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
  Contact('Ernie', 'ernie@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
  Contact('Gina', 'fred@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
];