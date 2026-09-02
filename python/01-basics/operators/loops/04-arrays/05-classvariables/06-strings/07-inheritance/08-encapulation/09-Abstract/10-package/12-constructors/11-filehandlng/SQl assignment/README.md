SQL Assignment

1. Display snum, sname, city and comm of all salespeople.
2. Display all snum without duplicates from all orders.
3. Display names and commissions of all salespeople in London.
4. Display all customers with a rating of 100.
5. Produce order number, amount and date from all rows in the orders table.
6. Display all customers in San Jose who have a rating more than 200.
7. Display all customers either located in San Jose or having a rating above 200.
8. Display all orders for more than $1000.
9. Display names and cities of all salespeople in London with commission above 0.10.
10. Display all customers excluding those with rating <= 100 unless located in Rome.
11. Display all salespeople either in Barcelona or London.
12. Display all salespeople with commission between 0.10 and 0.12, excluding boundaries.
13. Display all customers with NULL city.
14. Display all orders taken on October 3 and October 4, 1994.
15. Display all customers serviced by Peel or Motika.
16. Display all customers whose names begin with A to B.
17. Display all orders except those with 0 or NULL amount.
18. Count the number of salespeople currently listing orders in the orders table.
19. Find the largest order taken by each salesperson.
20. Find the largest order taken by each salesperson with order value greater than $3000.
21. Find the day that had the highest total amount ordered.
22. Count all orders for October 3, 1994.
23. Count the number of different non-NULL city values in the customers table.
24. Select each customer's smallest order.
25. Find the first customer alphabetically whose name begins with G.
26. Display the result in the format: "For dd/mm/yy there are ___ orders."
27. Assume each salesperson has 12% commission. Produce order number, salesperson number and salesperson commission for that order.
28. Find the highest rating in each city.
29. Display totals of orders for each day in descending order.
30. Display all combinations of salespeople and customers who shared a city.
31. Display names of all customers matched with the salespeople serving them.
32. List each order number followed by the name of the customer who made the order.
33. Display the salesperson and customer name for each order.
34. Display all customers serviced by salespeople with commission above 12%.
35. Calculate salesperson commission on each order with rating above 100.
36. Find all pairs of customers having the same rating.
37. Find all pairs of customers having the same rating, displaying each pair only once.
38. Display all combinations of three salespeople.
39. Display all customers located in cities where salesperson Serres has a customer.
40. Find all pairs of customers served by the same salesperson.
41. Find all pairs of salespeople living in the same city, excluding self and reverse duplicates.
42. Find all pairs of orders made by the same customer and eliminate duplicates.
43. Display names and cities of all customers having the same rating as Hoffman.
44. Extract all orders of Motika.
45. Display all orders credited to the same salesperson who services Hoffman.
46. Display all orders greater than the average order amount for October 4, 1994.
47. Find the average commission of salespeople in London.
48. Display all orders attributed to salespeople servicing customers in London.
49. Extract commissions of all salespeople servicing customers in London.
50. Find all customers whose cnum is 1000 above the snum of Serres.
51. Count customers with a rating above the average rating of customers in San Jose.
52. Display all orders for the customer named Cisnerous.
53. Display names and ratings of customers who have above-average orders.
54. Find the total amount of orders for each salesperson whose total is greater than the largest order in the table.
55. Display all customers who had an order on October 3, 1994.
56. Display names and numbers of all salespeople who have more than one customer.
57. Check whether the correct salesperson was credited with each sale.
58. Find all orders with above-average amounts for their customers.
59. Find the sums of the amounts from the orders table grouped by date, eliminating dates where the sum was not at least 2000 above the maximum amount.
60. Find names and numbers of all customers with ratings equal to the maximum for their city.
61. Find all salespeople who have customers in their cities whom they do not service, using both JOIN and correlated subquery.
62. Extract cnum, cname and city from the customer table if and only if one or more customers are located in San Jose.
63. Find salesperson numbers who have multiple customers.
64. Find salesperson number, name and city for salespeople who have multiple customers.
65. Find salespeople who serve only one customer.
66. Extract rows of all salespeople with more than one current order.
67. Find all salespeople who have customers with a rating of 300 using EXISTS.
68. Find all salespeople who have customers with a rating of 300 using JOIN.
69. Select all salespeople with customers located in their cities who are not assigned to them using EXISTS.
70. Extract every customer assigned to a salesperson who currently has at least one other customer with orders in the orders table.
71. Find salespeople with customers located in their cities using both ANY and IN.
72. Find all salespeople for whom there are customers that follow them in alphabetical order using ANY and EXISTS.
73. Select customers who have a greater rating than any customer in Rome.
74. Select all orders whose amounts were greater than at least one order from October 6, 1994.
75. Find all orders with amounts smaller than any amount for a customer in San Jose using both ANY and without ANY.
76. Select customers whose ratings are higher than every customer in Paris using both ALL and NOT EXISTS.
77. Select all customers whose ratings are equal to or greater than ANY customer of Serres.
78. Find all salespeople who have no customers located in their city using both ANY and ALL.
79. Find all orders for amounts greater than any order for customers in London.
80. Display all salespeople and customers located in London.
81. For every salesperson, display the dates on which the highest and lowest orders were brought.
82. List all salespeople and indicate those who do not have customers in their cities as well as those who do.
83. Append strings to the selected fields indicating whether or not a given salesperson was matched to a customer in his city.
84. Create a UNION of two queries showing the names, cities and ratings of all customers. Customers with rating 200 or greater should have "High Rating", while others should have "Low Rating".
85. Produce the name and number of each salesperson and each customer with more than one current order, in alphabetical order.
86. Form a UNION of three queries: snums of salespeople in San Jose, cnums of customers in San Jose and onums of orders on October 3. Retain duplicates between the last two queries while eliminating redundancies with the first.
87. Produce all salespeople in London who had at least one customer there.
88. Produce all salespeople in London who did not have customers there.
89. Display salespeople matched to their customers without excluding salespeople who are not currently assigned to any customers, using an OUTER JOIN and UNION.
