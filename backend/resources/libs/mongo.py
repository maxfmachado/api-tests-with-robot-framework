from pymongo import MongoClient
client = MongoClient('mongodb+srv://max:mudar123@cluster0.lazkm.mongodb.net/rocklov?retryWrites=true&w=majority')

db = client['rocklov']

def remove_user_by_email(user_email):
    users = db['users']
    users.delete_many({'email': user_email})