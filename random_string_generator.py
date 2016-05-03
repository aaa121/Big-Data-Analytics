import string
import random
import timeit

def random_string(length):
    rndstring=''
    for i in range(length):
        rndstring+=random.choice(string.ascii_letters)
    return rndstring

print(random_string(6))
print(random_string(6).upper())
print(random_string(6).lower())

#Store the random string in a dictionary
email_id={}
email_pg={}
for i in range(0,5):
    email_id[random_string(3)]=random_string(6).upper()
    email_pg[i] = random_string(5).lower()
print(email_id)
print(email_pg)
print(email_pg[3])


print(round(timeit.timeit(),3))

