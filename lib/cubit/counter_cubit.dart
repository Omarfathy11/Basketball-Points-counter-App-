import 'package:block/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(CounterAIncrementState());
  int teamAPoints = 0;
  int teamBPoints = 0;
  void TeamIncrement({required String team,required int buttonNumbers}){
      if(team == "A"){
        teamAPoints += buttonNumbers;
        emit(CounterAIncrementState());
      }else if(team == "b"){
        teamBPoints += buttonNumbers;
        emit(CounterBIncrementState());
      }else{
        teamAPoints=0;
        teamBPoints=0;
         emit(CounterBIncrementState());
      }
  }
  

}