import '../../../models/message.dart';

abstract class ChatState {}

class ChatInitial extends ChatState {}

class ChatISuccess extends ChatState {
  List<Message> messages;
  ChatISuccess({required this.messages});
}
