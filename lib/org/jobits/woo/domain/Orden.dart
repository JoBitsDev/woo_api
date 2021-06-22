class Orden {
  late int id;

  //LocalDateTime date_created;
  //OrderStatus status;
  late String currency;

  //ShippingInfo shipping;
  //BillingInfo billing;
  //List<Producto> line_items;
  late String customer_note;

  Orden(this.id, this.currency, this.customer_note);

  Orden.fromJson(Map<String, dynamic> data) {
    currency = data['currency'];
    id = data['id'];
    customer_note = data['customer_note'];
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'currency': currency,
    'customer_note': customer_note,
  };
}
