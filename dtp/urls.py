"""dtp URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url,include
from django.contrib.auth import views as auth_views
from django.contrib import admin
from fir.views import getcircleinfo, getsection, getlocation, getacctype
from django.conf import settings
from django.conf.urls.static import static
from fir.views import getcircleinfo, getsection, getlocation, getacctype, log_end, login


urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^fir/', include('fir.urls')),
    url(r'^chaining/', include('smart_selects.urls')),
    url(r'^getcircleinfo$', getcircleinfo),
    url(r'^getsection$', getsection),
    url(r'^getlocation$', getlocation),
    url(r'^getacctype$', getacctype),
    url(r'^login$', login),
    url(r'^logout/$', auth_views.logout, name='logout'),
    url(r'^report_builder/', include('report_builder.urls'))



]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)