The Pizza Farm Chaos Machine is a cloud-deployed, highly concurrent backend service designed to stress-test data integrity and failure handling.

This service simulates a chaotic restaurant environment. It continuously fires simultaneous, unpredictable customer orders at the system,
forcing the application to 


Language: Python (psycopg3)

Database: PostgreSQL (Relational modeling, ACID compliance)

Infrastructure: AWS RDS, Database Migrations (schema/seed as code)

Architecture: Event-driven concurrency, Connection Pooling
