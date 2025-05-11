from flask import Flask, jsonify, request, render_template_string

# Create Flask app instance
app = Flask(__name__)

# Simple HTML template
HTML_TEMPLATE = """
<!DOCTYPE html>
<html>
<head>
    <title>Flask Demo App</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .endpoint { background-color: #f0f0f0; padding: 10px; margin: 10px 0; }
    </style>
</head>
<body>
    <h1>Welcome to Flask Demo App!</h1>
    <p>Current time: {{ current_time }}</p>
    
    <h2>Available Endpoints:</h2>
    <div class="endpoint">
        <strong>GET /</strong> - This home page
    </div>
    <div class="endpoint">
        <strong>GET /api/hello</strong> - Returns a JSON greeting
    </div>
    <div class="endpoint">
        <strong>GET /api/user/&lt;name&gt;</strong> - Greet a specific user
    </div>
    <div class="endpoint">
        <strong>POST /api/data</strong> - Echo posted JSON data
    </div>
    <div class="endpoint">
        <strong>GET /api/items</strong> - Get paginated items (query params: page, per_page)
    </div>
</body>
</html>
"""

# Home route
@app.route('/')
def home():
    from datetime import datetime
    return render_template_string(HTML_TEMPLATE, current_time=datetime.now().strftime('%Y-%m-%d %H:%M:%S'))

# Simple API endpoint
@app.route('/api/hello')
def hello_api():
    return jsonify({
        'message': 'Hello from Flask!',
        'status': 'success'
    })

# Route with URL parameter
@app.route('/api/user/<name>')
def greet_user(name):
    return jsonify({
        'message': f'Hello, {name}!',
        'user': name,
        'status': 'success'
    })

# POST endpoint
@app.route('/api/data', methods=['POST'])
def handle_data():
    if request.is_json:
        data = request.get_json()
        return jsonify({
            'received': data,
            'message': 'Data received successfully',
            'status': 'success'
        })
    else:
        return jsonify({
            'error': 'Request must be JSON',
            'status': 'error'
        }), 400

# GET endpoint with query parameters
@app.route('/api/items')
def get_items():
    page = request.args.get('page', 1, type=int)
    per_page = request.args.get('per_page', 10, type=int)
    
    # Generate dummy items
    start = (page - 1) * per_page
    end = start + per_page
    items = [{'id': i, 'name': f'Item {i}'} for i in range(start + 1, end + 1)]
    
    return jsonify({
        'items': items,
        'page': page,
        'per_page': per_page,
        'total': 100,  # Dummy total
        'status': 'success'
    })

# Error handler for 404
@app.errorhandler(404)
def not_found(error):
    return jsonify({
        'error': 'Endpoint not found',
        'status': 'error'
    }), 404

# Error handler for 500
@app.errorhandler(500)
def internal_error(error):
    return jsonify({
        'error': 'Internal server error log',
        'status': 'error'
    }), 500

if __name__ == '__main__':
    # Run the app in debug mode
    app.run(debug=True, host='0.0.0.0', port=8000)