using { ibmcap.db as mytables } from '../db/datamodel';

service myservice {

    entity EmployeeSet as projection on mytables.Employees;
    entity StudentSet as projection on mytables.Students;
    entity CourseSet as projection on mytables.Courses;
    entity BookSet as projection on mytables.Books;
    entity SubsSet @( odata.draft.enabled: true ) as projection on mytables.Subs;

}