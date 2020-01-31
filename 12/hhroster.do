clear
insheet using "hhroster.tab", tab case names

label variable hhroster__id `"Id in hhroster"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable fmem_fname `"First Name"'

label variable fmem_mname `"Middle Name"'

label variable fmem_lname `"Last name"'

label define birth_know 1 `"होय"' 2 `"नाही"' 
label values birth_know birth_know
label variable birth_know `"Knows birthdate"'

label variable dob `"Date of Birth"'

label variable age_d `"Age"'

label variable age `"Calculated age"'

label define gender 1 `"पुरुष"' 2 `"स्त्री"' 
label values gender gender
label variable gender `"Sex"'

label define relat 1 `"स्वतः"' 2 `"पती / पत्नी"' 3 `"मुलगा / मुलगी"' 4 `"जावई / सून"' 5 `"नातू / नात"' 6 `"पिता / आई"' 7 `"सासरे / सासू"' 8 `"भाऊ / बहिण"' 9 `"सावत्र पत्नी"' 10 `"आजी / आजोबा"' 11 `"इतर (निर्दिष्ट करा)"' 12 `"संबंध नाही पण मित्र / कर्मचारी / अतिथी"' 13 `"माहित नाही / सांगू शकत नाही"' 
label values relat relat
label variable relat `"Relation with head"'

label variable relat_oth `"Relation with head other"'

label define education 98 `"ग्रेजुएट"' 99 `"पोस्ट-ग्रेजुएट"' 
label values education education
label variable education `"Education"'

label define marital_status 1 `"अविवाहित"' 2 `"विवाहित"' 3 `"वेगळे"' 4 `"घटस्फोटित"' 5 `"विधवा / विधुर"' 6 `"पुनर्विवाह"' 
label values marital_status marital_status
label variable marital_status `"Marital status"'

label define occupation 1 `"शेतकरी"' 2 `"व्यवसाय"' 3 `"नौकरी"' 4 `"मजुरी"' 5 `"विद्यार्थी"' 6 `"गृहिणी"' 7 `"बेरोजगार"' 
label values occupation occupation
label variable occupation `"Occupation"'

label define member 1 `"होय"' 2 `"नाही"' 
label values member member
label variable member `"Organisation member"'

label variable member_which__1 `"Organisation member type:ग्रामपंचायत"'

label variable member_which__2 `"Organisation member type:पंचायत समिती / जिल्हा परिषद"'

label variable member_which__3 `"Organisation member type:पतसंस्था"'

label variable member_which__4 `"Organisation member type:सहकारी संस्था"'

label variable member_which__5 `"Organisation member type:ज्येष्ठ नागरिक संघ"'

label variable member_which__6 `"Organisation member type:अशासकीय संस्था (NGO)"'

label variable member_which__7 `"Organisation member type:पाणीपुरवठा संस्था"'

label variable member_which__8 `"Organisation member type:शिक्षण संस्था"'

label variable member_which__9 `"Organisation member type:मंदिर संस्था"'

label variable member_which__10 `"Organisation member type:ग्रामीण आरोग्य पोषण आणि स्वच्छता समिती"'

label variable member_which__11 `"Organisation member type:क्रीडा मंडळ"'

label variable member_which__12 `"Organisation member type:महिला बचत गट"'

label variable member_which__13 `"Organisation member type:किशोरी पंचायत / युवक गट"'

label variable member_which__14 `"Organisation member type:इतर संस्था / संघटन"'

label define phone 1 `"स्मार्ट फोन"' 2 `"साधा फोन"' 3 `"फोन नाही आहे"' 4 `"माहित नाही"' 
label values phone phone
label variable phone `"Phone ownership"'

label variable fmem_mno `"Mobile No"'

label define fmem_internet 1 `"होय"' 2 `"नाही"' 3 `"कधी कधी"' 4 `"माहित नाही"' 
label values fmem_internet fmem_internet
label variable fmem_internet `"Internet on phone"'

label define res_status 1 `"स्थायी निवासी"' 2 `"बाहेर राहते"' 3 `"अतिथी"' 
label values res_status res_status
label variable res_status `"Residential status"'

label define menst_status 1 `"आता पर्यंत पाळी सुरु झाली नाही"' 2 `"मासिक पाळी सुरु आहे"' 3 `"मासिक पाळी बंद झाली"' 4 `"माहित नाही"' 
label values menst_status menst_status
label variable menst_status `"Menstrual Status"'

label variable lmp `"LMP"'

label define pregnant 1 `"होय"' 2 `"नाही"' 
label values pregnant pregnant
label variable pregnant `"Pregnant"'

label variable fmem_g `"Gravida"'

label variable fmem_p `"Parity"'

label variable fmem_l `"Live Births"'

label variable fmem_a `"Abortions"'

label define bir_cohort 1 `"होय"' 2 `"नाही"' 
label values bir_cohort bir_cohort
label variable bir_cohort `"MGIMS Birth cohort member"'

label variable bir_cohort_id `"MGIMS Birth Cohort ID"'

label variable interview__id `"Unique 32-character long identifier of the interview"'
