""" 
Deverloped by : Ashish
"""
from flask import Flask

app = Flask(__name__,
            static_url_path='', 
            static_folder='/mnt/')

@app.route('/<path:path>')
def static_file(path):
    return app.send_static_file(path)

if __name__ == '__main__':  # pragma: no cover
    app.run(port=5000)
