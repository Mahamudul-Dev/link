import 'package:link/models/chat_model.dart';
import 'package:link/models/message_model.dart';

final List<Chat> chats = [
  Chat(
    userName: "Elon Musk",
    uid: 01765138697,
    bio: 'CEO of Tesla',
    email: 'ceo@google.com',
    age: 32,
    reletionshipStatus: 'Married',
    about:
        'Under Nadellas leadership, Microsoft has shifted its focus to cloud computing and artificial intelligence, and has been investing heavily in these areas. He has also championed diversity and inclusion initiatives within the company, and has been an advocate for accessibility in technology.',
    profilePic:
        'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1500w,f_auto,q_auto:best/rockcms/2022-04/220421-elon-musk-al-1017-a6eece.jpg',
    unreadMessages: 3,
    isActive: true,
    messages: [
      Message(
          id: 0,
          uid: 017,
          message:
              "Cool, I'll pass on the details hopefully it will go through the database. Btw how's your family?",
          timeStamp: '10:00 PM Today'),
      Message(
          id: 1,
          uid: 019,
          message: "Good night. Thank you",
          timeStamp: '10:00 PM Today'),
      Message(
          id: 2,
          uid: 019,
          message: "Yoo bro. I need a favour",
          timeStamp: '10:00 PM Today'),
      Message(
          id: 3,
          uid: 017,
          message: "Yoo How's it going ?",
          timeStamp: '10:00 PM Today'),
      Message(
          id: 4,
          uid: 017,
          message: "Been a while",
          timeStamp: '10:00 PM Today'),
      Message(
          id: 5,
          uid: 017,
          message: "Def. Whats up ? ",
          timeStamp: '10:00 PM Today'),
      Message(
          id: 0,
          uid: 017,
          message:
              "Cool, I'll pass on the details hopefully it will go through the database. Btw how's your family?",
          timeStamp: '10:00 PM Today'),
      Message(
          id: 1,
          uid: 019,
          message: "Good night. Thank you",
          timeStamp: '10:00 PM Today'),
      Message(
          id: 2,
          uid: 019,
          message: "Yoo bro. I need a favour",
          timeStamp: '10:00 PM Today'),
      Message(
          id: 3,
          uid: 017,
          message: "Yoo How's it going ?",
          timeStamp: '10:00 PM Today'),
      Message(
          id: 4,
          uid: 017,
          message: "Been a while",
          timeStamp: '10:00 PM Today'),
      Message(
          id: 5,
          uid: 017,
          message: "Def. Whats up ? ",
          timeStamp: '10:00 PM Today'),
      Message(
          id: 0,
          uid: 017,
          message:
              "Cool, I'll pass on the details hopefully it will go through the database. Btw how's your family?",
          timeStamp: '12:00 PM Today'),
      Message(
          id: 1,
          uid: 019,
          message: "Good night. Thank you",
          timeStamp: '12:00 PM Today'),
      Message(
          id: 2,
          uid: 019,
          message: "Yoo bro. I need a favour",
          timeStamp: '12:00 PM Today'),
      Message(
          id: 3,
          uid: 017,
          message: "Yoo How's it going ?",
          timeStamp: '12:00 PM Today'),
      Message(
          id: 4,
          uid: 017,
          message: "Been a while",
          timeStamp: '12:00 PM Today'),
      Message(
          id: 5,
          uid: 017,
          message: "Def. Whats up ? ",
          timeStamp: '12:00 PM Today'),
    ],
    gender: 'Male',
  ),
  Chat(
    userName: "Mark Zuckerberg",
    uid: 01916302617,
    bio: 'CEO of Facebook',
    email: 'ceo@google.com',
    age: 32,
    reletionshipStatus: 'Married',
    about:
        'Under Nadellas leadership, Microsoft has shifted its focus to cloud computing and artificial intelligence, and has been investing heavily in these areas. He has also championed diversity and inclusion initiatives within the company, and has been an advocate for accessibility in technology.',
    profilePic:
        'https://cdn.britannica.com/99/236599-050-1199AD2C/Mark-Zuckerberg-2019.jpg',
    unreadMessages: 3,
    isActive: false,
    messages: [
      Message(
          id: 0,
          uid: 017,
          message:
              "Cool, I'll pass on the details hopefully it will go through the database. Btw how's your family?",
          timeStamp: '5:00 PM'),
      Message(
          id: 1,
          uid: 018,
          message: "Good night. Thank you",
          timeStamp: '5:00 PM'),
      Message(
          id: 3,
          uid: 017,
          message: "Yoo How's it going ?",
          timeStamp: '5:00 PM'),
      Message(id: 4, uid: 017, message: "Been a while", timeStamp: '5:00 PM'),
      Message(
          id: 5, uid: 017, message: "Def. Whats up ?", timeStamp: '5:00 PM'),
      Message(
          id: 2,
          uid: 018,
          message: "Yoo bro. I need a favour",
          timeStamp: '5:00 PM'),
    ],
    gender: 'Male',
  ),
  Chat(
    userName: "Bill Gates",
    uid: 01881835612,
    bio: 'CEO of Microsoft',
    email: 'ceo@google.com',
    age: 32,
    reletionshipStatus: 'Married',
    about:
        'Under Nadellas leadership, Microsoft has shifted its focus to cloud computing and artificial intelligence, and has been investing heavily in these areas. He has also championed diversity and inclusion initiatives within the company, and has been an advocate for accessibility in technology.',
    profilePic:
        'https://pbs.twimg.com/profile_images/1564398871996174336/M-hffw5a_400x400.jpg',
    unreadMessages: 0,
    isActive: true,
    isGroup: true,
    messages: [
      Message(
          id: 0,
          uid: 017,
          message:
              "Cool, I'll pass on the details hopefully it will go through the database. Btw how's your family?",
          timeStamp: '4:00 PM'),
      Message(
          id: 1,
          uid: 018,
          message: "Good night. Thank you",
          timeStamp: '4:00 PM'),
      Message(
          id: 2,
          uid: 018,
          message: "Yoo bro. I need a favour",
          timeStamp: '4:00 PM'),
      Message(
          id: 5, uid: 017, message: "Def. Whats up ? ", timeStamp: '4:00 PM'),
      Message(
          id: 3,
          uid: 017,
          message: "Yoo How's it going ?",
          timeStamp: '4:00 PM'),
      Message(id: 4, uid: 017, message: "Been a while", timeStamp: '4:00 PM'),
    ],
    gender: 'Male',
  ),
];
