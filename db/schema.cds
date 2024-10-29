namespace my.space;

entity Table {
  key ID        : Integer;
      auditor   : String(50);
      assetname : String(50);
      assetid   : Integer;
      stock     : Integer;
      price     : Decimal(10, 2);
}

