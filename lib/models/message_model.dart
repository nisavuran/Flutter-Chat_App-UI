import 'package:test_project/models/user_model.dart';

class Message {
  final int id;
  final User sender;
  final String last_message;
  final String message;
  final bool isLiked;
  final bool unread;

  Message({
    this.id,
    this.sender,
    this.last_message,
    this.message,
    this.isLiked,
    this.unread,
  });
}
//current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  avatar: 'assets/images/greg.jpg',
);
//Users
final User christopher = User(
 id:471283,
 name:"Christopher",
 avatar:"https://miro.medium.com/max/2560/1*gBQxShAkxBp_YPb14CN0Nw.jpeg"
);
final User resse = User(
  id:58293,
  name:"Resse",
  avatar:"https://cdn.psychologytoday.com/sites/default/files/styles/image-article_inline_full/public/field_blog_entry_images/2018-09/shutterstock_648907024.jpg"
);
final User jeffrey = User(
 id:41470,
 name:"Jeffrey",
 avatar:"https://www.digitalparadigm.ca/wp-content/uploads/2015/01/Picture-of-person.png"
);
final User laura = User(
  id:48871,
  name:"Laura",
  avatar:"https://www.pngitem.com/pimgs/m/277-2778587_excited-businessman-with-clenched-fists-excited-business-man.png"
);
final User harry = User(
  id:91160,
  name:"Harry",
  avatar:"https://www.pngitem.com/pimgs/m/345-3453499_male-businessman-hd-png-download.png"
);

// Online Users
List<User> onlines = [resse, harry,laura,jeffrey];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: christopher,
    last_message: '5:30 PM',
    message: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: laura,
    last_message: '4:30 PM',
    message: 'What kind of music do you like?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: jeffrey,
    last_message: '3:30 PM',
    message: 'Sounds good to me!',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: harry,
    last_message: '2:30 PM',
    message: 'Hi!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: resse,
    last_message: '1:30 PM',
    message: 'Dont you come with us?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: harry,
    last_message: '12:30 PM',
    message: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: resse,
    last_message: '11:30 AM',
    message: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
   sender: christopher,
    last_message: '5:30 PM',
    message: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
   sender: christopher,
    last_message: '3:45 PM',
    message: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: christopher,
    last_message: '3:15 PM',
    message: 'All the food',
    isLiked: true,
    unread: true,
  ),
 
  Message(
    sender: currentUser,
    last_message: '2:00 PM',
    message: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];