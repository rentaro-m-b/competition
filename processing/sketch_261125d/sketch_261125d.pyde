def euclidean_algorithm(x, y):
    quotient = 0
    remainder = y
    while (remainder > 0):
        quotient = x / y
        remainder = x % y
        x = y
        y = remainder
    print(f"GCD is {x}")

euclidean_algorithm(10,2)
