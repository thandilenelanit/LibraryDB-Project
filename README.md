# Library Management System

## Project Overview
This project implements a **Library Management System** using **MySQL**.  
It demonstrates a relational database design with properly structured tables, primary and foreign key constraints, and relationships between tables.  
The database includes **real sample data** for books, members, and staff to test queries and relationships.

---

## Database: `LibraryDB`

### Tables and Relationships

1. **Books**
   - Stores information about books in the library.
   - **Columns:**  
     - `book_id` (INT, PRIMARY KEY, AUTO_INCREMENT)  
     - `title` (VARCHAR, NOT NULL)  
     - `author` (VARCHAR, NOT NULL)  
     - `genre` (VARCHAR)  
     - `published_year` (YEAR)  
     - `isbn` (VARCHAR, UNIQUE)  

2. **Members**
   - Stores information about library members.
   - **Columns:**  
     - `member_id` (INT, PRIMARY KEY, AUTO_INCREMENT)  
     - `first_name` (VARCHAR, NOT NULL)  
     - `last_name` (VARCHAR, NOT NULL)  
     - `email` (VARCHAR, UNIQUE, NOT NULL)  
     - `phone` (VARCHAR)  

3. **Loans**
   - Tracks book loans by members.
   - **Columns:**  
     - `loan_id` (INT, PRIMARY KEY, AUTO_INCREMENT)  
     - `book_id` (INT, FOREIGN KEY → Books(book_id))  
     - `member_id` (INT, FOREIGN KEY → Members(member_id))  
     - `loan_date` (DATE, NOT NULL)  
     - `return_date` (DATE)  

4. **Staff**
   - Stores information about library staff.
   - **Columns:**  
     - `staff_id` (INT, PRIMARY KEY, AUTO_INCREMENT)  
     - `name` (VARCHAR, NOT NULL)  
     - `role` (VARCHAR)  

---

## Relationships
- **One-to-Many:** Members → Loans (One member can have many loans)  
- **One-to-Many:** Books → Loans (One book can be loaned many times)  

---

## Sample Data

### Books
| Title | Author | Genre | Published Year | ISBN |
|-------|--------|-------|----------------|------|
| How to take the limits off GOD | Morris Cerullo | Fiction | 1925 | 9780743273565 |
| Atomic power with God | Franklin Hall | Dystopian | 1946 | 9780451524935 |
| ManOn Three Dimension | Kenneth E. Hagin | Fiction | 1994 | 9780061120084 |
| Those who leave you | Dag Heward-mills | Fiction | 2011 | 9780316769488 |

### Members
| First Name | Last Name | Email | Phone |
|------------|-----------|-------|-------|
| Unathi | Ngeva | NgevaUF@eskom.co.za | 0784808837 |
| Fagma | Kahaar | IsaacsF@eskom.co.za | 0838847679 |
| Khanyisile | Ngandana | 2759118@myuwc.ac.za | 0636026373 |

### Loans
| Book ID | Member ID | Loan Date | Return Date |
|---------|-----------|-----------|------------|
| 1 | 1 | 2025-10-01 | 2025-10-15 |
| 2 | 1 | 2025-10-03 | NULL |
| 3 | 2 | 2025-10-05 | 2025-10-20 |
| 4 | 3 | 2025-10-07 | NULL |

### Staff
| Name | Role |
|------|------|
| Cingimiso Nelani | Librarian |
| Zuzole Dlulemnyango | Assistant |

---

## How to Use
1. Open `LibraryDB.sql` in **MySQL Workbench** or **VS Code MySQL extension**.  
2. Execute the SQL script to create the database, tables, and insert all real sample data.  
3. You can now query the tables, test relationships, and practice SQL operations.

---

## Notes
- The SQL script includes **`DROP DATABASE IF EXISTS`**, which ensures a fresh start if the database already exists.  
- All tables are normalized and follow proper relational database design principles.  

---

**Author:** Thandile Nelani
