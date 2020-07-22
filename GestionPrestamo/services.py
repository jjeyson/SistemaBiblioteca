import requests

def generate_request(url, params={}):
    response = requests.get(url, params=params)

    if response.status_code == 200:
        return response.json()

def get_username(params={}):
    response = generate_request('http://127.0.0.1:8001/libros/default/call/json/myapi', params)
    if response:
       #user = response.get('results')[0]
       res = response.get('result')+' '+response.get('status')
       return res
       #return user.get('name').get('first')
    return 'Jason'

def get_recomendations(params={}):
    response = generate_request('http://127.0.0.1:8001/libros/default/call/json/get_recomendations_libros', params)
    if response:
       res = response.get('tituloLibro')+' '+response.get('codigoLibro'+' '+response.get('anioPublicacionLibro'))
       return res
    else:
        return 'Problemas con el Servicio de Recomendaciones'
