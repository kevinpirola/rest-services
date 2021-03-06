DROP INDEX IF EXISTS UX_UTENTE;

DROP TABLE IF EXISTS UTENTE;


-------------------------------------------------

CREATE TABLE UTENTE
(
	UT_ID INTEGER NOT NULL PRIMARY KEY,
	UT_USERNAME VARCHAR(50),
	UT_PASSWORD VARCHAR(50),
	UT_EMAIL VARCHAR(50)
);

ALTER TABLE UTENTE ADD CONSTRAINT UQ_UTENTE_USERNAME UNIQUE(UT_USERNAME);

CREATE UNIQUE INDEX UX_UTENTE ON UTENTE (UT_USERNAME);