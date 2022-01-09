class ApiResult<TData> {
  final TData? outputModel;
  final bool isSuccess;
  final String? statusMessage;

  bool get isFailure => !isSuccess;

  ApiResult({required this.isSuccess, this.outputModel, this.statusMessage});
}
