from fastapi import FastAPI
from pydantic import BaseModel
 
app = FastAPI()

#define a data model 

class Item(BaseModel):
    name: str
    price: float
    

@app.get('/')
def getItem():
    return {"message":"Welcome To an inventory"}

@app.post("/items/")
def create_item(item: Item):
    return {"message":f"Item '{item.name}' added successfully!","price":item.price}


