set transaction isolation level repeatable read 
begin tran
select * from tblEmployee
where EmployeeNumber=125
waitfor delay '00:00:10'
select * from tblEmployee
where EmployeeNumber=125
rollback
snns
