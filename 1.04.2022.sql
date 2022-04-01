ALTER TABLE users DROP CONSTRAINT gender;
ALTER TABLE users DROP CONSTRAINT company;

UPDATE users SET gender = 1;
UPDATE users SET gender = 2 WHERE id in(3, 4, 5, 7, 8, 14, 15);

INSERT INTO companies (name, TIN, MSRN, director, address) VALUES 
('PhotoService', '431253235421', '7688134688375', 'Gennadiy V. Ellis', '56421 Theodora Station Abbottfort, MN 29433-4239'), 
('Service Service', '643033684921', '5570295332423', 'Jora A. Conrad', '99594 Oberbrunner Course Port Remington, TS 64232-7712'), 
('Molibden', '420929705412', '8987201416354', 'Natalya N. Mcree', '14643 Arjun Port Suite 965 North Gloriaside, KZ 69321-7764');

UPDATE users SET company = 1 WHERE id in(5, 10, 15);
UPDATE users SET company = 2 WHERE id in(4, 9, 14);
UPDATE users SET company = 3 WHERE id in(3, 8, 13);
UPDATE users SET company = 4 WHERE id in(2, 7, 12);
UPDATE users SET company = 5 WHERE id in(1, 6, 11);

ALTER TABLE users MODIFY COLUMN gender INT(10);
ALTER TABLE users MODIFY COLUMN company INT(10);

ALTER TABLE users
ADD CONSTRAINT genders
FOREIGN KEY (gender)
REFERENCES genders(id);

ALTER TABLE users
ADD CONSTRAINT companies
FOREIGN KEY (company)
REFERENCES companies(id);
