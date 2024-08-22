import 'package:event_manager/features/home/bloc/select_your_interests_event.dart';
import 'package:event_manager/features/home/bloc/select_your_interests_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class SelectYourInterestsBloc
    extends Bloc<SelectYourInterestsEvent, SelectYourInterestsState> {
  SelectYourInterestsBloc()
      : super(SelectYourInterestsSelectedInitialState(isSelected: false)) {}
}
