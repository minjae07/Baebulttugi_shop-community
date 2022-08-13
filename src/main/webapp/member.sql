DROP TABLE member PURGE;
CREATE TABLE member(
	memberId VARCHAR2(16) PRIMARY KEY,
	memberPasswd VARCHAR2(16) NOT NULL,
	memberName VARCHAR2(15) NOT NULL,
	memberZipcode VARCHAR2(5) NOT NULL,
	memberAddr1 VARCHAR2(50) NOT NULL,
	memberAddr2 VARCHAR2(100) NOT NULL,
	memberEmail VARCHAR2(30) NOT NULL,
	memberGender CHAR(1) NOT NULL,
	memberJob VARCHAR(20) NOT NULL
)

CREATE TABLE Address(
	addressNumber NUMBER PRIMARY KEY,
	zipCode VARCHAR2(5) NOT NULL,
	do VARCHAR2(12) NOT NULL,
	si VARCHAR2(18) NOT NULL,
	gugun VARCHAR2(15) NOT NULL,
	ro VARCHAR2(20) NOT NULL
)

CREATE SEQUENCE address_seq;

INSERT INTO address VALUES(address_seq.nextval, '11111', '경상북도', '경산시', '하양읍', '하양로13-13');
INSERT INTO address VALUES(address_seq.nextval, '11111', '경상북도', '경산시', '하양읍', '하양로13-14');
INSERT INTO address VALUES(address_seq.nextval, '11111', '경상북도', '경산시', '하양읍', '하양로13-15');
INSERT INTO address VALUES(address_seq.nextval, '11111', '경상북도', '경산시', '하양읍', '하양로13-16');
COMMIT















