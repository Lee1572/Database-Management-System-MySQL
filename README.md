# Guitar Shop Database Management System

A MySQL relational database project that models the core operations of a small online guitar retailer. It covers product categories, products, customers, addresses, orders, order line items and administrator records.

**Portfolio website:** Enable GitHub Pages with the `docs/` folder on the `main` branch. The site is a static project showcase; it does not connect to a live database or execute SQL in the browser.

## Features

- Seven related tables with primary keys, unique constraints and foreign-key relationships.
- Demonstration records for products, customers, addresses, orders and order items.
- Query examples using joins, conditional expressions, filtering and aggregation.
- Stored procedure examples for category insertion and product-count reporting.
- Additional indexes for common relationship and lookup columns.
- Entity-relationship diagram and GitHub Pages documentation.

## Requirements

- MySQL Server 8.0 or later.
- MySQL Workbench or the MySQL command-line client (optional GUI).

## Setup

> **Warning:** `database/schema.sql` drops and recreates the `my_guitar_shop` database. Back up any existing database with that name before running it.

Run the following commands from the repository root, in order:

```bash
mysql -u root -p < database/schema.sql
mysql -u root -p < database/sample-data.sql
mysql -u root -p < database/constraints-and-indexes.sql
```

Alternatively, open the three files in MySQL Workbench and execute them in the same order. The combined `database/setup.sql` script is also provided for the MySQL command-line client; its `SOURCE` paths are relative to the client's working directory.

## Project structure

```text
.
├── database/
│   ├── schema.sql
│   ├── sample-data.sql
│   ├── constraints-and-indexes.sql
│   ├── setup.sql
│   ├── queries/
│   └── procedures/
├── docs/
│   ├── index.html
│   └── assets/
└── README.md
```

## Query library

| File | Demonstrates |
|---|---|
| `database/queries/basic-queries.sql` | Product/category joins, filtering and sorting |
| `database/queries/order-and-shipping.sql` | Order history, shipment status and line totals |
| `database/queries/aggregation-and-reports.sql` | Counts, maximum values, revenue totals and customer activity |
| `database/procedures/category-procedures.sql` | Parameterised category insertion and input validation |
| `database/procedures/product-summary.sql` | Variables, conditional logic and result sets |

## Data and security notes

The records are demonstration data. The original exercise includes password-like hash values and test payment-card values; these are not production credentials or payment data. The refactored project does not create a database login or include a plaintext database password. Do not use these patterns for a production authentication or payment system. In a real application, use a dedicated least-privilege database account, securely managed credentials, a modern password-hashing algorithm, and a PCI-compliant payment provider rather than storing raw card numbers.

## Design notes and scope

The database focuses on relational modelling and SQL practice. It is not a complete e-commerce application: there is no application server, user interface connected to MySQL, authentication flow, payment integration or live inventory management. GitHub Pages hosts only the static portfolio website.

## Future improvements

- Add automated SQL integration tests and a repeatable CI validation workflow.
- Add views for common reporting tasks.
- Review the schema for stronger domain constraints and timestamp defaults.
- Replace the demonstration payment-card fields with tokenised payment-provider references in any production-oriented redesign.
- Build a separate API layer if live interactive database operations are required.

## Author

**Lebohang Makwala**  
[GitHub](https://github.com/Lee1572) · [LinkedIn](https://www.linkedin.com/in/lebohang-ramatlapaneng)

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE).
