using myservice as service from '../../srv/myservice';

annotate myservice.SubsSet with @(
    UI.SelectionFields:[
        subId,
        student.name,
        book.bookName
    ],
    UI.LineItem:[
        {
            $Type : 'UI.DataField',
            Value : subId,
        },
        {
            $Type : 'UI.DataField',
            Value : student.name,
        },{
            $Type : 'UI.DataField',
            Value : book.bookName,
        },{
            $Type : 'UI.DataField',
            Value : Date,
        },{
            $Type : 'UI.DataField',
            Value : student.course.courseName,
        },
    ],
    UI.Facets:[
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'More Info',
            Target : '@UI.FieldGroup',
        },
    ],
    UI.FieldGroup:{
        Data : [
            {
                $Type : 'UI.DataField',
                Value : subId,
            },
            {
                $Type : 'UI.DataField',
                Value : student_studentId,
            },
            {
                $Type : 'UI.DataField',
                Value : book_bookId,
            },
            {
                $Type : 'UI.DataField',
                Value : Date,
            },
        ],
    }

);
