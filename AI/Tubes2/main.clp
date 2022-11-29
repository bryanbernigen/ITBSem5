(defrule goal-found
    (goal ?g)
    =>
    (printout t "Hasil prediksi = " ?g crlf)
);

(defrule goal-fail
    (declare (salience -1))
    (not (goal ?g))
    =>
    (printout t "Invalid Input, Please Try Again" crlf)
);

(defrule isHSaBG
    =>
    (printout t "HBsAg? (positive/negative) ")  
    (assert (HBsAg(read)))
);

(defrule isAnti-HDV
    (HBsAg positive)
    =>
    (printout t "Anti-HDV? (positive/negative) ")
    (assert (Anti-HDV (read)))
);

(defrule isAnti-HBc
    (HBsAg positive)
    (Anti-HDV negative)
    =>
    (printout t "Anti-HBc? (positive/negative) ")
    (assert (Anti-HBc (read)))
);

(defrule isAnti-HBs
    (HBsAg positive)
    (Anti-HDV negative)
    (Anti-HBc positive)
    =>
    (printout t "Anti-HBs? (positive/negative) ")
    (assert (Anti-HBs (read)))
);

(defrule goal-uncertain
    (HBsAg positive)
    (Anti-HDV negative)
    (Anti-HBc positive)
    (Anti-HBs positive)
    =>
    (assert (goal "Uncertain Configuration"))
);

(defrule IgM-Anti-HBc
    (HBsAg positive)
    (Anti-HDV negative)
    (Anti-HBc positive)
    (Anti-HBs negative)
    =>
    (printout t "IgM Anti-HBc? (positive/negative) ")
    (assert (IgM-Anti-HBc (read)))
);

(defrule goal-Acute-Infection
    (HBsAg positive)
    (Anti-HDV negative)
    (Anti-HBc positive)
    (Anti-HBs negative)
    (IgM-Anti-HBc positive)
    =>
    (assert (goal "Acute Infection"))
);

(defrule goal-Chronic-Infection
    (HBsAg positive)
    (Anti-HDV negative)
    (Anti-HBc positive)
    (Anti-HBs negative)
    (IgM-Anti-HBc negative)
    =>
    (assert (goal "Chronic Infection"))
);

(defrule goal-Uncertain-Configuration2
    (HBsAg positive)
    (Anti-HDV negative)
    (Anti-HBc negative)
    =>
    (assert (goal "Uncertain Configuration"))
);

(defrule goal-HepatitisB+D
    (HBsAg positive)
    (Anti-HDV positive)
    =>
    (assert (goal "Hepatitis B+D"))
);

(defrule Anti-HBs2
    (HBsAg negative)
    =>
    (printout t "Anti-HBs? (positive/negative) ")
    (assert (Anti-HBs (read)))
);

(defrule Anti-HBc2
    (HBsAg negative)
    (Anti-HBs positive)
    =>
    (printout t "Anti-HBc? (positive/negative) ")
    (assert (Anti-HBc (read)))
);

(defrule goal-Cured
    (HBsAg negative)
    (Anti-HBs positive)
    (Anti-HBc positive)
    =>
    (assert (goal "Cured"))
);

(defrule goal-Vaccinated
    (HBsAg negative)
    (Anti-HBs positive)
    (Anti-HBc negative)
    =>
    (assert (goal "Vaccinated"))
);

(defrule Anti-HBc3
    (HBsAg negative)
    (Anti-HBs negative)
    =>
    (printout t "Anti-HBc? (positive/negative) ")
    (assert (Anti-HBc (read)))
);

(defrule goal-Unclear
    (HBsAg negative)
    (Anti-HBs negative)
    (Anti-HBc positive)
    =>
    (assert (goal "Unclear (possible resolved"))
);

(defrule goal-Healthy
    (HBsAg negative)
    (Anti-HBs negative)
    (Anti-HBc negative)
    =>
    (assert (goal "Healthy not vaccinated or suspicious"))
);