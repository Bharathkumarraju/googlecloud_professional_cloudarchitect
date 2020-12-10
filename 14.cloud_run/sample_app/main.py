from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route('/')
def main():
    print(request.headers)
    print(request.headers.get('Accept', 'No Accept'))
    print(request.headers.get('X-Real-Ip', 'No X-Real-Ip'))
    print(request.headers.get('X-REAL-IP', 'No X-Real-Ip'))
    return jsonify(dict(request.headers))

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080, debug=True, threaded=True)
