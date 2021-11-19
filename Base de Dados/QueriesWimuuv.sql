--Custom Queries consoante os guioes de teste

--caso 1- ir a uma palestra realizada no IADE
select event_name, event_date, event_starttime, event_endtime, spot_name, org_name, type_event
from event, spot, org, type
where spot_id = 2 and type_id = 1

--caso 2- visitar um evento de uma org especifica
select event_name, event_date, event_starttime, event_duration, spot_name, org_name
from event, spot, org
where event_org_id = 2

--caso 3- escolher um evento de um genero especifico
select event_name, event_date, event_starttime, event_duration, event_capacity, spot_name, org_name, type_event
from event, spot, org, type
where type_id = 2

-- queries não utilizadas

--escolher eventos de uma determinada org
select event_name, spot_name, org_name
from event, spot, org
where event_org_id = 1

--ver as rates todas de um evento ordem descendente
select stu_rate_ev, org_name, event_name, spot_name, stu_id
from student_rate, org, event, spot, student
order by stu_rate_ev DESC

--ver a capacidade de todos os eventos
select event_name, org_name, event_capacity
from event, org

--ver os eventos e um determinado estado de um evento
select event_name, org_name, spot_name, state_event
from event, org, spot, state
where state_id = 1

--ver os eventos de um determinado spot
select event_name, org_name, spot_name
from event, org, spot
where spot_id = 1

-- ver os horarios dos eventos
select org_name, spot_name, event_date, event_starttime, event_endtime, event_duration
from org, spot, event





