from django.template import RequestContext, loader
from django.http import HttpResponse
# Create your views here.


def index(request, table):

    #return HttpResponse(response, mimetype="application/xml")
    t = loader.get_template('index/select.html')
    c = RequestContext(request, {'table': table})

    return HttpResponse(
        t.render(c), 
        mimetype="application/xml"
    )
