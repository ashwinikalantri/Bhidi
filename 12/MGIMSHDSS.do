clear
insheet using "MGIMSHDSS.tab", tab case names

label variable interview__id `"Unique 32-character long identifier of the interview"'

label variable interview__key `"Interview key (identifier in XX-XX-XX-XX format)"'

label variable sssys_irnd `"Random number in the range 0..1 associated with interview"'

label variable has__errors `"Errors count in the interview"'

label define interview__status 0 `"Restored"' 20 `"Created"' 40 `"SupervisorAssigned"' 60 `"InterviewerAssigned"' 65 `"RejectedBySupervisor"' 80 `"ReadyForInterview"' 85 `"SentToCapi"' 95 `"Restarted"' 100 `"Completed"' 120 `"ApprovedBySupervisor"' 125 `"RejectedByHeadquarters"' 130 `"ApprovedByHeadquarters"' -1 `"Deleted"' 
label values interview__status interview__status
label variable interview__status `"Status of the interview"'

label variable start_time `"Interview start time"'

label variable gps__Latitude `"GPS Coordinates: Latitude"'

label variable gps__Longitude `"GPS Coordinates: Longitude"'

label variable gps__Accuracy `"GPS Coordinates: Accuracy"'

label variable gps__Altitude `"GPS Coordinates: Altitude"'

label variable gps__Timestamp `"GPS Coordinates: Timestamp"'

label define phc 1 `"आंजी"' 2 `"खरांगणा"' 3 `"तळेगाव"' 4 `"वायफड"' 5 `"भिडी"' 
label values phc phc
label variable phc `"Primary Health Center"'

label define sc 1 `"आंजी"' 2 `"कामठी"' 3 `"मांडवा"' 4 `"पेठ"' 5 `"पिपरी  (मेघे)"' 6 `"महाकाल"' 7 `"नालवाडी"' 8 `"पवनार"' 9 `"खरंगाना (गोडे)"' 10 `"कारंजी (भोगे)"' 11 `"मदनी"' 12 `"तरोडा"' 13 `"येसाम्बा"' 14 `"तळेगाव (ता)"' 15 `"जाऊळगाव"' 16 `"धोत्रा (का)"' 17 `"सेलुकाटे"' 18 `"सालोड (हि)"' 19 `"सेलसुरा"' 20 `"वडद"' 21 `"वायगाव (नि)"' 22 `"नेरी"' 23 `"वाइफड"' 24 `"दहेगाव (स्टेशन)"' 25 `"दहेगाव (मी)"' 26 `"झाडगाव"' 27 `"उमरी (मेघे)"' 28 `"बोरगाव (मेघे)"' 29 `"सावंगी (मेघे)"' 30 `"गौळ"' 31 `"खर्डा"' 32 `"हुसनापूर"' 
label values sc sc
label variable sc `"Sub Center"'

label define village 1 `"आंजी"' 2 `"कामठी खानापूर"' 3 `"सेवा"' 4 `"चाका मांजरा"' 5 `"पवनूर"' 6 `"मांडवा"' 7 `"पुलई"' 8 `"पेठ"' 9 `"बोरगाव (सावली)"' 10 `"बोरगाव (नांदोरा)"' 11 `"धूळवा"' 12 `"नरसूला"' 13 `"डोरली"' 14 `"पिपरी (मेघे)"' 15 `"गणेशपुर"' 16 `"पांढरकवडा"' 17 `"कारला"' 18 `"महाकाळ"' 19 `"सातोडा"' 20 `"दत्तापूर"' 21 `"अलोडी"' 22 `"नालवाडी"' 23 `"मासाडा"' 24 `"वरुड"' 25 `"पवनार"' 26 `"केदारवाडी"' 27 `"खरांगणा (गोडे)"' 28 `"सेवाग्राम"' 29 `"कुटकी"' 30 `"बरबडी"' 31 `"चिंचेला"' 32 `"आदर्शनगर"' 33 `"अंबानगर"' 34 `"चितोडा"' 35 `"कारंजी (भोगे)"' 36 `"शिरपूर (भोगे)"' 37 `"नागापूर"' 38 `"धानोरा"' 39 `"मांडवगड"' 40 `"नांदोरा"' 41 `"रघुनाथपूर"' 42 `"सोंदलापूर"' 43 `"मदनी"' 44 `"येरंगाव"' 45 `"कारंगी (काजी)"' 46 `"पावनी"' 47 `"पूजाई"' 48 `"तरोडा"' 49 `"सावली"' 50 `"साखरा"' 51 `"येसाम्बा"' 52 `"गोजि"' 53 `"भानखेडा"' 54 `"तळेगाव (ता)"' 55 `"जवुळगाव"' 56 `"आष्ठा"' 57 `"भूगाव"' 58 `"धोत्रा (का)"' 59 `"रैफुल्ली"' 60 `"सोनेगाव"' 61 `"एकुर्ली"' 62 `"सेलूकाटे"' 63 `"कुर्झडी"' 64 `"इंजापूर"' 65 `"जामठा"' 66 `"सालोड (हि)"' 67 `"सेलसुरा"' 68 `"पडेगाव"' 69 `"धोत्रा (रे)"' 70 `"वडध"' 71 `"पालोती"' 72 `"आजगांव"' 73 `"शिरसगाव"' 74 `"वायगाव (नि)"' 75 `"नेरी"' 76 `"मीरापूर"' 77 `"भिवापूर"' 78 `"वाइफड"' 79 `"कुर्झडी"' 80 `"लोनसावली"' 81 `"डोरली"' 82 `"दहेगाव (स्टेशन)"' 83 `"केळापूर"' 84 `"बोदड"' 85 `"चिकणी"' 86 `"निमगाव"' 87 `"दहेगाव (मी)"' 88 `"अंबोडा"' 89 `"आमला"' 90 `"धामणगांव"' 91 `"वाठोडा"' 92 `"झाडगाव"' 93 `"दिग्रस"' 94 `"तिगाव"' 95 `"बेळगाव"' 96 `"वाघदरा"' 97 `"उमरी (मेघे)"' 98 `"रोठा"' 99 `"नागठाणा"' 100 `"सिंधी (मेघे)"' 101 `"बोरगाव (मेघे)"' 102 `"सावंगी (मेघे)"' 103 `"काजलसरा"' 104 `"खर्डा"' 105 `"वाबगाव"' 106 `"बोपापूर"' 107 `"बाबुलगाव"' 108 `"गणेशपूर"' 109 `"सैदापुर"' 110 `"हुसनापूर"' 111 `"भिडी"' 112 `"रतनापूर"' 113 `"कोल्हापूर (राव)"' 
label values village village
label variable village `"Village"'

label define locked 1 `"होय"' 2 `"नाही"' 
label values locked locked
label variable locked `"House Locked"'

label variable hoh_name `"Name of Head of Household"'

label variable ic_name `"Respondents Name"'

label define ic_understood 1 `"होय"' 2 `"नाही"' 
label values ic_understood ic_understood
label variable ic_understood `"Understood the purpose of HDSS"'

label define ic_questions 1 `"होय"' 2 `"नाही"' 
label values ic_questions ic_questions
label variable ic_questions `"Any further questions"'

label define ic_consent 1 `"होय"' 2 `"नाही"' 
label values ic_consent ic_consent
label variable ic_consent `"Consent for participation"'

label variable landmark `"Landmark"'

label define ration_own 1 `"होय"' 2 `"नाही"' 
label values ration_own ration_own
label variable ration_own `"Owns a ration card"'

label define ration_type 1 `"पांढरा"' 2 `"नारंगी / केसरी"' 3 `"पिवळा"' 4 `"अंतोदयी"' 
label values ration_type ration_type
label variable ration_type `"Ration Card type"'

label define caste 1 `"Open"' 2 `"O.B.C."' 3 `"S.B.C."' 4 `"S.C."' 5 `"S.T."' 6 `"V.J."' 7 `"N.T."' 
label values caste caste
label variable caste `"Caste Category"'

label define living_since 91 `"0-3 महिने"' 92 `"3-6 महिने"' 93 `"6-12 महिने"' 98 `"20 पेक्षा जास्त वर्षे"' 99 `"माहित नाही"' 
label values living_since living_since
label variable living_since `"No of years living here"'

label define insure 1 `"होय"' 2 `"नाही"' 
label values insure insure
label variable insure `"Family insurance"'

label variable insure_type__1 `"Family health insurance type:कस्तुरबा हॉस्पिटल कौटुंबिक विमा"'

label variable insure_type__2 `"Family health insurance type:खाजगी आरोग्य विमा"'

label variable insure_type__3 `"Family health insurance type:सावंगी मेघे विमा"'

label variable insure_type__4 `"Family health insurance type:इतर"'

label variable insure_other `"Family health insurance other"'

label variable fmember_no `"No of family members"'

label define wi_drink_water 11 `"पाण्याचा पाइप: घरात"' 12 `"पाण्याचा पाइप: यार्ड / प्लॉटमध्ये"' 13 `"सार्वजनिक नळ"' 21 `"ट्यूबवेल / बोरवेल"' 31 `"संरक्षित विहीर"' 32 `"असुरक्षित विहीर"' 41 `"संरक्षित तळ"' 42 `"असुरक्षित तळ"' 51 `"पावसाचे पाणी"' 61 `"टँकर ट्रक"' 71 `"बंडी वर लहान टाकी"' 81 `"भूतलावरील पाणी (नदी / धरणे / तलाव / तलाव / प्रवाह / कालवे)"' 91 `"बोतलबंद पाणी"' 92 `"सार्वजनिक R.O. प्लॅन्ट"' 96 `"इतर (निर्दिष्ट करा)"' 
label values wi_drink_water wi_drink_water
label variable wi_drink_water `"Source of Drinking Water"'

label variable wi_drink_water_other `"Other source of Drinking Water"'

label define wi_toilet 11 `"फ्लश: पाईप सिव्हर सिस्टम"' 12 `"फ्लश: सेप्टिक टाकी"' 13 `"फ्लश: खड्डा शौचालय"' 14 `"फ्लश: दुसरीकडे"' 15 `"फ्लश: कुठे माहित नाही"' 21 `"Ventilated Improved Pit latrine / Biogas"' 22 `"खड्डा शौचालय स्लॅब सह"' 23 `"खड्डा शौचालय स्लॅब शिवाय/ उघडा शौचालय"' 31 `"कंपोस्टिंग शौचालय / दोन खड्डा"' 41 `"बकेट शौचालय / कोरडे शौचालय"' 61 `"कोणतीही सुविधा नाही / शेत"' 96 `"इतर (निर्दिष्ट करा)"' 
label values wi_toilet wi_toilet
label variable wi_toilet `"Toilet Facility"'

label variable wi_toilet_other `"Other toilet facility"'

label define wi_electricity 1 `"होय"' 2 `"नाही"' 
label values wi_electricity wi_electricity
label variable wi_electricity `"Electricity"'

label define wi_mattress 1 `"होय"' 2 `"नाही"' 
label values wi_mattress wi_mattress
label variable wi_mattress `"Mattress"'

label define wi_cooker 1 `"होय"' 2 `"नाही"' 
label values wi_cooker wi_cooker
label variable wi_cooker `"Pressure Cooker"'

label define wi_chair 1 `"होय"' 2 `"नाही"' 
label values wi_chair wi_chair
label variable wi_chair `"Chair"'

label define wi_bed 1 `"होय"' 2 `"नाही"' 
label values wi_bed wi_bed
label variable wi_bed `"Bed"'

label define wi_table 1 `"होय"' 2 `"नाही"' 
label values wi_table wi_table
label variable wi_table `"Table"'

label define wi_fan 1 `"होय"' 2 `"नाही"' 
label values wi_fan wi_fan
label variable wi_fan `"Electric Fan"'

label define wi_radio 1 `"होय"' 2 `"नाही"' 
label values wi_radio wi_radio
label variable wi_radio `"Radio"'

label define wi_bwtv 1 `"होय"' 2 `"नाही"' 
label values wi_bwtv wi_bwtv
label variable wi_bwtv `"Black and White Television"'

label define wi_coltv 1 `"होय"' 2 `"नाही"' 
label values wi_coltv wi_coltv
label variable wi_coltv `"Colour Television"'

label define wi_sewingmach 1 `"होय"' 2 `"नाही"' 
label values wi_sewingmach wi_sewingmach
label variable wi_sewingmach `"Sewing Machine"'

label define wi_mob_phone 1 `"होय"' 2 `"नाही"' 
label values wi_mob_phone wi_mob_phone
label variable wi_mob_phone `"Mobile Phone"'

label define wi_ll_phone 1 `"होय"' 2 `"नाही"' 
label values wi_ll_phone wi_ll_phone
label variable wi_ll_phone `"Landline telephone"'

label define wi_internet 1 `"होय"' 2 `"नाही"' 
label values wi_internet wi_internet
label variable wi_internet `"Internet"'

label define wi_computer 1 `"होय"' 2 `"नाही"' 
label values wi_computer wi_computer
label variable wi_computer `"Computer"'

label define wi_refrigerator 1 `"होय"' 2 `"नाही"' 
label values wi_refrigerator wi_refrigerator
label variable wi_refrigerator `"Refrigerator"'

label define wi_ac 1 `"होय"' 2 `"नाही"' 
label values wi_ac wi_ac
label variable wi_ac `"Air Conditioner or Cooler"'

label define wi_washmach 1 `"होय"' 2 `"नाही"' 
label values wi_washmach wi_washmach
label variable wi_washmach `"Washing Machine"'

label define wi_clock 1 `"होय"' 2 `"नाही"' 
label values wi_clock wi_clock
label variable wi_clock `"Clock"'

label define wi_bicycle 1 `"होय"' 2 `"नाही"' 
label values wi_bicycle wi_bicycle
label variable wi_bicycle `"Bicycle"'

label define wi_motorcycle 1 `"होय"' 2 `"नाही"' 
label values wi_motorcycle wi_motorcycle
label variable wi_motorcycle `"Motorcycle"'

label define wi_cart 1 `"होय"' 2 `"नाही"' 
label values wi_cart wi_cart
label variable wi_cart `"Cart"'

label define wi_car 1 `"होय"' 2 `"नाही"' 
label values wi_car wi_car
label variable wi_car `"Car"'

label define wi_pump 1 `"होय"' 2 `"नाही"' 
label values wi_pump wi_pump
label variable wi_pump `"Water pump"'

label define wi_thresher 1 `"होय"' 2 `"नाही"' 
label values wi_thresher wi_thresher
label variable wi_thresher `"Thresher"'

label define wi_tractor 1 `"होय"' 2 `"नाही"' 
label values wi_tractor wi_tractor
label variable wi_tractor `"Tractor"'

label define wi_cooking_fuel 1 `"वीज"' 2 `"एल.पी.जी."' 3 `"नेचुरल गैस"' 4 `"बायोगॅस"' 5 `"रॉकेल / केरोसीन"' 6 `"कोळसा"' 7 `"चारकोल"' 8 `"लाकड"' 9 `"काडी/ झुडपं / गवत"' 10 `"कृषी पीक"' 11 `"पशु शेण"' 95 `"घरी कोणते हि जेवण शिजवले जात नाही"' 96 `"इतर (निर्दिष्ट करा)"' 
label values wi_cooking_fuel wi_cooking_fuel
label variable wi_cooking_fuel `"Cooking fuel type"'

label variable wi_cooking_fuel_other `"Cooking fuel other"'

label define wi_floor 11 `"नैसर्गिक तळ - पृथ्वी / माती"' 12 `"नैसर्गिक तळ - वाळू"' 13 `"नैसर्गिक तळ - शेण"' 21 `"अविकसित तळ - लाकडी फळी"' 22 `"अविकसित तळ - ताडाची जातीचे झाड / बांबू"' 23 `"अविकसित तळ - विटा"' 24 `"अविकसित तळ - दगड"' 31 `"तयार तळ - पॉलिश लाकूड"' 32 `"तयार तळ - विनाइल किंवा डामर पट्ट्या"' 33 `"तयार तळ - सिरेमिक टाइल्स"' 34 `"तयार तळ - सिमेंट"' 35 `"पूर्ण तळ - कार्पेट"' 96 `"इतर (निर्दिष्ट करा)"' 
label values wi_floor wi_floor
label variable wi_floor `"Floor material"'

label variable wi_floor_other `"Floor Material Other"'

label define wi_roof 11 `"नैसर्गिक छप्पर - छत नाही"' 12 `"नैसर्गिक छप्पर - वाळलेले गवत / ताडाचे पान"' 13 `"नैसर्गिक छप्पर - माती"' 14 `"नैसर्गिक छप्पर - माती आणि गवत यांचे मिश्रण"' 15 `"नैसर्गिक छप्पर - प्लॅस्टिक / पॉलीथीन शीट"' 21 `"अविकसित छप्पर - गंजलेली चटई"' 22 `"अविकसित छप्पर - ताडाचे लाकूड / बांबू"' 23 `"अविकसित छप्पर- लाकडी फळ्या"' 24 `"अविकसित छप्पर - कच्ची विटा"' 25 `"अविकसित छप्पर - ढोबळपणे ठेवलेल्या विटा"' 31 `"तयार छप्पर - धातू / टिन"' 32 `"तयार छप्पर - लाकूड"' 33 `"तयार छप्पर - कॅलामाइन / सिमेंट फायबर"' 34 `"तयार छप्पर - एस्बेस्टोस शीट"' 35 `"तयार छप्पर -  सिमेंट / आर. सी. सी"' 36 `"तयार छप्पर - कवेलू"' 37 `"तयार छप्पर -  टाइल्स"' 38 `"तयार छप्पर -  स्लेट (पाटी)"' 39 `"तयार छप्पर - विटा"' 96 `"इतर (निर्दिष्ट करा)"' 
label values wi_roof wi_roof
label variable wi_roof `"Roof Material"'

label variable wi_roof_other `"Roof Material Other"'

label define wi_wall 11 `"नैसर्गिक भिंती - भिंती नाही"' 12 `"नैसर्गिक भिंती - ऊस / ताडाचे झाड / झाडाचा बुंधा"' 13 `"नैसर्गिक भिंती - माती"' 14 `"नैसर्गिक भिंती - वाळलेल्या पेंढा / गवत"' 21 `"अविकसित भिंती - बांबूसह  चिखल"' 22 `"अविकसित भिंती - दगड सह चिखल"' 23 `"अविकसित भिंती - प्लायवूड"' 24 `"अविकसित भिंती - पुठ्ठा / खर्डा"' 25 `"अविकसित भिंती - कच्ची विटा"' 26 `"अविकसित भिंती - पुन्हा वापरलेली लाकड"' 31 `"तयार भिंती - सिमेंट"' 32 `"तयार भिंती - दगडसह चुनकळी / सिमेंट"' 33 `"तयार भिंती - विट"' 34 `"तयार भिंती - सिमेंट ब्लॉक"' 35 `"तयार भिंती - लाकडी फळ्या / कवेलू"' 36 `"तयार भिंती - धातू / एस्बेस्टोस शीट"' 96 `"इतर (निर्दिष्ट करा)"' 
label values wi_wall wi_wall
label variable wi_wall `"Walls Material"'

label variable wi_wall_other `"Walls Material Other"'

label variable wi_sleeping_room `"Sleeping Room"'

label define wi_account 1 `"होय"' 2 `"नाही"' 3 `"माहित नाही"' 
label values wi_account wi_account
label variable wi_account `"Bank or Post account"'

label define wi_loan 1 `"होय"' 2 `"नाही"' 
label values wi_loan wi_loan
label variable wi_loan `"Loan"'

label variable wi_loan_type__1 `"Loan Type:शेतीसाठी"'

label variable wi_loan_type__2 `"Loan Type:आजारपणासाठी"'

label variable wi_loan_type__3 `"Loan Type:लग्नासाठी"'

label variable wi_loan_type__4 `"Loan Type:घरनिर्माण किंवा घरदुरुस्तीसाठी"'

label variable wi_loan_type__5 `"Loan Type:शिक्षणासाठी"'

label variable wi_loan_type__6 `"Loan Type:वाहनखरेदीसाठी"'

label variable wi_loan_type__7 `"Loan Type:इतर"'

label define wi_own_land 1 `"होय"' 2 `"नाही"' 
label values wi_own_land wi_own_land
label variable wi_own_land `"Owns Aggricultural Land"'

label define wi_land_size 1000 `"माहित नाही"' 
label values wi_land_size wi_land_size
label variable wi_land_size `"Total Land size"'

label define wi_irr_land_size 1000 `"माहित नाही"' 
label values wi_irr_land_size wi_irr_land_size
label variable wi_irr_land_size `"Irrigated Land Size"'

label define wi_livestock_avail 1 `"होय"' 2 `"नाही"' 
label values wi_livestock_avail wi_livestock_avail
label variable wi_livestock_avail `"Livestock at home"'

label variable wi_livestock__1 `"Livestock:गायी, बैल किंवा म्हशी"'

label variable wi_livestock__2 `"Livestock:उंट"'

label variable wi_livestock__3 `"Livestock:घोडे, गाढवे किंवा खेचर"'

label variable wi_livestock__4 `"Livestock:शेळ्या"'

label variable wi_livestock__5 `"Livestock:मेंढी"'

label variable wi_livestock__6 `"Livestock:कोंबड्या किंवा बदके"'
