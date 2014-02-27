# Object-Oriented Order Calculator

In this assignment we will be creating an object-oriented order total price calculator. Your branch already has a failing test, your job is to make it pass. You will not need to make changes to the test file, but feel free to add more tests to the test file if it can help you in developing the code. Create a new file named 'order.rb' and put your code in there.

To do this, you will need to make 3 classes.

1. Product

    The product class needs to have name and price accessors and a constructor to allow you to set those values. If you aren't sure how to do this, refer to [the slides on the flexible initializer](http://pjb3.github.io/back-end-web-development/01_command_line_git_ruby/object_oriented_programming_with_ruby#16)

    The product class will also need to be capable of storing an Array of products. When you call the add class method on Product, it should instantiate a new Product and save it in an Array that is an instance variable on the class. To do this, you should assign an empty Array to an instance variable if it has not been assigned a value yet. If you are not sure how to do this, review [the slide on State](http://pjb3.github.io/back-end-web-development/01_command_line_git_ruby/object_oriented_programming_with_ruby#8), but remember, in this case you are creating an instance variable on the class, not on an instance, so this needs to happen in a class method.

    Finally you will need a class method on Product to find the a product instance that was previously added to the Array that has the same name as the name passed as an argument to the to the method. If you aren't sure how to do this, refer to [this slide](http://pjb3.github.io/back-end-web-development/01_command_line_git_ruby/functional_programming_with_ruby#15).

2. Line Item

    You will need a class to represent a line item of the order. This class should have 2 variables, the quantity and the product. The quantity is just a number but the product should be an instance of Product that was created when you called the product add method. To instantiate a line item, the code that does that will have to look up the Product first and then pass it to the line item initializer.

    LineItem should have a method to calculate the price for that line item, which would be the quantity times the price of the product.

3. Order

    The order class will need to have a tax rate accessor and an initialize method that allows you to pass in the tax rate as a keyword argument. The order class will also need to have an Array of line items. Each time you call add on the order, it should look up the product that matches the name, instantiate a LineItem and add it to the products Array of line items.

    Finally Order needs a method to calculate the total price by summing up the price of its line items, apply the tax rate and then round it to 2 decimals. If aren't sure how to create the sum, [refer to this slide](http://pjb3.github.io/back-end-web-development/01_command_line_git_ruby/functional_programming_with_ruby#14).

Extra Credit:

1. What happens when you call the method to find a product by name before you have added any products? Can you make it return nil instead?

2. What happens when you try to add a product to an order and there is no product that matches the name? Can you make it raise an error that says "No such product" instead?
