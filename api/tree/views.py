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


    prolog.consult('family')

    prolog.assertz("father(michael,john)")
    prolog.assertz("father(michael,gina)")
    
    father = list(prolog.query("father(Y, X)"))

    #return HttpResponse(response, mimetype="application/xml")
    t = loader.get_template('index/select.html')
    c = RequestContext(request, {'table': table, 'father': father})


    return HttpResponse(
        t.render(c), 
        mimetype="application/xml"
    )
