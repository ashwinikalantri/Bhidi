clear
insheet using "assignment__actions.tab", tab case names

label variable assignment__id `"Assignment id (identifier in numeric format)"'
label variable date `"Utc Date when the action was taken"'
label variable time `"Utc Time when the action was taken"'
label define action 1 `"Created"' 2 `"Deleted"' 3 `"Reassigned"' 4 `"ReceivedByTablet"' 5 `"Archived"' 6 `"Unarchived"' 7 `"AudioRecordingChanged"' 8 `"QuantityChanged"' 9 `"WebModeChanged"' 
label values action action
label variable action `"Type of action taken"'
label variable originator `"Login name of the person performing the action"'
label define role 0 `"<UNKNOWN ROLE>"' 1 `"Interviewer"' 2 `"Supervisor"' 3 `"Headquarter"' 4 `"Administrator"' 5 `"Api User"' 
label values role role
label variable role `"System role of the person performing the action"'
label variable responsible__name `"Login name of the person now responsible for the assignment"'
label define responsible__role 0 `"<UNKNOWN ROLE>"' 1 `"Interviewer"' 2 `"Supervisor"' 3 `"Headquarter"' 4 `"Administrator"' 5 `"Api User"' 
label values responsible__role responsible__role
label variable responsible__role `"System role of the person now responsible for the assignment"'
label variable old__value `"Value before changes"'
label variable new__value `"Value after changes"'
label variable comment `"Text of the comment"'
