 #!/usr/bin/python3
import pymysql

from flask import Flask, render_template
app = Flask(__name__, template_folder='templates')
class Database:
    def __init__(self):
        host = "localhost"
        user = "root"
        password = "password"
        db = "manuelDB"
        self.con = pymysql.connect(host=host, user=user, password=password, db=db, cursorclass=pymysql.cursors.DictCursor)
        self.cur = self.con.cursor()
    def Idoso(self):
        self.cur.execute("SELECT nomeIdoso, loginIdoso FROM Idoso WHERE idadeIdoso = 70")
        result = self.cur.fetchall()
        return result
@app.route('/')
def Idoso():
    def db_query():
        db = Database()
        oldAge = db.Idoso()
        return oldAge
    res = db_query()
    return render_template('idosos.html')