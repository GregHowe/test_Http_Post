import 'dart:convert';

Sale saleFromJson(String str) => Sale.fromJson(json.decode(str));

String saleToJson(Sale data) => json.encode(data.toJson());

class Sale {
    int customerId;
    List<Detail> details;

    Sale({
        this.customerId,
        this.details,
    });

    factory Sale.fromJson(Map<String, dynamic> json) => Sale(
        customerId: json["customerId"],
        details: List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "customerId": customerId,
        "details": List<dynamic>.from(details.map((x) => x.toJson())),
    };
}

class Detail {
    String detailId;
    String saleId;
    int productId;
    int quantity;
    int price;
    String currency;
    int status;

    Detail({
        this.detailId,
        this.saleId,
        this.productId,
        this.quantity,
        this.price,
        this.currency,
        this.status,
    });

    factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        detailId: json["detailId"],
        saleId: json["saleId"],
        productId: json["productId"],
        quantity: json["quantity"],
        price: json["price"],
        currency: json["currency"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "detailId": detailId,
        "saleId": saleId,
        "productId": productId,
        "quantity": quantity,
        "price": price,
        "currency": currency,
        "status": status,
    };
}