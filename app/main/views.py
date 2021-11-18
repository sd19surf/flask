from app.main import bp


@bp.route('/')
def index():
    return 'Index Page'


@bp.route('/hello')
def hello():
    return 'Hello World!'
