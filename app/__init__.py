from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager
from flask_bcrypt import Bcrypt
from config import Config

# Initialize extensions
app = Flask(__name__)
db = SQLAlchemy()
bcrypt = Bcrypt(app)

app.config.from_object(Config)
app.url_map.strict_slashes = False
db.init_app(app)

login_manager = LoginManager(app)

if app:
    from app.routes import main
    app.register_blueprint(main)    
