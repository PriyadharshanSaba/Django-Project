#Portal URL

from django.conf.urls import url
from django.conf.urls import include
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from . import views
from . import views_admini
from . import views_ta


urlpatterns = [
               url(r'^admin/', include(admin.site.urls)),
               url(r'^pro$', views_admini.product, name='product'),
               url(r'^$', views.index, name='main'),
               url(r'^index_mobile',views.index_mob, name='index mob'),
               url(r'^m$', views.index, name='main'),

               url(r'^headtest_incor.html', views.headtest_incor , name='index'),
               url(r'^log.html', views.student , name='index'),
               url(r'^red.html$', views.red , name='red'),
               url(r'^attend.html$', views.getAttendance, name='attendance'),
               url(r'^registerNewStudent.html$',views.registerNewStudent, name='just testing'),

               url(r'^putmarks.html$',views.putmar, name='testing marks module'),
               url(r'internalmar.html',views.internalmar, name='testing marks module'),

               url(r'^welcome_page.html$',views.welcomeRedirect, name='redirect to welcome'),
               url(r'^headtest.html$', views.signOut , name='signing out'),
               url(r'^loadingRedirecting.html$', views.loadingRedirecting , name='temp website while leading'),
               url(r'^welcomeNewRege.html$',views.welcomeNewRege, name='welcome new user'),
               url(r'^headtest_exists.html$', views.headtestExists, name='User already registered'),
               url(r'^error.html$', views.errorStudentAcc, name='no record'),

               url(r'^login_redirection_stu.html$', views.login_redirection_stu, name='redirecting login students page'),
               url(r'^new_reg_verfiy.html$', views.verifyUser , name='mail verification'),
               url(r'^verification_page.html$',views.verification , name='verification'),
               url(r'^attend_preRefresh.html$', views.attendanceFromDBMS, name='attendance from DB'),
               url(r'^notes.html$', views.notes, name='notes'),
               url(r'^profile_settings$', views.profile_settings, name='settings'),
               url(r'^changePassword$', views.changePassword, name='ChangePassword'),
               url(r'^changeEmail$', views.changeMail, name='ChangeMail-ID'),
               url(r'^static_attend_preRefresh$',views.static_attend_preRefresh,name='static attendance page'),

               url(r'^headtest_mobile$', views.red_mob, name='mobile login'),



               url(r'ta$', views_ta.teacherlog, name='ta log'),
               url(r'^home_ta.html$', views_ta.teacherHome, name='home'),
               url(r'^parsing_error.html$', views_ta.error, name='error'),
               url(r'^succs.html$',views_ta.simple_upload, name='suc'),
               url(r'^upload_files.html$', views_ta.upload_form, name='upload'),
               url(r'^headtest_ta.html$', views_ta.goBack, name='go back'),
               url(r'^delNotesMod.html$', views_ta.deleteNodes, name='delete notes'),
               url(r'^delRequest.html$', views_ta.deleteRequest, name='after delete notes'),
               url(r'^notes_ta.html$', views_ta.notes, name='notes'),
               url(r'^newTeacher.html$', views_ta.newReg, name='Registration'),
               url(r'^changeTAPassword$', views_ta.changePassword, name='Registration'),
               url(r'^changeTAEmail$', views_ta.changeMail, name='Registration'),
               url(r'^profile_settings_ta$', views_ta.profile_settings, name='Registration'),




               url(r'^adm$', views_admini.adminiHome, name='admin home'),
               url(r'^ad.html$', views_admini.forgotLoginDetails, name='forgot details'),
               url(r'^home_ad.html',views_admini.loginHome, name = 'redirect to home'),
               url(r'^enterMarks.html', views_admini.marksDash, name=' marks dashboard'),
               url(r'^temptest.html', views_admini.testing, name='for tests'),
               url(r'^dbokay.html', views_admini.okay, name='updated'),
               url(r'^login_redirection.html', views_admini.login_redirection, name='re')
               ]+static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


#urlpatterns += staticfiles_urlpatterns()
