from flask import Flask, render_template, request, jsonify, json
app = Flask(__name__)

@app.route("/api/items")
def get_items():
  return jsonify({"what_to_do":"nil"})

@app.route("/add", methods=['POST'])
def add_entry(): # this is the counterpart of add_entry() from homework 3
    tdlist = {}
    tdlist["What to do"] = request.form['what_to_do']
    tdlist["Due date"] = request.form['due_date']
    return jsonify(tdlist )

if __name__ == "__main__":
    app.run("0.0.0.0", port="5000")


