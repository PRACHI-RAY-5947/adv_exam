import '../modals/modals.dart';

class MyRoutes{
  static String splashPage = '/';
  static String infoPage = 'InfoPage';
  static String infoPage2 = 'InfoPage2';
  static String homePage = '/HomePage';
  static String quotePage = 'QuotePage';
  static String favouritePage = 'FavouritePage';
  static String editPage = 'EditPage';
}

bool image = false;
List bgImages = [
  "lib/assets/bg/img_1.jpeg",
  "lib/assets/bg/img_2.jpeg",
  "lib/assets/bg/img_3.jpeg",
  "lib/assets/bg/img_4.jpeg",
  "lib/assets/bg/img_5.jpeg",
  "lib/assets/bg/img_6.jpeg",
  "lib/assets/bg/img_7.jpeg",
  "lib/assets/bg/img_8.jpeg",
  "lib/assets/bg/img_9.jpeg",
  "lib/assets/bg/img_10.jpeg",
  "lib/assets/bg/img_11.jpeg",
  "lib/assets/bg/img_12.jpeg",
  "lib/assets/bg/img_13.jpeg",
  "lib/assets/bg/img_14.jpeg",


];
int selectedImages = 0;





//  List<Category> categories = [
//   Category(name: 'Inspiration', imageUrl: 'https://picsum.photos/seed/inspiration/200/300'),
//   Category(name: 'Motivation', imageUrl: 'https://picsum.photos/seed/motivation/200/300'),
//   Category(name: 'Love', imageUrl: 'https://picsum.photos/seed/love/200/300'),
//   Category(name: 'Friendship', imageUrl: 'https://picsum.photos/seed/friendship/200/300'),
//   Category(name: 'Wisdom', imageUrl: 'https://picsum.photos/seed/wisdom/200/300'),
//   Category(name: 'Happiness', imageUrl: 'https://picsum.photos/seed/happiness/200/300'),
//   Category(name: 'Life', imageUrl: 'https://picsum.photos/seed/life/200/300'),
//   Category(name: 'Success', imageUrl: 'https://picsum.photos/seed/success/200/300'),
//   Category(name: 'Courage', imageUrl: 'https://picsum.photos/seed/courage/200/300'),
//   Category(name: 'Faith', imageUrl: 'https://picsum.photos/seed/faith/200/300'),
//   Category(name: 'Humor', imageUrl: 'https://picsum.photos/seed/humor/200/300'),
//   Category(name: 'Hope', imageUrl: 'https://picsum.photos/seed/hope/200/300'),
//   Category(name: 'Positivity', imageUrl: 'https://picsum.photos/seed/positivity/200/300'),
//   Category(name: 'Gratitude', imageUrl: 'https://picsum.photos/seed/gratitude/200/300'),
//   Category(name: 'Peace', imageUrl: 'https://picsum.photos/seed/peace/200/300'),
//   Category(name: 'Dreams', imageUrl: 'https://picsum.photos/seed/dreams/200/300'),
//   Category(name: 'Strength', imageUrl: 'https://picsum.photos/seed/strength/200/300'),
//   Category(name: 'Leadership', imageUrl: 'https://picsum.photos/seed/leadership/200/300'),
//   Category(name: 'Philosophy', imageUrl: 'https://picsum.photos/seed/philosophy/200/300'),
//   Category(name: 'Self-Improvement', imageUrl: 'https://picsum.photos/seed/self-improvement/200/300'),
// ];
//
// List<Map<String, dynamic>> allQuotes = [
//   {
//     "quote":
//     "I went through a long period of time in that marriage when I didn't believe anything was my fault. I had to face what my part was, and only because of that difficult work was I able to trust a man again.",
//     "author": "Connie Sellecca",
//     "category": "marriage"
//   },
//   {
//     "quote":
//     "Hope is the belief we might get it done, and faith is the knowledge we will get it done.",
//     "author": "Tom Shadyac",
//     "category": "knowledge"
//   },
//   {
//     "quote":
//     "If I had to come up with something that just came to me, I think growing up in a small town, I want knowledge. I still think today, knowledge is one of the keys.",
//     "author": "Herschel Walker",
//     "category": "knowledge"
//   },
//   {
//     "quote":
//     "While the intelligence profession oftentimes demands secrecy, it is critically important that there be a full and open discourse on intelligence matters with the appropriate elected representatives of the American people.",
//     "author": "John O. Brennan",
//     "category": "intelligence"
//   },
//   {
//     "quote":
//     "We should meet abuse by forbearance. Human nature is so constituted that if we take absolutely no notice of anger or abuse, the person indulging in it will soon weary of it and stop.",
//     "author": "Mahatma Gandhi",
//     "category": "anger"
//   },
//   {
//     "quote":
//     "When I left 20th Century-Fox to freelance, my agent believed that getting big money was the way to establish real importance in our industry.",
//     "author": "Loretta Young",
//     "category": "money"
//   },
//   {
//     "quote":
//     "An organization's intelligence is distributed to the point of being ubiquitous.",
//     "author": "Kevin Kelly",
//     "category": "intelligence"
//   },
//   {
//     "quote":
//     "I can tell you that the Canadian intelligence and law enforcement agencies have been providing outstanding co-operation with our intelligence and law enforcement agencies as we work together to track down terrorists here in North America and put them out of commission.",
//     "author": "Paul Cellucci",
//     "category": "intelligence"
//   },
//   {
//     "quote":
//     "I sing seriously to my mom on the phone. To put her to sleep, I have to sing 'Maria' from West Side Story. When I hear her snoring, I hang up.",
//     "author": "Adam Sandler",
//     "category": "mom"
//   },
//   {
//     "quote":
//     "If left unchecked, global change will create violent conflict, torrential storms, shrinking coastlines, and irreversible catastrophe.",
//     "author": "Valerie Jarrett",
//     "category": "change"
//   },
//   {
//     "quote":
//     "In my early professional years I was asking the question: How can I treat, or cure, or change this person? Now I would phrase the question in this way: How can I provide a relationship which this person may use for his own personal growth?",
//     "author": "Carl Rogers",
//     "category": "change"
//   },
//   {
//     "quote":
//     "Right now, I have some big dreams. But at the same time, if I get annoyed and harassed by the media, I'll just quit. I don't care. We're set for life. I have quite a temper.",
//     "author": "Anna Benson",
//     "category": "dreams"
//   },
//   {
//     "quote":
//     "We consider Christmas as the encounter, the great encounter, the historical encounter, the decisive encounter, between God and mankind. He who has faith knows this truly let him rejoice.",
//     "author": "Pope Paul VI",
//     "category": "great"
//   },
//   {
//     "quote":
//     "Should we fear hackers? Intention is at the heart of this discussion.",
//     "author": "Kevin Mitnick",
//     "category": "fear"
//   },
//   {
//     "quote":
//     "Aaron Pryor wants to get into the ring with me. He wants to be able to retire, and he will. For health reasons.",
//     "author": "Sugar Ray Leonard",
//     "category": "health"
//   },
//   {
//     "quote":
//     "I think the fact that I was raised in show business, in New York City, in the '50s, that's affected my personality to the point that I'm a little different.",
//     "author": "Christopher Walken",
//     "category": "business"
//   },
//   {
//     "quote":
//     "Look, at the same time that I don't want to be a celebrity, I understand that when you make movies you put yourself out in the public eye. I'd be a baby and a fool to be like, 'Why are there cameras taking pictures of me?' when I'm on a billboard for a movie. I think that's a very absurd concept.",
//     "author": "Jonah Hill",
//     "category": "movies"
//   },
//   {
//     "quote": "Death will be a great relief. No more interviews.",
//     "author": "Katharine Hepburn",
//     "category": "death"
//   },
//   {
//     "quote": "Like many women my age, I am 28 years old.",
//     "author": "Mary Schmich",
//     "category": "age"
//   },
//   {
//     "quote":
//     "General Howard informed me, in a haughty spirit, that he would give my people 30 days to go back home, collect all their stock, and move onto the reservation.",
//     "author": "Chief Joseph",
//     "category": "home"
//   },
//   {
//     "quote":
//     "My first memory of the Rolling Stones is listening to 'Satisfaction' at a sixth-grade slumber party at a friend's house in Ankara, Turkey, where my family was living at the time. In the middle of our sleepover, my friend's dad stopped the record when he heard the words 'girlie action!'",
//     "author": "Gayle King",
//     "category": "dad"
//   },
//   {
//     "quote":
//     "Mothers are fonder than fathers of their children because they are more certain they are their own.",
//     "author": "Aristotle",
//     "category": "mom"
//   },
//   {
//     "quote":
//     "I've done movies with a sword before. But I haven't really been given the full responsibility of something like a Ridley Scott film.",
//     "author": "Orlando Bloom",
//     "category": "movies"
//   },
//   {
//     "quote":
//     "Morality and its victim, the mother - what a terrible picture! Is there indeed anything more terrible, more criminal, than our glorified sacred function of motherhood?",
//     "author": "Emma Goldman",
//     "category": "mom"
//   },
//   {
//     "quote":
//     "A mathematician is a person who can find analogies between theorems a better mathematician is one who can see analogies between proofs and the best mathematician can notice analogies between theories.",
//     "author": "Stefan Banach",
//     "category": "best"
//   },
//   {
//     "quote":
//     "You have to risk failure to succeed. The important thing is not to make one single mistake that will jeopardize the future.",
//     "author": "An Wang",
//     "category": "failure"
//   },
//   {
//     "quote": "I hope gay marriage will be legal in every state.",
//     "author": "Mark Consuelos",
//     "category": "marriage"
//   },
//   {
//     "quote":
//     "Science is the international language, so when we are able to convince countries that good decision-making for human health and animal health is based upon science, that's a real success story for us.",
//     "author": "Mike Johanns",
//     "category": "health"
//   },
//   {
//     "quote":
//     "When I was a kid I used to pray every night for a new bicycle. Then I realised that the Lord doesn't work that way so I stole one and asked Him to forgive me.",
//     "author": "Emo Philips",
//     "category": "forgiveness"
//   },
//   {
//     "quote":
//     "I am as bad as the worst, but, thank God, I am as good as the best.",
//     "author": "Walt Whitman",
//     "category": "best"
//   },
// ];



