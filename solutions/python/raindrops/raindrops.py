def convert(number):
    noise = ""
    if not number % 3:
        noise = "Pling"
    if not number % 5:
        noise += "Plang"
    if not number % 7:
        noise += "Plong"

    return noise if noise else f"{number}"
