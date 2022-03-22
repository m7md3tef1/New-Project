abstract class DataProductState{}
class InitialStateData extends DataProductState{}


class GetDataLoading extends DataProductState{}
class GetDataSuccess extends DataProductState{}

class GetDataFailed extends DataProductState{
  final String error;

  GetDataFailed(this.error);
}

class deleteSuccess extends DataProductState{}

class deleteFailed extends DataProductState{
   final String error;

   deleteFailed(this.error);
}
