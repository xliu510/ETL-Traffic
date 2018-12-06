from flask import Flask, jsonify, request, render_template
import pymysql
pymysql.install_as_MySQLdb()


#################################################
# DB Setup
#################################################

db = pymysql.connect("localhost", "root", "W0deSQL", "ETL_Traffic_UK")

#################################################
# Flask Setup
#################################################

app = Flask(__name__)
#api = Api(app)

#################################################
# Flask Routes
#################################################

@app.route("/")
def main():
    return render_template('index.html')

@app.route("/data2014")
def data2014():
    cursor = db.cursor()
    sql = "SELECT nationality,total_minor,total_adult,total_all FROM data_2014 ORDER BY CAST(total_all as SIGNED INTEGER)  desc"
    cursor.execute(sql)
    results = cursor.fetchall()
    return render_template('data2014.html', results=results)

if __name__ == '__main__':
    app.run(debug=True)

@app.route("/data2015")
def data2015():
    cursor = db.cursor()
    sql = "SELECT * FROM data_2015 ORDER BY CAST(`2015 Total` as SIGNED INTEGER)  desc"
    cursor.execute(sql)
    results2015 = cursor.fetchall()
    return render_template('data2015.html', results2015=results2015)

if __name__ == '__main__':
    app.run(debug=True)

@app.route("/data2016")
def data2016():
    cursor = db.cursor()
    sql = "SELECT * from data_2016 ORDER BY CAST(`2016 Total` as SIGNED INTEGER)  desc"
    cursor.execute(sql)
    results2016 = cursor.fetchall()
    return render_template('data2016.html', results2016=results2016)

if __name__ == '__main__':
    app.run(debug=True)
