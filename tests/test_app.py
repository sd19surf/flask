from app import create_app

def test_index(client):
    response = client.get("/")
    assert response.data == b"Index Page"

def test_hello(client):
    response = client.get("/hello")
    assert response.data == b"Hello World!"
