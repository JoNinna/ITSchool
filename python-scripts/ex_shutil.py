import shutil
import os

os.makedirs("sub_shutils", exist_ok=True)

shutil.copy2("process_util.py","sub_shutils/process_util.py")

shutil.make_archive("arhiva", format="zip", root_dir="sub_shutils")

shutil.unpack_archive("arhiva.zip", "/tmp")