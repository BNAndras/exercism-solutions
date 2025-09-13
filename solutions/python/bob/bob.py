def response(hey_bob):
    if is_silence(hey_bob):
        return "Fine. Be that way!"
    if is_loud(hey_bob) and is_question(hey_bob):
        return "Calm down, I know what I'm doing!"
    if is_loud(hey_bob):
        return "Whoa, chill out!"
    if is_question(hey_bob):
        return "Sure."
    return "Whatever."


def is_silence(hey_bob):
    return hey_bob.strip() == ''


def is_loud(hey_bob):
    return any(char.isalpha() for char in hey_bob) and hey_bob.upper() == hey_bob


def is_question(hey_bob):
    return hey_bob.strip().endswith('?')
