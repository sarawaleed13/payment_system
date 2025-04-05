// Abstract class defining the PaymentMethod interface
abstract class PaymentMethod {
  void pay(double amount); // Abstract method to be implemented by subclasses
}

// Concrete class implementing PaymentMethod for Cash Payment
class CashPayment implements PaymentMethod {
  @override
  void pay(double amount) {
    print("Payment of \$$amount made using Cash."); // Prints payment confirmation
  }
}

// Concrete class implementing PaymentMethod for Credit Card Payment
class CreditPayment implements PaymentMethod {
  @override
  void pay(double amount) {
    print("Payment of \$$amount made using Credit Card."); // Prints payment confirmation
  }
}

// PaymentProcessor class that accepts a PaymentMethod dynamically
class PaymentProcessor {
  final PaymentMethod paymentMethod; // Dependency Injection of PaymentMethod

  PaymentProcessor(this.paymentMethod); // Constructor to initialize payment method

  // Processes the payment by calling the pay method of the chosen payment type
  void processPayment(double amount) {
    paymentMethod.pay(amount);
  }
}

// Main function demonstrating the use of PaymentProcessor with different payment methods
void main() {
  // Process payment using Cash
  PaymentProcessor cashPayment = PaymentProcessor(CashPayment());
  cashPayment.processPayment(50.0);

  // Process payment using Credit Card
  PaymentProcessor creditPayment = PaymentProcessor(CreditPayment());
  creditPayment.processPayment(100.0);
}
