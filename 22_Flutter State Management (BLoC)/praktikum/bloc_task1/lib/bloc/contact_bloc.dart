import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/ContactModel.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial(contacts: List.empty())) {
    on<ContactEvent>((event, emit) {
      emit(Loading(contacts: state.contacts));

      if(event is CreateContact) {
        emit(ContactCreated(contacts: state.contacts..add(event.contact)));
      } else if(event is DeleteContact) {
        emit(ContactDeleted(contacts: state.contacts..remove(event.contact)));
      } else if(event is LoadContact) {
        emit(ContactLoaded(contacts: state.contacts));
      } else if(event is UpdateContact) {
        emit(ContactUpdated(contacts: state.contacts..add(event.contact)));
      } else if(event is ContactErrored) {
        emit(Error(contacts: state.contacts));
      }  
      // TODO: implement event handler
    });
  }
}
