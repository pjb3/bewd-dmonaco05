# Assignment for Ruby Basics

Create a method called `calculate_total` that accepts an order represented as an Array of Hashes and calculates the total cost of the order. Each Hash should represent a line item of the order with a key for the quantity and a key for the unit price of the item. After calculating the total of the order and additional tax rate of 5% should be added. The return value should be a string, the total formatted as a price with 2 decimal points and a dollar sign, such as `$1.99`.

You program should some with a unit test that tests that:

1. An empty order has a total price of `$0.00`

2. An order with 1 line item with a quantity of 2 and a unit price of `$2.00` has a total of `$4.20`.

3. An order with 2 line items, the first with a quantity of 2 and unit price of `$2.00` and the second with a quantity of 3 and a unit price of `$0.89` has a total of `$7.00`.

## Hints

* Don't hard code the tax rate as a magic number. If you aren't sure how to avoid that, refer to this slide on [when to use constants](http://pjb3.github.io/back-end-web-development/01_command_line_git_ruby/ruby_basics#18)

* Make sure you know how to create an Array of Hashes first. If you are not sure, re-read the slides on [Arrays](http://pjb3.github.io/back-end-web-development/01_command_line_git_ruby/ruby_basics#13) and [Hashes](http://pjb3.github.io/back-end-web-development/01_command_line_git_ruby/ruby_basics#22)

* Not sure how to format a float as a dollar amount? Re-read the [slide on string formatting](http://pjb3.github.io/back-end-web-development/01_command_line_git_ruby/ruby_basics#10)

## Extra Credit

1. To call the `calculate_total` method with no line items, you have to pass in an empty array. Can you make it so that if can work with no argument at all?

2. To call the `calculate_total` method with multiple line items, you have to pass in an array of hashes. Can you make it so that it will work with each Hash as an argument to the method?
