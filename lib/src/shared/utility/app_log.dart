import 'dart:developer';
import 'package:flutter/foundation.dart';

class AppLog {
  static void logMessage(String message) {
    // if in development envirement then-n-then show logs
    // if(kDebugMode){
    if (!kReleaseMode) {
      log(message);
    }
  }
}




/*
class ChatMessage {
  final String message;
  final DateTime timestamp;

  ChatMessage({this.message, this.timestamp});
}

class Person {
  final String name;
  final List<ChatMessage> chatMessages;

  Person({this.name, this.chatMessages});
}

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(PersonAdapter());
  Hive.registerAdapter(ChatMessageAdapter());
}

class PersonAdapter extends TypeAdapter<Person> {
  @override
  Person read(BinaryReader reader) {
    var name = reader.readString();
    var messages = reader.readList<ChatMessage>(ChatMessageAdapter());
    return Person(name: name, chatMessages: messages);
  }

  @override
  void write(BinaryWriter writer, Person person) {
    writer.writeString(person.name);
    writer.writeList(person.chatMessages, ChatMessageAdapter());
  }
}

class ChatMessageAdapter extends TypeAdapter<ChatMessage> {
  @override
  ChatMessage read(BinaryReader reader) {
    var message = reader.readString();
    var timestamp = reader.readInt();
    return ChatMessage(message: message, timestamp: DateTime.fromMillisecondsSinceEpoch(timestamp));
  }

  @override
  void write(BinaryWriter writer, ChatMessage message) {
    writer.writeString(message.message);
    writer.writeInt(message.timestamp.millisecondsSinceEpoch);
  }
}

Future<void> addPerson(Person person) async {
  var box = await Hive.openBox<Person>('people');
  await box.put(person.name, person);
}

Future<List<Person>> getPeople() async {
  var box = await Hive.openBox<Person>('people');
  return box.values.toList();
}

Future<Person> getPerson(String name) async {
  var box = await Hive.openBox<Person>('people');
  return box.get(name);
}
*/