tableextension 59900 "Config. Package Table AT EBS" extends "Config. Package Table"
{
    fields
    {
        field(59900; "No. of Included Relations EBS"; Integer)
        {
            Caption = 'No. of Included Relations';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Config. Package field" where("Include Field" = const(true),
                                                            "Relation Table ID" = filter('<>0'),
                                                             "Table ID" = field("Table ID"),
                                                             "Package Code" = field("Package Code")));
        }

    }
}

