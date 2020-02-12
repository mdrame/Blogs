# app.py
from flask import Flask, request, render_template


app = Flask(__name__)

@app.route('/') #index
def dashBoard():


  return render_template("index.html")



if __name__ == '__main__':
    # Threaded option to enable multiple instances for multiple user access support
    app.run(debug=True)



