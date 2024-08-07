from fastapi import FastAPI
from iris.router import iris_classifier_router

app = FastAPI()
app.include_router(iris_classifier_router.router, prefix="/iris")


@app.get("/healthcheck", status_code=200)
async def healthcheck():
    return "Iris classifier is all ready to go!"
