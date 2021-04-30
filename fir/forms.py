from django import forms
from django.contrib.auth.models import User
from django.conf import settings
from multiupload.fields import MultiFileField
from .models import details, causes, injured, killed, profile, sections, designation_choices, circle_choices, collision, offender, victim_person,  ROAD_TYPE1_Choices, OFFEND_CHOICES, YES_NO_CHOICES, INJKIL_CHOICES, SEX_Choices, victim_vehicle, TIME_KNOWN_CHOICES, AREA_CHOICES

from django.forms.extras.widgets import SelectDateWidget
import datetime
from django.forms.formsets import formset_factory
from django.forms.models import BaseModelFormSet, inlineformset_factory
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.utils.translation import gettext as _
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Submit, Layout, Field, Row, Div
from crispy_forms.bootstrap import PrependedText, PrependedAppendedText, FormActions

class SignUpForm(UserCreationForm):
    name = forms.CharField(max_length=50, required= True, label="Full Name")
    emp_id = forms.CharField(max_length=15, required= True, label="Employee ID")
    circle = forms.ChoiceField(choices=circle_choices, widget=forms.Select(attrs={'class':'form-control'}))
    designation = forms.ChoiceField(choices=designation_choices, widget=forms.Select(attrs={'class':'form-control'}), required= True)


    class Meta:
        model = User
        fields = ('username', 'name', 'emp_id', 'circle', 'designation', 'password1', 'password2', )

    def __init__(self, *args, **kwargs):
        super(SignUpForm, self).__init__(*args, **kwargs)
        for fieldname in ['username', 'password1', 'password2']:
            self.fields[fieldname].help_text = None
        self.helper = FormHelper()
        self.helper.form_tag = False
        self.helper.form_class = 'form-inline'
        self.helper.field_template = 'bootstrap3/layout/inline_field.html'
        layout = self.helper.layout = Layout(
        'username',
        Div(
        Div('name', css_class='col-md-6 col-xs-12', placeholder = 'Name'),
        Div('emp_id', css_class='col-md-6 col-xs-12', placeholder = 'Employee ID'),

        Div('password1', css_class='col-md-6 col-xs-12', placeholder = 'Password'),
        Div('password2', css_class='col-md-6 col-xs-12', placeholder = 'Confirm Password'),
        css_class='row formrow',
        ),
        'designation',
        'circle',

        )
        #for field_name, field in self.fields.items():
            #layout.append(Field(field_name, placeholder=field.label,  css_class='col-md-6 col-xs-8'))

        self.helper.form_show_labels = False


class FirForm(forms.ModelForm):
    #ACC_PHOTO=MultiFileField(max_num=10);
    #FIR_PHOTO=MultiFileField(max_num=4);
    #ACC_SKETCH_PHOTO=MultiFileField(max_num=4);
    DATE_OCC = forms.DateField(required = False,
        widget=SelectDateWidget(years=range(datetime.date.today().year - 1, datetime.date.today().year + 10)),
        )
    FIR_DATE = forms.DateField(required = False,
        widget=SelectDateWidget(years=range(datetime.date.today().year - 1, datetime.date.today().year + 10)),
        )

    TIME_KNOWN= forms.ChoiceField(required = True, choices = TIME_KNOWN_CHOICES, widget=forms.RadioSelect())

    AREA= forms.ChoiceField(required = True, choices = AREA_CHOICES, widget=forms.RadioSelect())
    TIME_OCC = forms.CharField(
            label = 'Time of Occurence',
            widget=forms.TextInput(attrs={'placeholder': 'hhmm','size':4, 'maxlength':4})        )
    ROAD_TYPE1= forms.ChoiceField(label = "One/Two Way", required = True, choices = ROAD_TYPE1_Choices, widget=forms.RadioSelect())
    ACC_PHOTO1 = forms.FileField(label='')
    ACC_PHOTO2 = forms.FileField(label='')
    ACC_PHOTO3 = forms.FileField(label='')
    MVA_NAME = forms.MultipleChoiceField(required=False,
    widget=forms.CheckboxSelectMultiple)




    class Meta:
        model = details
     	exclude = ('FN','MONTH')



    def clean(self):
        cd = self.cleaned_data
        if cd.get('DATE_OCC') > datetime.datetime.now().date():
            self.add_error('DATE_OCC', "Accident Date cannot be after System Date")
        if cd.get('FIR_DATE') > datetime.datetime.now().date():
            self.add_error('FIR_DATE', "FIR Date cannot be after System Date")

        if cd.get('DATE_OCC').date() > cd.get('FIR_DATE').date():
            self.add_error('FIR_DATE', "FIR Date cannot be before Accident Date")

        '''if cd.get('LONGITUDE') != '':
            LONGITUDE = float (cd.get('LONGITUDE'))
            if LONGITUDE >= 78.0 or LONGITUDE < 76.0:
                self.add_error('LONGITUDE', "Check Value of Longitude")
        if cd.get('LONGITUDE') != '':
            LATITUDE = float  (cd.get('LATITUDE'))
            if LATITUDE > 29.0 or LATITUDE <28.0:
                self.add_error('LATITUDE', "Check Value of Latitude")

        if cd.get('TIME_OCC') is 'INV':
            self.add_error('TIME_OCC', "Enter a valid time")
        if (cd.get('TIME_OCC') is not 'UNK') and (cd.get('TIME_OCC') is not '' ) and (cd.get('TIME_OCC') is not 'INV'):
            tim1 = cd.get('TIME_OCC')[:2]
            tim2 = cd.get('TIME_OCC')[-2:]
            tim1 = int(tim1)
            tim2 = int(tim2)
            if (tim1 > 23 or tim1 < 0 or tim2 > 59 or tim2 < 0):
                self.add_error('TIME_OCC', "Enter a valid time")

        '''
        if cd.get('TIME_OCC') is 'INV':
            self.add_error('TIME_OCC', "Enter a valid time")
        VEHTYPE2 = str(cd.get('VEHTYPE2'))
        VICTIM = str(cd.get('VICTIM'))
        return cd


class CauseForm(forms.ModelForm):
    class Meta:
        model = causes
        exclude = ('ACCID_ID',)

class OffendForm(forms.ModelForm):
    dri_lic_date_issu= forms.DateField(required=False, input_formats = settings.DATE_INPUT_FORMATS,
        widget=SelectDateWidget(years=range(datetime.date.today().year - 10, datetime.date.today().year + 10)),
        )
    dri_lic_date_upto= forms.DateField(required=False, input_formats = settings.DATE_INPUT_FORMATS,
        widget=SelectDateWidget(years=range(datetime.date.today().year - 10, datetime.date.today().year + 10)),
        )
    dri_sex= forms.ChoiceField(label = "Gender", required = False, choices = SEX_Choices, widget=forms.RadioSelect())
    age_known= forms.ChoiceField(required = True, choices = TIME_KNOWN_CHOICES, widget=forms.RadioSelect())

    class Meta:
        model = offender
        exclude = ('ACCID_ID',)


class VVicForm(forms.ModelForm):

    class Meta:
        model = victim_vehicle
        exclude = ('ACCID_ID',)

def clean(self):
        cd = self.cleaned_data
       
        if ("PAS" in VEHTYPE2 or "PED" in VEHTYPE2 or "SLF" in VEHTYPE2 or "ANI" in VEHTYPE2 or "UNK" in VEHTYPE2 ) and ("NA" is not VEHICLE_LOADED_CONDITION2):
            self.add_error('VEHICLE_LOADED_CONDITION2', "Load of the Vehicle is not applicable.")
        return cd

class PVicForm(forms.ModelForm):
    INJKIL= forms.ChoiceField(label = "Injured or Killed", required = True, choices = INJKIL_CHOICES, widget=forms.RadioSelect())
    VICSEX= forms.ChoiceField(label = "Gender", required = True, choices = SEX_Choices, widget=forms.RadioSelect())
    VIC_IN_VEH = forms.ChoiceField(label = "Victim inside/outside vehicle", choices = YES_NO_CHOICES, widget=forms.RadioSelect())
    OFFEND = forms.ChoiceField(label = "Offending/Victim Vehicle", choices = OFFEND_CHOICES,  widget=forms.RadioSelect())
    class Meta:
        model = victim_person
        exclude = ('ACCID_ID',)
    def clean(self):
        cd = self.cleaned_data
        fir = self.instance.ACCID_ID

        vehicle = cd.get('VEH_INFO')
        noerror = False
        if 'OFFENDING' in cd.get('OFFEND'):
            veh_list = offender.objects.filter(ACCID_ID = fir.ACC_ID)
            for veh in veh_list:

                if vehicle == veh.VEHTYPE1.VEHDETL:
                    noerror = True

        elif 'VICTIM' in cd.get('OFFEND'):
            veh_list = victim_vehicle.objects.filter(ACCID_ID = fir.ACC_ID)
            for veh in veh_list:

                if vehicle == veh.VEHTYPE2.VEHDETL:
                    noerror = True


        elif 'OUTSIDE VEHICLE' in cd.get('OFFEND') or 'NOT KNOWN' in cd.get('OFFEND'):
            if vehicle is not 'NOT APPLICABLE':
                self.add_error('VEH_INFO', "is not applicable in this case.")


        if noerror == False:
            self.add_error('VEH_INFO', cd.get('VEH_INFO') + " is not any of the "+ cd.get('OFFEND')+ "S. Select Valid Vehicle. (Victim Person)")
        sec_obj = sections.objects.get(pk = fir.OF_SECTION_id)
        injkil = cd.get('INJKIL')
        if injkil == 'INJURED' and not('338' in sec_obj.SECTIONDTL or '337' in sec_obj.SECTIONDTL):
            self.add_error('INJKIL', "Person cannot be Injured according to Section")
        if injkil == 'KILLED' and not('304' in sec_obj.SECTIONDTL):
            self.add_error('INJKIL', "Person cannot be Killed according to Section")
        return cd
class CollisionForm(forms.ModelForm):

    class Meta:
        model = collision
        exclude = ('ACCID_ID','VIC_TYPE')

class InjForm(forms.ModelForm):

    class Meta:
        model = injured
        exclude = ('ACCID_ID',)
    '''def __init__(self, *args, **kwargs):
        super(InjForm, self).__init__(*args, **kwargs)
        self.queryset = injured.objects.none()'''




class KilForm(forms.ModelForm):
    class Meta:
        model = killed
        exclude = ('ACCID_ID',)
    '''def __init__(self, *args, **kwargs):
        super(KilForm, self).__init__(*args, **kwargs)
        self.queryset = killed.objects.none()'''
