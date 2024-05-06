// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'chat_cubit.dart';

@immutable
abstract class ChatState {}

class ChatInitial extends ChatState {}

class ChatISuccess extends ChatState {
  List<Message> messages;
  ChatISuccess({required this.messages});
}
