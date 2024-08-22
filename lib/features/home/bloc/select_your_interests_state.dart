abstract class SelectYourInterestsState {}

class SelectYourInterestsSelectedInitialState extends SelectYourInterestsState {
  SelectYourInterestsSelectedInitialState({this.isSelected = false});
  bool isSelected;
}

class SelectYourInterestsSelectedState extends SelectYourInterestsState {
  bool isSelected;
  SelectYourInterestsSelectedState({required this.isSelected});
}
