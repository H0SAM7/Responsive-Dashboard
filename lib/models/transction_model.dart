class TransctionModel {
  final String title, date, amount;
  final bool isWithdrawal;

 const TransctionModel(
      {required this.title,
      required this.amount,
      required this.date,
      required this.isWithdrawal});
}
