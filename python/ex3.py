import sys

user_admin="admin"
pass_admin="admin"

prompt_user=input("Introduceti user: ")
prompt_pass=input("Introduceti parola: ")

if user_admin==prompt_user and pass_admin=prompt_pass:
    print("Esti logat")
else:
    print("Nu esti!")
    sys.exit(404)
