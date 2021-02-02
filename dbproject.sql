/*db 생성*/

/*supply_ingredients 생성*/
create table supply_ingredients(
    idx number primary key,
    name varchar2(20) not null,
    amount number ,
    price number,
    due date default sysdate);

/*finance 생성*/    
create table finance(
    idx number primary key,
    total_money number not null,
    amount number,
    message varchar2(100),
    day date default sysdate);
    
    
/*restaurant_ingredients 생성*/   

create table restaurant_ingredients(
    idx number primary key, 
    name_idx number not null,
    amount number,
    price number,
    due date default sysdate,
     foreign key(name_idx) references supply_ingredients(idx)/*foods*/
    );
    
    /*foods생성*/    
create table foods(
    idx number primary key,
    foodname varchar2(20)not null,
    ingredient_idx number not null,
    consume number,
    amount number,
    price number,
    foreign key(ingredient_idx) references restaurant_ingredients(idx)/*food_ingredients*/
    );
    
/*foods consume 추가*/
   
alter table foods add consume number;

/*참조되어지는 테이블 삭제*/
DROP TABLE restaurant_ingredients CASCADE CONSTRAINTS;

/*행 삭제*/

delete from foods where idx = 4;
   
select*from foods;


select*from restaurant_ingredients;

/*데이터를 여러번 입력했을 때 idx가 중복으로 시퀀스 올라감 즉, 테이블마다 다른 시퀀스 생성해야 함.*/

/*orders 생성*/   

create table orders(
    num number primary key, 
    foodname_idx number not null,
    amount number,
    foreign key(foodname_idx) references foods(idx)/*foods*/
    );
    
    
/*foreign key ->primary key, unique여야만 한다. 내부적으로 검색 시 select가 두번 도는 것임*/
/*unique ->primary 외 중복x ex)주민번호*/

/*시퀀스*/

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
    

/*supply_ingredients 데이터 추가 완료*/

insert into supply_ingredients
values(No_seq.nextval,'김', 9999999, 100, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'단무지', 9999999, 50, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'쌀', 9999999, 200, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'햄', 9999999, 500, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'계란', 9999999, 200, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'면사리', 9999999, 200, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'어묵', 9999999, 250, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'대파', 9999999, 50, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'쑥갓', 9999999, 80, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'유부', 9999999, 100, sysdate);

insert into supply_ingredients
values(No_seq.nextval, '떡', 9999999, 300, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'치즈', 9999999, 400, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'돼지고기', 9999999, 800, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'밀가루', 9999999, 150, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'빵가루', 9999999, 150, sysdate);

insert into supply_ingredients
values(No_seq.nextval,'김치', 9999999, 70, sysdate);

/*restaurant_ingredients 데이터 추가*/

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


/*테이블 검색*/

select*
from
supply_ingredients;

/*현재 시퀀스 값 검색*/
select No_seq.currval from dual;


/*foods 데이터 추가 완료*/

insert into foods
values(fo_seq.nextval,'김밥', 1, 1, 0 ,3000);

insert into foods
values(fo_seq.nextval,'김밥', 2, 1, 0 ,3000);

insert into foods
values(fo_seq.nextval,'김밥', 3, 3, 0 ,3000);

insert into foods
values(fo_seq.nextval,'김밥', 4, 1, 0 ,3000);

insert into foods
values(fo_seq.nextval,'김밥', 5, 1, 0 ,3000);


insert into foods
values(fo_seq.nextval,'우동', 6, 1, 0 ,3500);

insert into foods
values(fo_seq.nextval,'우동', 7, 2, 0 ,3500);

insert into foods
values(fo_seq.nextval,'우동', 8, 2, 0 ,3500);

insert into foods
values(fo_seq.nextval,'우동', 9, 1, 0 ,3500);

insert into foods
values(fo_seq.nextval,'우동', 10, 2, 0 ,3500);



insert into foods
values(fo_seq.nextval,'라볶이', 6, 2, 0 ,5500);

insert into foods
values(fo_seq.nextval,'라볶이', 7, 5, 0 ,5500);

insert into foods
values(fo_seq.nextval,'라볶이', 8, 3, 0 ,5500);

insert into foods
values(fo_seq.nextval,'라볶이', 11, 3, 0 ,5500);

insert into foods
values(fo_seq.nextval,'라볶이', 12, 2, 0 ,5500);


insert into foods
values(fo_seq.nextval,'돈까스', 13, 2 , 0 ,8000);

insert into foods
values(fo_seq.nextval,'돈까스', 5, 1, 0 ,8000);

insert into foods
values(fo_seq.nextval,'돈까스', 14, 3, 0 ,8000);

insert into foods
values(fo_seq.nextval,'돈까스', 15, 3, 0 ,8000);



insert into foods
values(fo_seq.nextval,'김치볶음밥', 16, 4, 0,7000);

insert into foods
values(fo_seq.nextval,'김치볶음밥', 3, 5, 0,7000);

insert into foods
values(fo_seq.nextval,'김치볶음밥', 5, 2, 0 ,7000);

insert into foods
values(fo_seq.nextval,'김치볶음밥', 4, 2, 0 ,7000);

insert into foods
values(fo_seq.nextval,'김치볶음밥', 8, 1, 0 ,7000);


commit;

