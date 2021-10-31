import 'dart:math';

String _longText =
    '''Lorem ipsum dolor sit amet consectetur, adipisicing elit. Suscipit commodi natus molestiae, mollitia animi nulla accusamus minus exercitationem, pariatur magnam aliquam ipsum quos, eveniet autem? Cumque quidem deleniti dolorum amet!
Nesciunt praesentium nobis voluptatem? Quibusdam perferendis illum delectus assumenda debitis, minus dolore, ipsam recusandae saepe nihil culpa reiciendis deserunt aut maxime eaque autem, soluta ex amet earum suscipit? Odio, reprehenderit!
Quibusdam at nihil accusamus dignissimos eius temporibus veritatis ex pariatur. Commodi quae magni harum id tempore eos unde exercitationem, incidunt voluptatem, mollitia eligendi. Animi praesentium est magnam, provident aliquam deserunt.
Beatae, consequuntur doloribus! Assumenda non sed ratione aspernatur molestiae quae veritatis minus asperiores, minima consectetur blanditiis doloribus rerum ex sit ea veniam labore tenetur consequatur repellendus laborum! Consectetur, possimus sed!
Quidem, illo ad adipisci dolore maiores repellendus alias veniam, quibusdam sequi provident impedit placeat quis possimus eius voluptate neque veritatis ipsa, nostrum numquam asperiores obcaecati consectetur nobis. Possimus, facilis aliquid!
Ducimus consequatur similique ipsaolor tenetur, tempore repudiandae molestiae atque hic. Id amet aliquid sequi explicabo eveniet, error quibusdam expedita laboriosam, soluta cum nam impedit quasi neque modi?
Aperiam magni ad quidem voluptate doloremque, numquam temporibus sequi, impedit ea explicabo ex minus, delectus officiis mollitia. Harum sequi tenetur praesentium vitae, hic, nostrum fuga quis labore reiciendis, quibusdam eos!
Sunt, quisquam dolore quasi minus quod, itaque voluptates facilis tenetur aspernatur possimus nesciunt provident maiores vitae cumque aut repellendus pariatur architecto ab alias sed amet rerum ratione impedit? Laudantium, obcaecati?
Explicabo aliquid magnam saepe nisi, sit harum molestias autem. Est facilis quo, dolorem eum, magnam laudantium dolor soluta, aut obcaecati porro totam ab? Nisi corporis ipsa, fugit facere quas perspiciatis.
A enim velit voluptates placeat magnam, nostrum repellendus beatae et explicabo ipsum exercitationem nisi commodi, qui blanditiis. Vitae, neque facilis, provident voluptatibus id obcaecati iste, ab sapiente sit fugiat delectus.
Distinctio, obcaecati maxime molestiae aut ipsum delectus autem blanditiis totam iste id molestias et reprehenderit vero reiciendis natus a deserunt excepturi suscipit. Officia cumque tempora est cum debitis minus doloribus?
Quos natus quam autem repellat eos quaerat doloremque porro dolorem, dolore sit magni veritatis harum! Hic sint est provident! Deleniti laborum minima tempora harum, ducimus sonem reprehenderit possimus ipsam impedit atque quas, fugit rerum? Tenetur blanditiis nostrum, sit id culpa earum iure dignissimos consectetur doloribus, error ratione quia illum ipsam.'''
        .toLowerCase();

String getTitle() {
  int random = Random().nextInt(100);
  random += 20;
  int start = Random().nextInt(_longText.length - 120);
  String title = _longText.substring(start, start + random).trim();
  title = title.substring(0, 1).toUpperCase() + title.substring(1);
  return title;
}

String getCompany() {
  int random = Random().nextInt(40);
  random += 5;
  int start = Random().nextInt(_longText.length - 45);
  String company = _longText.substring(start, start + random).trim();
  company = company.substring(0, 1).toUpperCase() + company.substring(1);
  return company;
}

String getRandomCat() {
  List<String> cats = [
    'Jobs',
    'Scholarships',
    'Competitions',
    'Blog',
    'Events',
    'Trainings',
    'Grants',
    'Concours'
  ];
  int random = Random().nextInt(7) + 1;
  return cats[random];
}

String getRandomImage() {
  int random = Random().nextInt(500);
  random += 100;
  return 'https://unsplash.it/200';
}

String getRandomNumbers() {
  int random = Random().nextInt(9999999);
  if (random > 999999) return random.toString().substring(0, 1) + 'M+';
  if (random > 999)
    return random.toString().substring(0, random.toString().length - 3) + 'K+';
  return random.toString();
}

String getRandomDate() {
  List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'April',
    'May',
    'June',
    'July',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  int day = Random().nextInt(27) + 1;
  int month = Random().nextInt(11) + 1;
  return '$day ${months[month]} 2021';
}
