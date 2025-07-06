import json
import os
import sys

def adauga_cursant(cursanti):
    nume_introdus = input("Introduceti numele: ")
    prenume_introdus = input("Introduceti prenumele: ")
    parola_introdusa = input("Introduceti parola: ")
    cursant_nou = {
        "nume_introdus": nume_introdus,
        "prenume_introdus": prenume_introdus,
        "parola_introdusa": parola_introdusa
    }
    return(cursant_nou)

def logare(detalii_cursant):

    for i in range(1,4):
        nume_user = input("Introduceti prenume userul: ")
        if nume_user == detalii_cursant["prenume"] and detalii_cursant["este_blocat"]:
            print("Utilizator blocat!")
            sys.exit(1)
        else:
            parola_user = input(f"Introduceti parola pentru userul {nume_user}: ")
            if nume_user == detalii_cursant["prenume"] and parola_user == detalii_cursant["parola"]:
                print("Esti logat!")
                break
            else:
                print("Parola gresita!")
                if i == 3:
                    detalii_cursant["este_blocat"] = True
            return detalii_cursant

cursanti = {}

#adauga_cursant(cursanti)

if os.path.isfile("/home/ninna/work/ITSchool/scripts/python/dict.json"): #testeaza daca fisierul de la calea data exista
    with open("/home/ninna/work/ITSchool/scripts/python/dict.json", "r") as fisier:
        detalii_cursant = json.load(fisier) 
        logare(detalii_cursant)

with open("/home/ninna/work/ITSchool/scripts/python/dict.json", "a") as file:
    json.dump(detalii_cursant, file, indent=4)
    print("Fisier JSON creat!")





