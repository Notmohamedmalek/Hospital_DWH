# Hospital_DWH

# 1 Information about the Dimension and Fact tables
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
