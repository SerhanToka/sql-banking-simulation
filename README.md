# 🏦 SQL Banking Simulation & Data Analysis

**(TR)** Bu proje, SQL öğrenme sürecimde sadece bir veritabanı kurmakla kalmayıp, onu yönetmek ve içindeki verileri analiz etmek için geliştirdiğim uçtan uca bir çalışmadır.

**(EN)** This project is an end-to-end study I developed during my SQL learning journey, not only to set up a database but also to manage it and analyze the data within.

---

## 🇹🇷 Türkçe (TR)

### 🎯 Amaç
Bir Siber Güvenlik ve Finansal Veri Analisti adayı olarak, veritabanı yönetim sistemlerinin (DBMS) hem **mimari** (DDL) hem de **analitik** (DQL) yönlerini simüle etmek istedim. Bro Code SQL serisinin tamamını (1-29) uygulayarak, hayali bir banka sistemi üzerinden şu yetkinlikleri kazandım:

1.  **Sistem Tasarımı:** Veri bütünlüğünü sağlayan kısıtlamalarla (`PK`, `FK`, `UNIQUE`) sağlam bir altyapı kurmak.
2.  **İlişkisel Mantık:** Farklı tablolardaki verileri birleştirerek (`JOINS`) anlamlı raporlar üretmek.
3.  **Veri Analizi:** Müşteri hareketlerini gruplayarak (`GROUP BY`) ve filtreleyerek (`HAVING`) finansal içgörüler elde etmek.
4.  **Güvenlik ve Optimizasyon:** Sanal tablolar (`VIEWS`) ve alt sorgular (`SUBQUERIES`) ile veriye erişimi yönetmek.

### 🛠️ Kullanılan Teknolojiler ve Kavramlar
* **Veritabanı:** MariaDB / MySQL
* **Araçlar:** MySQL Workbench, VSCodium
* **Temel Kavramlar:** DDL (Tablo Oluşturma), DML (Veri İşleme)
* **İleri Kavramlar:** `JOINS` (Inner, Left, Right), `UNION`, `SUBQUERIES`, `VIEWS`, `AGGREGATE FUNCTIONS`

### 📂 Proje Yapısı
Bu proje iki ana aşamadan oluşur:
1.  **Kurulum (`Bank_System_Setup.sql`):** Müşteriler, Hesaplar ve İşlemler tablolarının, **Fraud Analizi** mantığına uygun kısıtlamalarla (örn: `CHECK amount > 0`) oluşturulması.
2.  **Analiz (`Bank_Analysis_Queries.sql`):** Müşteri varlık raporları, şüpheli işlem tespiti ve işlem hacmi analizleri.

---

## 🇬🇧 English (EN)

### 🎯 Goal
As an aspiring Cyber Security and Financial Data Analyst, I wanted to simulate both the **architectural** (DDL) and **analytical** (DQL) aspects of database management systems. By following the complete Bro Code SQL series (1-29), I gained the following competencies through an imaginary banking system:

1.  **System Design:** Building a robust infrastructure with constraints (`PK`, `FK`, `UNIQUE`) to ensure data integrity.
2.  **Relational Logic:** Generating meaningful reports by joining data from different tables (`JOINS`).
3.  **Data Analysis:** Deriving financial insights by grouping (`GROUP BY`) and filtering (`HAVING`) customer transactions.
4.  **Security & Optimization:** Managing data access using virtual tables (`VIEWS`) and subqueries (`SUBQUERIES`).

### 🛠️ Technologies & Concepts
* **Database:** MariaDB / MySQL
* **Tools:** MySQL Workbench, VSCodium
* **Core Concepts:** DDL (Data Definition), DML (Data Manipulation)
* **Advanced Concepts:** `JOINS`, `UNION`, `SUBQUERIES`, `VIEWS`, `AGGREGATE FUNCTIONS`

### 📂 Project Structure
1.  **Setup (`Bank_System_Setup.sql`):** Creating Customers, Accounts, and Transactions tables with constraints tailored for **Fraud Analysis** logic (e.g., `CHECK amount > 0`).
2.  **Analysis (`Bank_Analysis_Queries.sql`):** Queries for customer asset reports, suspicious transaction detection, and transaction volume analysis.

---

## 🚀 Nasıl Çalıştırılır? / How to Run?

1.  Repo'yu klonlayın / Clone the repo.
2.  `Bank_System_Setup.sql` dosyasını çalıştırarak tabloları oluşturun / Run the setup file to create tables.
3.  `Bank_Analysis_Queries.sql` dosyasındaki sorgularla analiz yapın / Use the analysis file to run queries.

```sql
source /path/to/Bank_System_Setup.sql;
```
### 📝 Note
Developed for educational purposes and practice while following the Bro Code SQL tutorial series (Videos 1-29).
