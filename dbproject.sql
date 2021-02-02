/*db ����*/

/*supply_ingredients ����*/
create table supply_ingredients(
    idx number primary key,
    name varchar2(20) not null,
    amount number ,
    price number,
    due date default sysdate);

/*finance ����*/    
create table finance(
    idx number primary key,
    total_money number not null,
    amount number,
    message varchar2(100),
    day date default sysdate);
    
    
/*restaurant_ingredients ����*/   

create table restaurant_ingredients(
    idx number primary key, 
    name_idx number not null,
    amount number,
    price number,
    due date default sysdate,
     foreign key(name_idx) references supply_ingredients(idx)/*foods*/
    );
    
    /*foods����*/    
create table foods(
    idx number primary key,
    foodname varchar2(20)not null,
    ingredient_idx number not null,
    consume number,
    amount number,
    price number,
    foreign key(ingredient_idx) references restaurant_ingredients(idx)/*food_ingredients*/
    );
    
/*foods consume �߰�*/
   
alter table foods add consume number;

/*�����Ǿ����� ���̺� ����*/
DROP TABLE restaurant_ingredients CASCADE CONSTRAINTS;

/*�� ����*/

delete from foods where idx = 4;
   
select*from foods;


select*from restaurant_ingredients;

/*�����͸� ������ �Է����� �� idx�� �ߺ����� ������ �ö� ��, ���̺��� �ٸ� ������ �����ؾ� ��.*/

/*orders ����*/   

create table orders(
    num number primary key, 
    foodname_idx number not null,
    amount number,
    foreign key(foodname_idx) references foods(idx)/*foods*/
    );
    
    
/*foreign key ->primary key, unique���߸� �Ѵ�. ���������� �˻� �� select�� �ι� ���� ����*/
/*unique ->primary �� �ߺ�x ex)�ֹι�ȣ*/

/*������*/

create sequence No_seq
    start with 1
    increment by 1
    maxvalue 10000
    nocycle
    nocache;
    
/*foods sequence*/ 

create sequence fo_seq
    start with 1
    increment by 1
    maxvalue 10000
    nocycle
    nocache;
    

/*supply_ingredients ������ �߰� �Ϸ�*/

insert into supply_ingredients
values(No_seq.nextval,'��', 9999999, 100, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'�ܹ���', 9999999, 50, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'��', 9999999, 200, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'��', 9999999, 500, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'���', 9999999, 200, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'��縮', 9999999, 200, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'�', 9999999, 250, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'����', 9999999, 50, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'����', 9999999, 80, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'����', 9999999, 100, sysdate);

insert into supply_ingredients
values(No_seq.nextval, '��', 9999999, 300, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'ġ��', 9999999, 400, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'�������', 9999999, 800, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'�а���', 9999999, 150, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'������', 9999999, 150, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'��ġ', 9999999, 70, sysdate);

/*restaurant_ingredients ������ �߰�*/

insert into restaurant_ingredients
values(No_seq.nextval,1 , 9, 100, sysdate);

insert into restaurant_ingredients
values(No_seq.nextval,2 , 9, 50, sysdate);

insert into restaurant_ingredients
values(No_seq.nextval,3 , 9, 200, sysdate);

insert into restaurant_ingredients
values(No_seq.nextval,4, 9, 500, sysdate);

insert into restaurant_ingredients
values(No_seq.nextval,5, 9, 200, sysdate);

insert into restaurant_ingredients
values(No_seq.nextval,6, 9, 200, sysdate);

insert into restaurant_ingredients
values(No_seq.nextval,7, 9, 250, sysdate);

insert into restaurant_ingredients
values(No_seq.nextval,8, 9, 50, sysdate);

insert into restaurant_ingredients
values(No_seq.nextval,9, 9, 80, sysdate);

insert into restaurant_ingredients
values(No_seq.nextval,10, 9, 100, sysdate);

insert into restaurant_ingredients
values(No_seq.nextval,11, 9, 300, sysdate);

insert into restaurant_ingredients
values(No_seq.nextval,12, 9, 400, sysdate);

insert into restaurant_ingredients
values(No_seq.nextval,13, 9, 800, sysdate);

insert into restaurant_ingredients
values(No_seq.nextval,14, 9, 150, sysdate);

insert into restaurant_ingredients
values(No_seq.nextval,15, 9, 150, sysdate);

insert into restaurant_ingredients
values(No_seq.nextval,16, 9, 70, sysdate);


/*���̺� �˻�*/

select*
from
supply_ingredients;

/*���� ������ �� �˻�*/
select No_seq.currval from dual;


/*foods ������ �߰� �Ϸ�*/

insert into foods
values(fo_seq.nextval,'���', 1, 1, 0 ,3000);

insert into foods
values(fo_seq.nextval,'���', 2, 1, 0 ,3000);

insert into foods
values(fo_seq.nextval,'���', 3, 3, 0 ,3000);

insert into foods
values(fo_seq.nextval,'���', 4, 1, 0 ,3000);

insert into foods
values(fo_seq.nextval,'���', 5, 1, 0 ,3000);


insert into foods
values(fo_seq.nextval,'�쵿', 6, 1, 0 ,3500);

insert into foods
values(fo_seq.nextval,'�쵿', 7, 2, 0 ,3500);

insert into foods
values(fo_seq.nextval,'�쵿', 8, 2, 0 ,3500);

insert into foods
values(fo_seq.nextval,'�쵿', 9, 1, 0 ,3500);

insert into foods
values(fo_seq.nextval,'�쵿', 10, 2, 0 ,3500);



insert into foods
values(fo_seq.nextval,'����', 6, 2, 0 ,5500);

insert into foods
values(fo_seq.nextval,'����', 7, 5, 0 ,5500);

insert into foods
values(fo_seq.nextval,'����', 8, 3, 0 ,5500);

insert into foods
values(fo_seq.nextval,'����', 11, 3, 0 ,5500);

insert into foods
values(fo_seq.nextval,'����', 12, 2, 0 ,5500);


insert into foods
values(fo_seq.nextval,'���', 13, 2 , 0 ,8000);

insert into foods
values(fo_seq.nextval,'���', 5, 1, 0 ,8000);

insert into foods
values(fo_seq.nextval,'���', 14, 3, 0 ,8000);

insert into foods
values(fo_seq.nextval,'���', 15, 3, 0 ,8000);



insert into foods
values(fo_seq.nextval,'��ġ������', 16, 4, 0,7000);

insert into foods
values(fo_seq.nextval,'��ġ������', 3, 5, 0,7000);

insert into foods
values(fo_seq.nextval,'��ġ������', 5, 2, 0 ,7000);

insert into foods
values(fo_seq.nextval,'��ġ������', 4, 2, 0 ,7000);

insert into foods
values(fo_seq.nextval,'��ġ������', 8, 1, 0 ,7000);


commit;

