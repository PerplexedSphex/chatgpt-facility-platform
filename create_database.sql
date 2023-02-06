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

CREATE TABLE tasks (
  task_id SERIAL PRIMARY KEY,
  project_id INT NOT NULL,
  facility_id INT NOT NULL,
  task_name VARCHAR(255) NOT NULL,
  task_status VARCHAR(255) NOT NULL,
  deadline DATE NOT NULL,
  CHECK (task_status IN ('pending', 'in progress', 'completed')),
  FOREIGN KEY (project_id) REFERENCES projects(project_id),
  FOREIGN KEY (facility_id) REFERENCES facilities(facility_id)
);

CREATE TABLE tickets (
  ticket_id SERIAL PRIMARY KEY,
  task_id INT,
  project_id INT,
  ticket_name VARCHAR(255) NOT NULL,
  FOREIGN KEY (task_id) REFERENCES tasks(task_id),
  FOREIGN KEY (project_id) REFERENCES projects(project_id)
);
