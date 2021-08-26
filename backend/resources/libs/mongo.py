from pymongo import MongoClient
import  bson
client = MongoClient('mongodb+srv://max:mudar123@cluster0.lazkm.mongodb.net/rocklov?retryWrites=true&w=majority')

db = client['rocklov']

def get_mongo_id():
    return bson.objectid.ObjectId()

def remove_user_by_email(user_email):
    users = db['users']
    users.delete_many({'email': user_email})

def remove_equipo(equipo_name):
    equipos = db['equipos']
    equipos.delete_many({'name': equipo_name})
