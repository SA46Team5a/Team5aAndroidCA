echo "start setup"
sqlcmd -i DBsetup.sql

echo "Insert Categories"
sqlcmd -i insertCategories.sql

echo "Insert Authors"
sqlcmd -i insertAuthors.sql

echo "Insert Books"
sqlcmd -i insertBooks.sql

echo "Insert Discounts"
sqlcmd -i insertDiscounts.sql

echo "Insert Advertisements"
sqlcmd -i insertAdvertisements.sql
