As a MarsAir Sales Director (Mark)
I want to distribute promotional codes to customers
So that they get discounts and are more tempted to purchase tickets

Acceptance criteria
Promotional codes are in the format XX9-XXX-999.
Characters are all random.
The first digit indicates the discount percentage (2 = 20%, 3 = 30% etc).
The next two digits are random.
The final digit is a check digit; it is equal to the sum of all other digits modulo 10, eg:

AF3-FJK-41?: 3 + 4 + 1 = 8, so the complete promotional code is AF3-FJK-418
JJ5-OPQ-32?: 5 + 3 + 2 = 10, so the complete promotional code is JJ5-OPQ-320

When a valid code is entered, the search result should have a “Promotional code [code] used: [discount]% discount!” message.
Otherwise, show “Sorry, code [invalid promo code] is not valid”.