from dotenv import load_dotenv
from os import environ

load_dotenv()

class Environment():
    DB_URL = environ.get('DB_URL')
    DB_HOST = environ.get('DB_HOST')
    DB_PORT = environ.get('DB_PORT')
    DB_NAME = environ.get('DB_NAME')

env = Environment()