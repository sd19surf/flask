from flask import Flask


def create_app():
    app = Flask(__name__)

    # register routes with app instead of current_app:
    from app.main import bp as main_bp
    app.register_blueprint(main_bp)

    return app