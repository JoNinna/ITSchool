import random
import json
import os

min_value = int(os.getenv("MIN_VAL",1))
max_value = int(os.getenv("MAX_VAL",100))


numar_generat = random.randint(min_value, max_value)
# print(numar_generat)

counter = 0

FILE_ISTORIE_JOC = "istorie_joc.json"
if os.path.exists("FILE_ISTORIE_JOC"):
     with open("FILE_ISTORIE_JOC", "r") as file:
          istorie_joc = json.load(file)
else:
     istorie_joc = {}

def verificare(min_arg, max_arg=100):
        while True:
            try:
                numar_introdus=input(f"Introduceti un numar intre {min_arg} si {max_arg}: ")
                if int(numar_introdus) >= min_arg and int(numar_introdus) <= max_arg:
                     return int(numar_introdus)
                else:
                     print(f"Numarul introdus trebuie sa fie intre {min_arg} si {max_arg}")
                return int(numar_introdus)
            except Exception as e:
                print(f"Atentie! {e}")
                continue

while True:
        numar_introdus = verificare(min_value, max_value)
        counter += 1
        if numar_introdus < numar_generat:
             print(f"Numarul introdus este mai mic decat numarul generat! Sunteti la a {counter} incercare!")
        elif numar_introdus > numar_generat:
             print(f"Numarul introdus este mai mare decat numarul generat! Sunteti la a {counter} incercare!")
        elif numar_introdus == numar_generat:
             print(f"Felicitari, ati ghicit numarul!")
             break
        
user_name = input("Introduceti numele jucatorului: ")

if user_name in istorie_joc:
      print("User-ul introdus este deja in baza de date!")
      incercari_anterioare = istorie_joc[user_name]
      if incercari_anterioare > counter:
            istorie_joc[user_name] = counter
else:
      istorie_joc[user_name] = counter
for user in istorie_joc:
      print(f"{user}: {istorie_joc[user]}")

with open("FILE_ISTORIE_JOC","w") as f:
         json.dump(istorie_joc, f)

