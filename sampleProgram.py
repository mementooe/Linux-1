import time
from datetime import datetime
path_to_file = "/home/alex/timestamp"
while True:
    with open(path_to_file, "a") as f:
        f.write("\nThe current timestamp is: " + str(datetime.now()))
        f.close()
    time.sleep(10)
