import logging
import time

# Log to file and console
logging.basicConfig(
    level=logging.DEBUG,
    format="%(asctime)s - %(levelname)s - %(message)s",
    handlers=[
        logging.FileHandler("/tmp/logs/app.log"),
        logging.StreamHandler()
    ]
)

while True:
	logging.info("Hello from inside the docker container!")
	time.sleep(5)
