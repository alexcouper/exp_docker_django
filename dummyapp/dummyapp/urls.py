from django.conf.urls import patterns, include, url
from django.contrib import admin

from core.views import HelloWorldView

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'dummyapp.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),

    url(r'^hello/', HelloWorldView.as_view(), name='hello-world-view'),

)
