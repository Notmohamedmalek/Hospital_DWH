# Hospital_DWH

# Dimension and Fact tables

1. **DimEpisodes Table**:
   - This table stores information related to episodes in the hospital.
   - `Episode_Key_SK` and `Episode_Key_BK` are keys for uniquely identifying episodes.
   - It tracks the start and end dates of episodes, the type of episode, the associated bed, and some validity date information.
   - The primary key for this table is `Episode_Key_SK`.

2. **DimDate Table**:
   - This table stores date-related information.
   - It contains various attributes related to dates, such as day of the week, day of the year, week of the year, month, quarter, year, and more.
   - The primary key for this table is `DateSK`.

3. **DimPatients Table**:
   - This table contains information about patients.
   - It includes patient IDs, gender, nationality, names, contact information, and more.
   - The primary key for this table is `patient_id_SK`.

4. **DimServices Table**:
   - This table is for storing information related to hospital services.
   - It includes service categories and names.
   - The primary key for this table is `Service_SK`.

5. **DimTime Table**:
   - This table deals with time-related information.
   - It includes attributes like hours, minutes, seconds, and AM/PM designations.
   - The primary key for this table is `TimeSK`.

6. **FactBillings Table**:
   - This table is a fact table that stores billing information.
   - It references keys from the previously defined dimension tables to establish relationships.
   - It includes information such as the service, patient, episode, date, and various billing amounts.

Additionally, foreign key constraints have been added to the `FactBillings` table to maintain data integrity. These constraints ensure that the keys in the fact table correspond to valid keys in the dimension tables.

In summary, this set of tables is a fundamental structure for a data warehouse in a hospital setting. It allows for the storage and analysis of data related to patient episodes, services, billing, and various date and time attributes. The data in the fact table, `FactBillings`, can be analyzed alongside the dimensions to gain insights into the hospital's operations and finances.

# Data Modeling and Design:

Create a logical and physical data model for the data warehouse. This includes designing dimension and fact tables.
Implement a star schema design, where fact tables (e.g., "FactBillings") are connected to dimension tables (e.g., "DimPatients," "DimServices," "DimDate," "DimTime," and "DimEpisodes").
![Screenshot 2023-10-12 213636](https://github.com/Notmohamedmalek/Hospital_DWH/assets/57952560/194d4ee5-b763-47b0-aa2c-2354bc7d8c4b)

# ETL (Extract, Transform, Load) Processes:

Develop ETL processes to extract data from source systems, transform it to fit the data model, and load it into the data warehouse.
Ensure data quality by performing data cleansing, validation, and enrichment during the transformation phase.
![Screenshot 2023-10-12 213449](https://github.com/Notmohamedmalek/Hospital_DWH/assets/57952560/c228bd33-bf94-4127-ab02-8a2c2fd1a33e)
![Screenshot 2023-10-12 213508](https://github.com/Notmohamedmalek/Hospital_DWH/assets/57952560/f0a8c309-4f34-4bfb-9fba-df204108ba7c)
![Screenshot 2023-10-12 213521](https://github.com/Notmohamedmalek/Hospital_DWH/assets/57952560/da4b8f89-9d89-42bd-af8c-63c70e9b5ade)
![Screenshot 2023-10-12 213536](https://github.com/Notmohamedmalek/Hospital_DWH/assets/57952560/9b495a4e-8b76-4547-b3d5-44bcafc9f0a9)
![Screenshot 2023-10-12 213551](https://github.com/Notmohamedmalek/Hospital_DWH/assets/57952560/d32a6797-8af8-4f6b-a8ff-d91e8f85a629)
![Screenshot 2023-10-12 213609](https://github.com/Notmohamedmalek/Hospital_DWH/assets/57952560/ebef6af2-ad2f-4433-b636-f8b0723409b7)



