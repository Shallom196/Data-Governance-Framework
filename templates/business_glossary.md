# ImagineeringCo Business Glossary

## Document Information
- Version: 1.0
- Last Updated: [2025-01-12]
- Owner: Data Governance Team

## Purpose
This business glossary provides standardized definitions for business terms used across ImagineeringCo's data governance program.

## Customer Data Terms

### Customer
- Definition: An individual or organization that has made at least one purchase from ImagineeringCo
- Business Owner: Customer Service Department
- Related Terms: Prospect, Lead
- Data Classification: Internal

### Active Customer
- Definition: Customer who has made a purchase within the last 12 months
- Business Owner: Sales Department
- Related Terms: Customer, Inactive Customer
- Data Classification: Internal

### Customer ID
- Definition: Unique identifier assigned to each customer in the format "CUST-XXXXX"
- Business Owner: IT Department
- Technical Implementation: Primary key in customer database
- Data Classification: Internal

## Product Data Terms

### SKU (Stock Keeping Unit)
- Definition: Unique identifier for each distinct product and product variant
- Business Owner: Inventory Management
- Format: ABC-12345
- Data Classification: Internal

### Product Category
- Definition: High-level grouping of products (e.g., Electronics, Apparel)
- Business Owner: Merchandising
- Related Terms: Product Subcategory
- Data Classification: Public

### Product Status
- Definition: Current state of a product in its lifecycle
- Valid Values: Active, Discontinued, Out of Stock, Coming Soon
- Business Owner: Product Management
- Data Classification: Internal

## Transaction Terms

### Order
- Definition: A customer's request to purchase one or more products
- Business Owner: Sales Department
- Related Terms: Order ID, Order Status
- Data Classification: Internal

### Order Status
- Definition: Current state of customer order
- Valid Values: Placed, Confirmed, Shipped, Delivered, Cancelled
- Business Owner: Order Management
- Data Classification: Internal

## Technical Terms

### Data Quality Score
- Definition: Metric measuring data accuracy, completeness, and consistency
- Formula: (Clean Records / Total Records) * 100
- Owner: Data Governance Team
- Data Classification: Internal

### Data Steward
- Definition: Individual responsible for data quality in their business domain
- Related Terms: Data Owner, Data Custodian
- Owner: Data Governance Office
- Data Classification: Internal

## Guidelines for Adding New Terms

1. Required Fields:
   - Definition
   - Business Owner
   - Data Classification
   - Related Terms (if applicable)

2. Optional Fields:
   - Technical Implementation
   - Format
   - Valid Values
   - Formula

3. Naming Conventions:
   - Use Title Case for term names
   - Be consistent with abbreviations
   - Include common acronyms

## Term Template
```markdown
### [Term Name]
- Definition: [Clear, concise definition]
- Business Owner: [Department/Role]
- Related Terms: [Related business terms]
- Data Classification: [Public/Internal/Confidential/Restricted]
- [Additional fields as needed]
```

## Version History
| Version | Date | Author | Changes |
|---------|------|--------|----------|
| 1.0 | [2024-01-12] | [Shallom Soyombo] | Initial version |