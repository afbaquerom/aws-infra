from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Welcome to the AWS GitHub Terraform Project!"}

@app.get("/health")
def health_check():
    return {"status": "healthy"}