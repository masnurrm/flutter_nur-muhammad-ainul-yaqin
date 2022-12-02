import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'smeci_state.dart';

class SmeciCubit extends Cubit<SmeciState> {
  SmeciCubit() : super(SmeciInitial());
}
