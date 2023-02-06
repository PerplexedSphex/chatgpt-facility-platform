CREATE TABLE accounts (
  account_id SERIAL PRIMARY KEY,
  account_name VARCHAR(255) NOT NULL,
  sfdc_account_id VARCHAR(255) NOT NULL,
  encamp_account_id VARCHAR(255) NOT NULL
);

CREATE TABLE facilities (
  facility_id SERIAL PRIMARY KEY,
  account_id INT NOT NULL,
  facility_name VARCHAR(255) NOT NULL,
  encamp_facility_id VARCHAR(255) NOT NULL,
  FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

CREATE TABLE projects (
  project_id SERIAL PRIMARY KEY,
  project_name VARCHAR(255) NOT NULL,
  sfdc_opp_id VARCHAR(255) NOT NULL
);

CREATE TABLE project_facilities (
  project_id INT NOT NULL,
  facility_id INT NOT NULL,
  PRIMARY KEY (project_id, facility_id),
  FOREIGN KEY (project_id) REFERENCES projects(project_id),
  FOREIGN KEY (facility_id) REFERENCES facilities(facility_id)
);
