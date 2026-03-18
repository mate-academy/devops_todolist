from flask import Flask, Response, send_file
from flask_sqlalchemy import SQLAlchemy
import os

app = Flask(__name__)

# Access the environment variable
appEnv = os.environ.get("APP_ENV", "Development")

# Configure the MySQL database connection
db_host = os.environ.get("DB_HOST", "localhost")
app.config['SQLALCHEMY_DATABASE_URI'] = f'mysql+mysqlconnector://app_user:1234@{db_host}/app_db'

db = SQLAlchemy(app)

# Define a Counter model
class Counter(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    value = db.Column(db.Integer)

# Initialize the database
with app.app_context():
    counter = Counter.query.first()
    if counter is None:
        counter = Counter(value=0)
        db.session.add(counter)
        db.session.commit()

@app.route('/')
def hello():
    counter = Counter.query.first()
    counter.value += 1
    db.session.commit()
    return f'''
    Docker is Awesome! My ENV var is: {appEnv}<br>
    Page reload count: {counter.value}<br>
<pre>                   ##        .</pre>
<pre>             ## ## ##       ==</pre>
<pre>          ## ## ## ##      ===</pre>
<pre>      /""""""""""""""""\\___/ ===</pre>
<pre> ~~~ (~~ ~~~~ ~~~ ~~~ ~~ ~ /  ===--- ~~~</pre>
<pre>      \\______ o          __/</pre>
<pre>        \\    \\        __/</pre>
<pre>         \\____\\______/</pre>
    '''

@app.route('/logo')
def docker_logo():
    return send_file('docker-logo.png', mimetype='image/png')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
