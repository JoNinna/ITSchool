import psutil

print(f"Numarul de procesoare este: {psutil.cpu_count()}")

disk_usage = psutil.disk_usage("/")
disk_usage_total = disk_usage.total
print(f"Se foloseste: {disk_usage_total/(1024**3):.2f} GB din memorie")

disk_usage_free = disk_usage.free
print(f"Mai sunt: {disk_usage_free/(1024**3):.2f} GB din memorie")

for proc in psutil.process_iter(["username","pid","name","status"]):
    print(proc.info)