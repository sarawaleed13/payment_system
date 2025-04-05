# payment_system
# 💳 Payment Processor in Dart  

This project demonstrates the **Strategy Design Pattern** in Dart, allowing flexible payment processing using different payment methods like **Cash** and **Credit Card**.  

## 🚀 Features  
✅ Implements the **Strategy Pattern** to decouple payment logic.  
✅ Uses **Dependency Injection**, allowing dynamic selection of payment methods.  
✅ Provides a clean, scalable design for adding future payment methods (e.g., PayPal, Crypto).  

## 🛠️ How It Works  
- `PaymentMethod` (abstract class) defines a common interface for all payment methods.  
- `CashPayment` and `CreditPayment` implement the `pay()` method differently.  
- `PaymentProcessor` dynamically takes a `PaymentMethod` and processes payments.  

## 📌 Code Example  
```dart
void main() {
  PaymentProcessor cashPayment = PaymentProcessor(CashPayment());
  cashPayment.processPayment(50.0);

  PaymentProcessor creditPayment = PaymentProcessor(CreditPayment());
  creditPayment.processPayment(100.0);
}
