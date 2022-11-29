(deffacts initial-facts
	(clinician 0 idle none)
	(clinician_time 0 0)
	
	(clinician 1 idle none)
	(clinician_time 1 0)
	
	(clinician 2 idle none)
	(clinician_time 2 0)
	
	(clinician 3 idle none)
	(clinician_time 3 0)
	
	(clinician 4 idle none)
	(clinician_time 4 0)
	
	(clinician 5 idle none)
	(clinician_time 5 0)

	(patient 0 thiopental 0)
	(patient 1 als 0)
	(patient 2 zero_negative_blood_unit 0)
	(patient 3 tourniquet 0)
	(patient 4 REBOA 0)
	(patient 5 toracotomy 0)
);

(defrule administer_thiopental "Clinician administers thiopental to a patient"
	(declare (salience 2))
	?clinician <- (clinician ?clinician_id idle none) 
	?clinician_time <- (clinician_time ?clinician_id ?time) 
	?patient <- (patient ?patient_id thiopental ?volume)
=>
	(assert (clinician ?clinician_id working ?patient_id))
	; let's assume that a clinician lasts 10 minutes administrating thiopental
	(assert (clinician_time ?clinician_id (+ ?time 10)))
	(assert (patient ?patient_id check_hypotension ?volume))
	(retract ?clinician ?patient ?clinician_time)
	(printout t "The clinician " ?clinician_id " administers thiopental to patient " ?patient_id crlf)
);
	
(defrule check_patient_hypotension "Clinician checks patient's tension"
	(declare (salience 0))
	(patient ?patient_id check_hypotension ?volume)
	(clinician ?clinician_id working ?patient_id)
	?clinician_time <- (clinician_time ?clinician_id ?time)  
=>
	; let's assume that a clinician checks the patient's tension every 10 minutes for an hour
	(assert (clinician_time ?clinician_id (+ ?time 10)))
	(retract ?clinician_time)
	(printout t "The clinician " ?clinician_id " checks the tension of the patient " ?patient_id crlf)
);

(defrule stop_checking_patient_hypotension "Clinician stops checking patient's tension"
	(declare (salience 1))
	?patient <- (patient ?patient_id check_hypotension ?volume)
	?clinician <- (clinician ?clinician_id working ?patient_id)
	?clinician_time <- (clinician_time ?clinician_id ?time&:(> ?time 59))  
=>
	(assert (clinician ?clinician_id idle none))
	(assert (clinician_time ?clinician_id 0))
	; the patient is healthy now
	(retract ?patient ?clinician ?clinician_time)
	(printout t "Patient " ?patient_id " is healthy now" crlf)
);

; Rules for K2
(defrule start_als "Clinician starts ALS process"
	(declare (salience 2))
	?clinician <- (clinician ?clinician_id idle none)
	?patient <- (patient ?patient_id als ?volume)
=>
	(assert (clinician ?clinician_id working ?patient_id))
	(assert (patient ?patient_id adrenaline ?volume))
	(retract   ?clinician   ?patient)
	(printout t "The clinician " ?clinician_id " starts ALS process on patient " ?patient_id crlf)
);
	
(defrule administer_adrenaline "Clinician administers adrenaline to a patient"
	(declare (salience 0))
	(patient ?patient_id adrenaline ?volume)
	?clinician_time <- (clinician_time ?clinician_id ?time)  
	(clinician ?clinician_id working ?patient_id) 
=>
	; let's assume that a clinician administers 5mg (15 minutes total) to the patient
	(assert (clinician_time ?clinician_id (+ ?time 3)))
	(retract ?clinician_time)
	(printout t "The clinician " ?clinician_id " administers adrenaline to patient " ?patient_id crlf)
);

(defrule stop_als "Clinician stops ALS process"
	(declare (salience 1))
	?patient <- (patient ?patient_id adrenaline ?volume)
	?clinician <- (clinician ?clinician_id working ?patient_id)
	?clinician_time <- (clinician_time ?clinician_id ?time&:(> ?time 14))  
=>
	(assert (clinician ?clinician_id idle none))
	(assert (clinician_time ?clinician_id 0))
	; the patient is healthy now
	(retract ?patient ?clinician ?clinician_time)
	(printout t "Patient " ?patient_id " is healthy now" crlf)
);

; Rules for K3 and K4
; Rules for K3
(defrule administer_tranexamic_acid "Clinician administers tranexamic acid to a patient"
	(declare (salience 7))
	?clinician <- (clinician ?clinician_id idle none) 
	?clinician_time <- (clinician_time ?clinician_id ?time) 
	?patient <- (patient ?patient_id tranexamic_acid ?volume)
=>
	(assert (patient ?patient_id fibrinogen ?volume))
	(retract ?patient)
	(printout t "The clinician " ?clinician_id " administers tranexamic acid to patient " ?patient_id crlf)
);

(defrule administer_fibrinogen "Clinician administers fibrinogen to a patient"
	(declare (salience 8))
	?clinician <- (clinician ?clinician_id idle none) 
	?clinician_time <- (clinician_time ?clinician_id ?time) 
	?patient <- (patient ?patient_id fibrinogen ?volume)
=>
	(assert (patient ?patient_id zero_negative_blood_unit ?volume))
	(retract ?patient)
	(printout t "The clinician " ?clinician_id " administers fibrinogen to patient " ?patient_id crlf)
);

(defrule administer_zero_negative_blood_unit "Clinician administers zero negative blood unit to a patient"
	(declare (salience 3))
	?clinician <- (clinician ?clinician_id idle none) 
	?clinician_time <- (clinician_time ?clinician_id ?time) 
	?patient <- (patient ?patient_id zero_negative_blood_unit ?volume)
=>
	(assert (clinician ?clinician_id working ?patient_id))
	(assert (clinician_time ?clinician_id (+ ?time 1)))
	(assert (patient ?patient_id zero_negative_blood_unit (+ ?volume 1)))
	(retract ?clinician ?patient ?clinician_time)
	(printout t "The clinician " ?clinician_id " administers zero negative blood unit to patient " ?patient_id crlf)
);

(defrule clinician_administer_zero_negative_blood_unit "Already working clinician administers zero negative blood unit to a patient"
	(declare (salience 4))
	?patient <- (patient ?patient_id zero_negative_blood_unit ?volume)
	?clinician <- (clinician ?clinician_id working ?patient_id) 
	?clinician_time <- (clinician_time ?clinician_id ?time) 
=>
	(assert (clinician_time ?clinician_id (+ ?time 1)))
	(assert (patient ?patient_id zero_negative_blood_unit (+ ?volume 1)))
	(retract ?patient ?clinician_time)
	(printout t "The clinician " ?clinician_id " administers zero negative blood unit to patient " ?patient_id crlf)
);

(defrule do_not_administer_zero_negative_blood_unit "Stop clinician from administrating zero negative blood unit to a patient"
	(declare (salience 5))
	?patient <- (patient ?patient_id zero_negative_blood_unit 3)
	?clinician <- (clinician ?clinician_id working ?patient_id) 
	?clinician_time <- (clinician_time ?clinician_id ?time) 
=>
	(assert (clinician_time ?clinician_id (+ ?time 1)))
	(retract ?clinician_time)
);

(defrule administer_MTP "Clinician starts Massive Transfusion Protocol (MTP)"
	(declare (salience 6))
	?patient <- (patient ?patient_id zero_negative_blood_unit 3)
	?clinician <- (clinician ?clinician_id working ?patient_id)
	?clinician_time <- (clinician_time ?clinician_id 0)  
=>
	; clinician can only start MTP when (fibrinogen & tranexamic_acid & 3*zero_negative_blood_unit)
	(assert (clinician ?clinician_id idle none))
	(assert (clinician_time ?clinician_id 0))
	(retract ?patient ?clinician)
	(printout t "The clinician " ?clinician_id " starts massive transfusion protocol on patient " ?patient_id crlf)
	(printout t "Patient " ?patient_id " is healthy now " crlf)
);

(defrule check_missing_drugs "Clinician is notified by missing drug administration"
	(declare (salience 7))
	?clinician <- (clinician ?clinician_id working ?patient_id)
	?clinician_time <- (clinician_time ?clinician_id 5) 
	?patient <- (patient ?patient_id zero_negative_blood_unit ?volume&:(> ?volume 0))
=>
	; clinician checks time and drugs administered
	(assert (patient ?patient_id tranexamic_acid ?volume))
	(assert (clinician_time ?clinician_id 0))
	(retract ?patient ?clinician_time)
	(printout t "The clinician " ?clinician_id " decides to administer tranexamic acid and fibrinogen to " ?patient_id crlf)
);

(defrule apply_tourniquet "Clinician apply thiopental to a patient"
	(declare (salience 2))
	?clinician <- (clinician ?clinician_id idle none) 
	?clinician_time <- (clinician_time ?clinician_id ?time) 
	?patient <- (patient ?patient_id tourniquet ?volume)
=>
	(assert (clinician ?clinician_id working ?patient_id))
	; let's assume that a clinician lasts 5 minutes applying tourniquet
	(assert (clinician_time ?clinician_id (+ ?time 5)))
	(assert (patient ?patient_id notify_clinician 1))
	(retract ?clinician ?patient ?clinician_time)
	(printout t "The clinician " ?clinician_id " applies tourniquet to patient " ?patient_id crlf)
);

(defrule apply_reboa "Clinician apply REBOA to a patient"
	(declare (salience 2))
	?clinician <- (clinician ?clinician_id idle none) 
	?clinician_time <- (clinician_time ?clinician_id ?time) 
	?patient <- (patient ?patient_id REBOA ?volume)
=>
	(assert (clinician ?clinician_id working ?patient_id))
	; let's assume that a clinician lasts 5 minutes applying REBOA
	(assert (clinician_time ?clinician_id (+ ?time 5)))
	(assert (patient ?patient_id notify_clinician 1))
	(retract ?clinician ?patient ?clinician_time)
	(printout t "The clinician " ?clinician_id " applies REBOA to patient " ?patient_id crlf)
);

(defrule apply_toracotomy "Clinician apply toracotomy to a patient"
	(declare (salience 2))
	?clinician <- (clinician ?clinician_id idle none) 
	?clinician_time <- (clinician_time ?clinician_id ?time) 
	?patient <- (patient ?patient_id toracotomy ?volume)
=>
	(assert (clinician ?clinician_id working ?patient_id))
	; let's assume that a clinician lasts 5 minutes applying toracotomy
	(assert (clinician_time ?clinician_id (+ ?time 5)))
	(assert (patient ?patient_id notify_clinician 1))
	(retract ?clinician ?patient ?clinician_time)
	(printout t "The clinician " ?clinician_id " applies toracotomy to patient " ?patient_id crlf)
);

(defrule check_patient_notification "Check patient time after tourniquet/REBOA/toracotomy"
	(declare (salience 0))
	(patient ?patient_id notify_clinician ?volume)
	(clinician ?clinician_id working ?patient_id)
	?clinician_time <- (clinician_time ?clinician_id ?time&:(< ?time 15))  
=>
	(assert (clinician_time ?clinician_id (+ ?time 5)))
	(retract ?clinician_time)
);

(defrule notify_clinician "Notify clinician"
	(declare (salience 0))
	?patient <- (patient ?patient_id notify_clinician ?volume)
	(clinician ?clinician_id working ?patient_id)
	?clinician_time <- (clinician_time ?clinician_id ?time&:(> ?time 14))  
=>
	(assert (patient ?patient_id notify_clinician (+ ?volume 1)))
	(assert (clinician_time ?clinician_id 0))
	(retract ?patient ?clinician_time)
	(printout t "Notification: Clinician " ?clinician_id ", " (* ?time ?volume) " minutes has passed since the treatment application to patient " ?patient_id crlf)
);

(defrule stop_notification "The clinician is not notified anymore about a patient"
	(declare (salience 1))
	?patient <- (patient ?patient_id notify_clinician 5)
	?clinician <- (clinician ?clinician_id working ?patient_id)
	?clinician_time <- (clinician_time ?clinician_id ?time)  
=>
	(assert (clinician ?clinician_id idle none))
	(assert (clinician_time ?clinician_id 0))
	; the patient is healthy now
	(retract ?patient ?clinician ?clinician_time)
	(printout t "Patient " ?patient_id " is healthy now" crlf)
);