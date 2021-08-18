CREATE SCHEMA `company` ;
Use company;
DROP PROCEDURE IF EXISTS PROC_DROP_FOREIGN_KEY;
    DELIMITER $$
    CREATE PROCEDURE PROC_DROP_FOREIGN_KEY(IN tableName VARCHAR(64), IN constraintName VARCHAR(64))
    BEGIN
        IF EXISTS(
            SELECT * FROM information_schema.table_constraints
            WHERE 
                table_schema    = DATABASE()     AND
                table_name      = tableName      AND
                constraint_name = constraintName AND
                constraint_type = 'FOREIGN KEY')
        THEN
            SET @query = CONCAT('ALTER TABLE ', tableName, ' DROP FOREIGN KEY ', constraintName, ';');
            PREPARE stmt FROM @query; 
            EXECUTE stmt; 
            DEALLOCATE PREPARE stmt; 
        END IF; 
    END$$
    DELIMITER ;

CALL company.PROC_DROP_FOREIGN_KEY('employee', 'employee_ibfk_1');
CALL company.PROC_DROP_FOREIGN_KEY('employee', 'employee_ibfk_2');
CALL company.PROC_DROP_FOREIGN_KEY('employee', 'employee_ibfk_3');

CALL company.PROC_DROP_FOREIGN_KEY('department', 'department_ibfk_1');
CALL company.PROC_DROP_FOREIGN_KEY('department', 'department_ibfk_2');
CALL company.PROC_DROP_FOREIGN_KEY('department', 'department_ibfk_3');

CALL company.PROC_DROP_FOREIGN_KEY('dept_locations', 'dept_locations_ibfk_1');
CALL company.PROC_DROP_FOREIGN_KEY('dept_locations', 'dept_locations_ibfk_2');
CALL company.PROC_DROP_FOREIGN_KEY('dept_locations', 'dept_locations_ibfk_3');

CALL company.PROC_DROP_FOREIGN_KEY('project', 'project_ibfk_1');
CALL company.PROC_DROP_FOREIGN_KEY('project', 'project_ibfk_2');
CALL company.PROC_DROP_FOREIGN_KEY('project', 'project_ibfk_3');

CALL company.PROC_DROP_FOREIGN_KEY('works_on', 'works_on_ibfk_1');
CALL company.PROC_DROP_FOREIGN_KEY('works_on', 'works_on_ibfk_2');
CALL company.PROC_DROP_FOREIGN_KEY('works_on', 'works_on_ibfk_3');

CALL company.PROC_DROP_FOREIGN_KEY('dependent', 'dependent_ibfk_1');
CALL company.PROC_DROP_FOREIGN_KEY('dependent', 'dependent_ibfk_2');
CALL company.PROC_DROP_FOREIGN_KEY('dependent', 'dependent_ibfk_3');

DROP table IF EXISTS company.employee;
DROP table IF EXISTS company.department;
DROP table IF EXISTS dept_locations;
DROP table IF EXISTS project;
DROP table IF EXISTS works_on;
DROP table IF EXISTS dependent;