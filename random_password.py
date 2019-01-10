#!/usr/bin/env python

import random
import string


import random
import string

def password_gen():
    lower_case_letter = random.choice(string.ascii_lowercase)
    upper_case_letter = random.choice(string.ascii_uppercase)
    number = random.choice(string.digits)
    other_characters = [
        random.choice(string.ascii_letters + string.digits)
        for index in range(random.randint(50, 50))
    ]

    all_together = [lower_case_letter, upper_case_letter] + other_characters

    random.shuffle(all_together)

    return ''.join(all_together)

print password_gen()
