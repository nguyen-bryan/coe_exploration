from flask import Flask
import datetime
 
x = datetime.datetime.now()
 
# Initializing flask app
app = Flask(__name__)
 
 
# Route for seeing a data
@app.route('/api/data')
def get_time():
 
    # Returning an api for showing in  reactjs
    return {
        'Name':"Gizmo", 
        "Age":"1 minute",
        "Date":x, 
        }
 
     
# Running app
#if __name__ == '__main__':
#    app.run(debug=True)