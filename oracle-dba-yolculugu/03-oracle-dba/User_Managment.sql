-- dba_user query
desc dba_users;
--
select * from dba_users;
--
desc default_pwd$;

-- ne zaman oluştu userslar sorgusu
select  distinct u.username,u.account_status,
case when d.user_name is null then 'DBA Olusturdu'
else 'Kurulumda Oluştu'
end
from dba_users u, default_pwd$ d
where u.username= d.user_name(+);

-- Dba_Objects 
desc dba_objects;

select  * from dba_objects;

-- kullanıcıyı gösterir
show user; 

-- kullanıcı kilitleneme açma
select * from dba_users where username='HR';


Alter user HR Account lock;

Alter user HR Account unlock;

-- password değiştirmeyenlerin tespiti
select * from dba_users_with_defpwd;
alter user <user_name> identified by <new_password>;

-- lock and unlock scripti query

 select ' ALTER USER ' || username || ' ACCOUNT LOCK;' FROM dba_users 
 where username not ın ('SYS','SYSTEM');
 
 select ' ALTER USER ' || username || ' ACCOUNT UNLOCK;' FROM dba_users 
 where username not ın ('SYS','SYSTEM');
 
 ---
 desc dba_profiles;
select * from dba_profiles;

create user ulasti indentified by ulasti; 
profile developer_prof;

select username , profile from dba_users where username='HR';

--Create Profile

create PROFILE <user_profile> LIMIT
-- password securty parameters
FAILED_LOGIN_ATTEMPTS 3 -- şifre 3 kere yanlış girilirse lock edilsin.
PASSWORD_LIFE_TIME 90  -- 90  gün sonra şifre expire olsun ve değiştirmek zorunda kalsın.
PASSWORD_REUSE_TIME 180 -- 180 gün geçmeden eski şifre kullanılmasın 
PASSWORD_LOCK_TIME 1 -- şifre yanlış girilmesi nedeniyle  lock edildiyse 1 gün süreyle locklı kalsın
PASSWORD_GRACE_TIME 5 -- 90 gn dolmadan 5 gün öncesinden uyarmaya başla 
PASSWORD_VERIFY_FUNCTION  ora12c_verify_function -- password politikası

-- resuorce limit parameters
SESSIONS_PER_USER 2 -- kullaanıcı en fazla 2 adet session açabilsin
IDLE_TIME 5 -- 5 dakika boyunca işlem yapmazsa kill edilsin 
CONNECT_TIME 60 -- kullanıcı max 60 dk sistemde kalabilsin, sonra kill edilsin
;

create PROFILE <developer_profile> LIMIT
-- password securty parameters
FAILED_LOGIN_ATTEMPTS 5 -- şifre 5 kere yanlış girilirse lock edilsin.
PASSWORD_LIFE_TIME 180  -- 180  gün sonra şifre expire olsun ve değiştirmek zorunda kalsın.
PASSWORD_REUSE_TIME 360 -- 360 gün geçmeden eski şifre kullanılmasın 
PASSWORD_LOCK_TIME 2 -- şifre yanlış girilmesi nedeniyle  lock edildiyse 2 gün süreyle locklı kalsın
PASSWORD_GRACE_TIME 10 -- 180 gn dolmadan 10 gün öncesinden uyarmaya başla 
PASSWORD_VERIFY_FUNCTION  ora12c_verify_function -- password politikası

-- resuorce limit parameters
SESSIONS_PER_USER 5 -- kullaanıcı en fazla 5 adet session açabilsin
IDLE_TIME 30 -- 30 dakika boyunca işlem yapmazsa kill edilsin 
CONNECT_TIME unlimited;