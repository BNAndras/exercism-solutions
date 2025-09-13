def is_isogram(string):
    seen = set()
    letters = (char.lower() for char in string if char.isalpha())
    for letter in letters:
        if letter in seen:
            return False
        seen.add(letter)
    return True
