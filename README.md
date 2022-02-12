# SQL Temeller - Ödev 8

1. *test* veritabanınızda employee isimli sütun bilgileri *id(INTEGER)*, *name VARCHAR(50)*, *birthday DATE*, *email VARCHAR(100)* olan bir tablo oluşturalım.
2. Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
3. Sütunların her birine göre diğer sütunları güncelleyecek 5 adet *UPDATE* işlemi yapalım.
4. Sütunların her birine göre ilgili satırı silecek 5 adet *DELETE* işlemi yapalım.

***

1.

```SQL
CREATE TABLE public.employee
(
    id INTEGER,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);
```

2. İlgili dosya: [employee.sql](./employee.sql)

3.

```SQL
UPDATE employee SET name = CONCAT(name, ' Güncellendi') WHERE birthday < '01/01/1994';
UPDATE employee SET name = CONCAT(name, ' İlk 5 sıra.') WHERE id < 5;
UPDATE employee SET name = CONCAT(name, ' Son 5 sıra.') WHERE id > 5;
UPDATE employee SET name = CONCAT(name, ' Siz biraz yaşlanmışsınız sanki.') WHERE  birthday < '01/01/1990';
UPDATE employee SET name = CONCAT(name, ' Siz biraz gençsiniz sanki.') WHERE  birthday > '01/01/2000';
```

4. Burada aklıma fazla senaryo gelmedi bende son 5 adet satırı sildim.

```SQL
DELETE FROM employee WHERE id > 45;
```
