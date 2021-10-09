from fastapi import FastAPI
from fastapi.responses import JSONResponse

# my modules
app = FastAPI()


@app.get("/")
async def root():
    """Hello World message"""
    return {"message": "Hello, try other paths!"}