from flask import Flask, render_template, request, redirect
from flask_mysqldb import MySQL
import os

app = Flask(__name__)
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'Digidara1000'
app.config['MYSQL_DB'] = 'faculty_db'

mysql = MySQL(app)
@app.route('/')
def faculty_home():
    return render_template('faculty_home.html')


@app.route('/showfaculty')
def show_faculty():
    cur = mysql.connection.cursor()
    cur.execute("SELECT id, name, title, department, photo FROM faculty")
    faculty_list = cur.fetchall()
    return render_template('faculty_list.html', faculty=faculty_list)

@app.route('/faculty/<int:id>')
def view_profile(id):
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM faculty WHERE id = %s", (id,))
    faculty = cur.fetchone()
    return render_template('faculty_profile.html', faculty=faculty)

@app.route('/add', methods=['GET', 'POST'])
def add_faculty():
    if request.method == 'POST':
        name = request.form['name']
        title = request.form['title']
        department = request.form['department']
        email = request.form['email']
        phone = request.form['phone']
        bio = request.form['bio']
        photo = request.files['photo']
        
        filename = photo.filename
        photo.save(os.path.join('static/photos/', filename))
        
        cur = mysql.connection.cursor()
        cur.execute("""INSERT INTO faculty 
                       (name, title, department, email, phone, bio, photo) 
                       VALUES (%s, %s, %s, %s, %s, %s, %s)""",
                    (name, title, department, email, phone, bio, filename))
        mysql.connection.commit()
        return redirect('/')
    return render_template('add_faculty.html')
@app.route('/about')
def about():
    return render_template('faculty_about.html')

@app.route('/search')
def search():
    query = request.args.get('query')
    cur = mysql.connection.cursor()
    cur.execute("""SELECT id, name, title, department, photo 
                   FROM faculty 
                   WHERE name LIKE %s OR department LIKE %s""", 
                   (f"%{query}%", f"%{query}%"))
    results = cur.fetchall()
    return render_template('faculty_list.html', faculty=results)



if __name__ == '__main__':
    app.run(debug=True)
