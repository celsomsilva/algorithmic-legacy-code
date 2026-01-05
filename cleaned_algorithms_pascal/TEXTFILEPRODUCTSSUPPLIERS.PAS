{

  ORIGINAL NAME: ARQUIVOS.PAS

  This program demonstrates the use of text files to store
  simple records and establish a relationship between them.

  Three files are used:

  1. Products file
     - Each product name is stored sequentially.
     - The physical position of the record acts as the product code.

  2. Suppliers file
     - Each supplier name is stored sequentially.
     - The physical position of the record acts as the supplier code.

  3. Relationship file
     - Stores pairs (supplier, product) using file positioning
       to simulate a basic relationship between entities.

  This is a typical file-handling and indexing exercise
  from early data structures coursework.
}

program TextFileProductsSuppliers;

uses
  crt;

var
  productsFile     : file of string;
  suppliersFile    : file of string;
  relationFile     : file of string;

  productName      : string;
  supplierName     : string;

  option           : char;
  continueFlag     : char;

{ Initialize products file }
procedure InitProducts;
begin
  continueFlag := 'S';
  rewrite(productsFile);

  repeat
    write('Enter product name: ');
    readln(productName);

    { Write product to file }
    write(productsFile, productName);

    writeln('Add another product? (S = Yes, any other key = No)');
    readln(continueFlag);
    continueFlag := upcase(continueFlag);
  until continueFlag <> 'S';

  close(productsFile);
end;

{ Initialize suppliers file }
procedure InitSuppliers;
begin
  continueFlag := 'S';
  rewrite(suppliersFile);

  repeat
    write('Enter supplier name: ');
    readln(supplierName);

    { Write supplier to file }
    write(suppliersFile, supplierName);

    writeln('Add another supplier? (S = Yes, any other key = No)');
    readln(continueFlag);
    continueFlag := upcase(continueFlag);
  until continueFlag <> 'S';

  close(suppliersFile);
end;

{ Print products with physical position as code }
procedure PrintProducts;
begin
  reset(productsFile);

  while not eof(productsFile) do
  begin
    read(productsFile, productName);
    writeln('Code: ', filepos(productsFile), '  Product: ', productName);
  end;

  close(productsFile);
end;

{ Print suppliers with physical position as code }
procedure PrintSuppliers;
begin
  reset(suppliersFile);

  while not eof(suppliersFile) do
  begin
    read(suppliersFile, supplierName);
    writeln('Code: ', filepos(suppliersFile), '  Supplier: ', supplierName);
  end;

  close(suppliersFile);
end;

{ Create relationship file using seek and file positions }
procedure CreateRelationFile;
begin
  rewrite(relationFile);
  reset(productsFile);
  reset(suppliersFile);

  { Supplier 0 -> Product 0 }
  seek(suppliersFile, 0);
  read(suppliersFile, supplierName);
  seek(productsFile, 0);
  read(productsFile, productName);
  write(relationFile, supplierName, productName);

  { Supplier 1 -> Product 4 }
  seek(suppliersFile, 1);
  read(suppliersFile, supplierName);
  seek(productsFile, 4);
  read(productsFile, productName);
  write(relationFile, supplierName, productName);

  { Supplier 0 -> Product 2 }
  seek(suppliersFile, 0);
  read(suppliersFile, supplierName);
  seek(productsFile, 2);
  read(productsFile, productName);
  write(relationFile, supplierName, productName);

  { Supplier 2 -> Product 1 }
  seek(suppliersFile, 2);
  read(suppliersFile, supplierName);
  seek(productsFile, 1);
  read(productsFile, productName);
  write(relationFile, supplierName, productName);

  { Supplier 0 -> Product 3 }
  seek(suppliersFile, 0);
  read(suppliersFile, supplierName);
  seek(productsFile, 3);
  read(productsFile, productName);
  write(relationFile, supplierName, productName);

  close(productsFile);
  close(suppliersFile);
  close(relationFile);
end;

{ Print relationship file }
procedure PrintRelations;
begin
  reset(relationFile);

  while not eof(relationFile) do
  begin
    read(relationFile, supplierName, productName);
    writeln('Relation: ', supplierName, ' -> ', productName);
  end;

  close(relationFile);
end;

{ Main program }
begin
  assign(productsFile,  'Products.dat');
  assign(suppliersFile, 'Suppliers.dat');
  assign(relationFile,  'Relations.dat');

  clrscr;
  option := #0;

  while option <> 'X' do
  begin
    writeln;
    writeln('Choose an option:');
    writeln(' 1 -> Insert products');
    writeln(' 2 -> Insert suppliers');
    writeln(' 3 -> Create product-supplier relation');
    writeln(' 4 -> Print products');
    writeln(' 5 -> Print suppliers');
    writeln(' 6 -> Print relations');
    writeln(' X -> Exit');

    readln(option);
    option := upcase(option);

    case option of
      '1': InitProducts;
      '2': InitSuppliers;
      '3': CreateRelationFile;
      '4': PrintProducts;
      '5': PrintSuppliers;
      '6': PrintRelations;
    end;
  end;
end.

