from django.template import RequestContext, loader
from django.http import HttpResponse

from pyswip import Prolog

# Create your views here.


def index(request, table):

    import MySQLdb as db

    conn = db.connect(host='localhost', user='prologuser', passwd='prologpass', db='prolog_test')
    cursor = conn.cursor()

    prolog = Prolog()

    #prolog.consult('tree')

    cursor.execute('SELECT * FROM `children`')
    result = cursor.fetchall()

    for row in result:
        prolog.assertz("father("+ str(row[1])  +","+ str(row[2])  +")")

    cursor.execute('SELECT * FROM `root`')
    result = cursor.fetchall()

    for row in result:
        prolog.assertz("root('"+ str(row[0])  +"','"+ str(row[1]) +"'," + str(row[2]) +")")

    cursor.execute('SELECT * FROM `node`')
    result = cursor.fetchall()

    for row in result:
        prolog.assertz("node('"+ str(row[0])  +"','"+ str(row[1]) +"'," + str(row[2]) +")")

    cursor.execute('SELECT * FROM `pEdge`')
    result = cursor.fetchall()
          
    for row in result:
        prolog.assertz("pEdge('"+ str(row[0])  +"','"+ str(row[1]) +"','" + str(row[2]) +"','"+ str(row[3]) +"')")

    prolog.consult('tree')

    result = list(prolog.query("root('2',V1,_), parAll('2',V1,[V2,V3]), pEdge('2',V1,V3,'0.262'), node('2',V3,myh16), pEdge('2',V1,V2,'0.125'), ancAll('2',V2,V12,[V9,V4]), node('2',V4,myh7), hEdge('2',V12,V3), !"))

    #result = list(prolog.query("parAll(X,Y,Z)"))

    #return HttpResponse(response, mimetype="application/xml")
    t = loader.get_template('index/select.html')
    c = RequestContext(request, {'table': table, 'father': result})


    return HttpResponse(
        t.render(c), 
        mimetype="application/xml"
    )
