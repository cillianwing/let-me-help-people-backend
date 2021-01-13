## General Goals

### User Profile
* Basic info: Age, sex, location, background/description
### Med School Application Tracker
* Schools applying to
* Status: primary app, secondary app, PS, primary essays, secondary essays, submitted, rejected, waitlist, II, accepted, due date, cost; PS, secondary essays, II will each have their own models
### Med Schools (List)
* Will need to manually create a DB entry for each med school
* Name, location, degree type, students, website, description, public/private, tuition
### Education
* School, degree type, years attended, courses, cGPA, sGPA
* cGPA and sGPA for all courses combined (w/ chart showing trend)
### ECs
* type, description of duties, location, date, time, reflection, contact info
### Personal Statements
* school (belongs_to), prompt, essay
### Primary Essays
* school (belongs_to), prompt, essay
### Secondary Essays
* school (belongs_to), prompt, essay
### LORs
* Contact info, status (notified, requested, received)
### Student Planner (Less Important)

## Models

### users
* email, password, age, location, description, traditional, hobbies, interests
### med_apps
* school_id, primary app, secondary app, personal statement, primary essays, secondary essays, status, details
### courses
* number, name, professor, time (start/end), days, grade, semester, year, description
### extra_curriculars
* title, company/group, duties (array), dates (start/end), hours completed, contact info, paid/unpaid
* eventually would like to have some sort of journal feature but that is not a primary concern
### work_experiences
* title, company name, company location, duties (array), dates (start/end)
### essays
* name, attachment
### letters_of_rec
* name, title, company/school, attachment