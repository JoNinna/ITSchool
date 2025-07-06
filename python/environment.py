import os

os.environ["NUME_CURSANT"] = "Ninna Cosa"

for key in os.environ: 
    value = os.environ[key]
    print(f"{key}: {value}")

token = os.getenv("TOKEN", "Nu exista!") #seteaza o valoare pentru variabila pe care o returneaza, in cazul in care variabila nu existaexport 
print(token) #daca rulam comanda export TOKEN=valoare_variabila, va returna valoare_variabilaunse

if "TOKEN" in os.environ:
    token = os.environ["TOKEN"]
    print(token)
else:
    print("Variabila TOKEN nu a fost definita!")