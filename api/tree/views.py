from django.template import RequestContext, loader
from django.http import HttpResponse

from pyswip import Prolog

# Create your views here.


def index(request, table):

    import MySQLdb as db

    conn = db.connect(host='localhost', user='prologuser', passwd='prologpass', db='prolog_test')
    cursor = conn.cursor()

    cursor.execute('SELECT * FROM `children`')
    result = cursor.fetchall()

    prolog = Prolog()

    for row in result:
        prolog.assertz("father("+ row[1]  +","+ row[2]  +")")

    prolog.consult('databaseFacts')
    prolog.consult('tree')

    prolog.assertz("father(michael,john)")
    prolog.assertz("father(michael,gina)")
    
    #father = list(prolog.query("father(Y, X)"))
    father = list(prolog.query("root(2,V1,_), parAll(2,V1,[V2,V3]), pEdge(2,V1,V3,0.262), node(2,V3,myh16), pEdge(2,V1,V2,0.125), ancAll(2,V2,V12,[V9,V4]), node(2,V4,myh7), hEdge(2,V12,V3), !."))

    #return HttpResponse(response, mimetype="application/xml")
    t = loader.get_template('index/select.html')
    c = RequestContext(request, {'table': table, 'father': father})


    return HttpResponse(
        t.render(c), 
        mimetype="application/xml"
    )
