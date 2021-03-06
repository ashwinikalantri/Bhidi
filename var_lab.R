##Apply Labels to household dataset
hh = apply_labels(hh,
                  interview__key = "Interview Key",
                  interview__id = "Interview ID",
                  start_time = "Interview start time",
                  gps__Latitude = "GPS Latitude",
                  gps__Longitude = "GPS Longitude",
                  gps__Accuracy = "GPS Accuracy",
                  gps__Altitude = "GPS Altitude",
                  gps__Timestamp = "GPS Timestamp",
                  phc = "Primary Health Center",
                  sc = "Sub Center",
                  village = "Village",
                  ic_name = "Respondent's Name",
                  ic_understood = "Understood the purpose of HDSS",
                  ic_questions = "Any further questions",
                  ic_consent = "Consent for participation",
                  landmark = "Landmark",
                  ration_own = "Owns a ration card",
                  ration_type = "Ration card type",
                  caste = "Caste Category",
                  living_since = "No of years living here",
                  insure = "Family Insurance",
                  insure_type__1 = "Kasturba Hospital Family Insurance",
                  insure_type__2 = "Private Health Insurance",
                  insure_type__3 = "Savangi Health Insurance",
                  insure_type__4 = "Other Health Insurance",
                  insure_other = "Other Health Insurance",
                  fmember_no = "No of Family Members",
                  wi_drink_water = "Source of Drinking Water",
                  wi_drink_water_other = "Source of Drinking Water (Other)",
                  wi_toilet = "Toilet Facility",
                  wi_toilet_other = "Toilet Faculity (Other)",
                  wi_electricity = "Electricity",
                  wi_mattress = "Matress",
                  wi_cooker = "Cooker",
                  wi_chair = "Chair",
                  wi_bed = "Bed",
                  wi_table = "Table",
                  wi_fan = "Fan",
                  wi_radio = "Radio",
                  wi_bwtv = "Black and White TV",
                  wi_coltv = "Colour TV",
                  wi_sewingmach = "Sewing Machine",
                  wi_mob_phone = "Mobile Phone",
                  wi_ll_phone = "landline Phone",
                  wi_internet = "Internet",
                  wi_computer = "Computer",
                  wi_refrigerator = "Refrigerator",
                  wi_ac = "AC / Cooler",
                  wi_washmach = "Washing Machine",
                  wi_clock = "Clock",
                  wi_bicycle = "Bicycle",
                  wi_motorcycle = "Motercycle",
                  wi_cart = "Cart",
                  wi_car = "Car",
                  wi_pump = "Pump",
                  wi_thresher = "Thresher",
                  wi_tractor = "Tractor",
                  wi_cooking_fuel = "Cooking Fuel",
                  wi_cooking_fuel_other = "Cooking Fuel (Other)",
                  wi_floor = "Floor Material",
                  wi_floor_other = "Floor Material (Other)",
                  wi_roof = "Roof Material (Other)",
                  wi_roof_other = "Roof Material",
                  wi_wall = "Wall Material",
                  wi_wall_other = "Wall Material (Other)",
                  wi_account = "Bank Account",
                  wi_loan = "Loan",
                  wi_loan_type__1 = "Loan Type: Farm",
                  wi_loan_type__2 = "Loan Type: Health",
                  wi_loan_type__3 = "Loan Type: Marriage",
                  wi_loan_type__4 = "Loan Type: Home",
                  wi_loan_type__5 = "Loan Type: Education",
                  wi_loan_type__6 = "Loan Type: Vehicle",
                  wi_loan_type__7 = "Loan Type: Other",
                  wi_own_land = "Owns Agricultural Land",
                  wi_land_size = "Size of Agricultural Land",
                  wi_irr_land_size = "Size of Irrigated Land",
                  wi_livestock_avail = "Livestock in Household",
                  wi_livestock__1 = "Cows, Bulls, or Buffaloes",
                  wi_livestock__2 = "Camels",
                  wi_livestock__3 = "Horses, Donkeys, or Mules",
                  wi_livestock__4 = "Goats",
                  wi_livestock__5 = "Sheep",
                  wi_livestock__6 = "Chickens or Ducks",
                  locked = "Locked House",
                  hoh_name = "Head of Household (Locked House)",
                  sssys_irnd = "Random",
                  has__errors = "Errors",
                  interview__status = "Status"
)

## Apply labels to individual dataset
ind = apply_labels(ind,
                   interview__key = "Interview Key",
                   interview__id = "Interview ID",
                   hhroster__id = "ID in HH Roster",
                   fmem_fname = "First Name",
                   fmem_mname = "Middle Name",
                   fmem_lname = "Last name",
                   birth_know = "Knows date of birth",
                   dob = "Date of Birth",
                   age_d = "Age (Entered)",
                   age = "Age (Calculated)",
                   gender = "Gender",
                   relat = "Realtion with HoH",
                   relat_oth = "Relation with HoH (Other)",
                   education = "Educaiton",
                   marital_status = "Marital Status",
                   occupation = "Occupation",
                   member = "Member of Organisation",
                   member_which__1 = "Member of Organisation: Gram Panchayat",
                   member_which__2 = "Member of Organisation: Panchayat Samita / Zilla Parishad",
                   member_which__3 = "Member of Organisation:Credit Society",
                   member_which__4 = "Member of Organisation: Cooperative Society",
                   member_which__5 = "Member of Organisation: Senior Citizen Society",
                   member_which__6 = "Member of Organisation: NGO",
                   member_which__7 = "Member of Organisation: Water Supply Society",
                   member_which__8 = "Member of Organisation: Educational Society",
                   member_which__9 = "Member of Organisation: Temple Trusts",
                   member_which__10 = "Member of Organisation: VHNSC",
                   member_which__11 = "Member of Organisation: Sports society",
                   member_which__12 = "Member of Organisation: Female Self Help Group",
                   member_which__13 = "Member of Organisation: Kishori panchayat / Youth group",
                   member_which__14 = "Member of Organisation: Other",
                   phone = "Phone",
                   fmem_mno = "Mobile No",
                   fmem_internet = "Internet on phone",
                   res_status = "Residential Status",
                   menst_status = "Menstrual Status",
                   lmp = "LMP",
                   pregnant = "Pregnant",
                   fmem_g = "Gravida",
                   fmem_p = "Parity",
                   fmem_l = "Live Births",
                   fmem_a = "Abortions",
                   bir_cohort = "Member of Birth cohort",
                   bir_cohort_id = "Birth Cohort ID"
)
