import 'dart:io';


class Product
{
  var name;
  var price;

  Product(var  name ,double price)
  {
    this.name = name;
    this. price = price;
  }

}

class Cart
{
  List<Product> itame = [Product("a", 0.00)];

  addProduct(Product)
  {
    itame.add(Product);
    print("${Product.name} add cart : ");
  }

  viewcart()
  {
    if(itame.isEmpty)
    {
      print("YOUR CART IS EMPTY");
    }
    else
    {
      print("itame in your cart");
      for(int i =0 ;i<itame.length;i++)
      {
        print("${i + 1}.${itame[i].name} = ${itame[i].price}");
      }
    }
  }

  Total()
  {
    var total = 0.00;
    for(var itames in itame)
    {
      total += itames.price;
    }
    print("your total is :$total");
  }

  clearCart()
  {
    itame.clear();
  }

  Productadd()
  {
    List<Product> p1 =
    [
      Product("1. Apple", 40.00),
      Product("2. Banana", 10.50),
      Product("3. Orange", 25.75),
      Product("4. Grapes", 35.00),
      Product("5. Mango", 50.00),
      Product("6. Pineapple", 45.25),
      Product("7. Strawberry", 60.00),
      Product("8. Watermelon", 30.00),
      Product("9. Peach", 55.10),
      Product("10. Blueberry", 70.00),
    ];

    for(var data in p1)
    {
      print("${data.name} : ${data.price}");
    }
    print('Enter product number to add (1-${p1.length}): ');
    var input = int.parse (stdin.readLineSync()!.toString());

    if (input != 0  && input >= 1 && input<= p1.length)
    {
      addProduct(p1[input - 1]);
    }
    else
    {
      print('Invalid product selection.');
    }

  }

  main()
  {
    while (true)
    {
      print("=====  CART MENU =====");
      print('1. Add Product');
      print('2. View Cart');
      print('3. Show Total');
      print('4. Place Order');
      print('5. Exit');
      print('Enter your choice (0-4): ');
      var choice = int.parse(stdin.readLineSync().toString());

      switch (choice)
      {

        case 1:
          Productadd();
          break;

        case 2:
          viewcart();
          break;

        case 3:
          Total();
          break;

        case 4:
          var order = Order(this);
          order.placeOrder();
          break;

        case 5:
          print("Good bayyyyyyyy");
          break;

        default:
          print("You silicate within 1 to 4");
      }
    }
  }

}

class Order
{
  var cart;

  Order(this.cart);

  void placeOrder()
  {
    if (cart.itame.isEmpty)
    {
      print("Cannot place order. Cart is empty.");
    } else {
      print("\n=== Order Placed Successfully! ===");
      print("Receipt:");
      cart.viewcart();
      cart.Total();
      cart.clearCart();
      print("Thank you for your purchase!\n");
    }
  }
}
void main()
{
  var cart = Cart();

  cart.main();
}

