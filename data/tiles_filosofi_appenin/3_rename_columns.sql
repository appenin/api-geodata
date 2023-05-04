BEGIN;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN menage_per TO menage_percent_1_pers;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN menage_p_1 TO menage_percent_pauvre;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN menage_p_2 TO menage_percent_5_pers_ou_plus;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN menage_p_3 TO menage_percent_proprietaire;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN menage_p_4 TO menage_percent_logement_collectif;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN menage_sur TO menage_surface_moyenne_residence_principale_m2;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN menage_p_5 TO menage_percent_logement_maison;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN menage_p_6 TO menage_percent_monoparentaux;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN menage_p_7 TO menage_percent_habitant_logement_construction_avant_1945;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN menage_p_8 TO menage_percent_habitant_logement_construction_45_70;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN menage_p_9 TO menage_percent_habitant_logement_construction_70_90;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN menage_p10 TO menage_percent_habitant_logement_construction_apres_1990;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN menage_p11 TO menage_percent_habitant_logement_construction_inconnu;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN menage_p12 TO menage_percent_habitant_logement_social;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN individus_ TO individus_percent_tot_age_de_0_a_3;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN individu_1 TO individus_percent_tot_age_de_4_a_5;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN individu_2 TO individus_percent_tot_age_de_6_a_10;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN individu_3 TO individus_percent_tot_age_de_11_a_17;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN individu_4 TO individus_percent_tot_age_de_18_a_24;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN individu_5 TO individus_percent_tot_age_de_25_a_39;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN individu_6 TO individus_percent_tot_age_de_40_a_54;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN individu_7 TO individus_percent_tot_age_de_55_a_64;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN individu_8 TO individus_percent_tot_age_de_65_a_79;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN individu_9 TO individus_percent_tot_age_de_80_et_plus;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN individu10 TO individus_percent_tot_age_inconnu;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN niveaux_de TO niveaux_de_vie_moyen;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN densite_me TO densite_menage_km2;

ALTER TABLE tiles_filosofi_appenin
RENAME COLUMN densite_in TO densite_individu_km2;

END;
COMMIT;
