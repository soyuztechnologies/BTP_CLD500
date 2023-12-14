using { ibmcap.commons as reuse } from './commons';
using { cuid, managed, Currency } from '@sap/cds/common';

namespace ibmcap.db;

//reusing aspect from standard SAP CDS File
entity Employees: cuid, managed {
    nameFirst: String;
    nameLast: String;
    age: Int16;
    salary: Decimal(10, 2);
    currency: Currency;
}

entity Students {
    //reusing a custom data type
    key studentId : reuse.Guid;
    name: String(255);
    dob: Date;
    age: Integer;
    course: Association to one Courses;
    gender: String(1);
    contactNo: Int64;
}

entity Courses {
    key courseId: reuse.Guid;
    courseName: String;
    type: String(1);
    year: Int16;
}

entity Books {
    key bookId: reuse.Guid;
    bookName: String(80);
    author: String(120);
    publication: String(80);
    year: Int32;
}

entity Subs {
    key subId: reuse.Guid;
    Date: Date;
    book: Association to one Books;
    student: Association to one Students;
}