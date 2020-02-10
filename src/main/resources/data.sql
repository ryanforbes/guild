
SET @today = NOW();
SET @message_time = NOW();

insert into message (sender_id, receiver_id, message, created_at, modified_at)
values
(1, 1, CONCAT('from 1 to 1 ', @message_time), @message_time, @message_time),
(2, 1, CONCAT('from 2 to 1 ', @message_time), @message_time, @message_time),
(3, 1, CONCAT('from 3 to 1 ', @message_time), @message_time, @message_time),
(1, 3, CONCAT('from 1 to 3 ', @message_time), @message_time, @message_time);

SET @message_time = DATE_SUB(@today, INTERVAL 29 DAY);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values
(1, 1, CONCAT('from 1 to 1 ', @message_time, ' (T-29 days)'), @message_time, @message_time),
(2, 1, CONCAT('from 2 to 1 ', @message_time, ' (T-29 days)'), @message_time, @message_time),
(3, 1, CONCAT('from 3 to 1 ', @message_time, ' (T-29 days)'), @message_time, @message_time),
(1, 3, CONCAT('from 1 to 3 ', @message_time, ' (T-29 days)'), @message_time, @message_time);

SET @message_time = DATE_SUB(@today, INTERVAL 30 DAY);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values
(1, 1, CONCAT('from 1 to 1 ', @message_time, ' (T-30 days)'), @message_time, @message_time),
(2, 1, CONCAT('from 2 to 1 ', @message_time, ' (T-30 days)'), @message_time, @message_time),
(3, 1, CONCAT('from 3 to 1 ', @message_time, ' (T-30 days)'), @message_time, @message_time),
(1, 3, CONCAT('from 1 to 3 ', @message_time, ' (T-30 days)'), @message_time, @message_time);

SET @message_time = DATE_SUB(@today, INTERVAL 31 DAY);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values
       (1, 1, CONCAT('from 1 to 1 ', @message_time, ' (T-31 days)'), @message_time, @message_time),
       (2, 1, CONCAT('from 2 to 1 ', @message_time, ' (T-31 days)'), @message_time, @message_time),
       (3, 1, CONCAT('from 3 to 1 ', @message_time, ' (T-31 days)'), @message_time, @message_time),
       (1, 3, CONCAT('from 1 to 3 ', @message_time, ' (T-31 days)'), @message_time, @message_time);


-- User 100 will have 120 messages in the last couple of days to test the 100 message limit
SET @two_days_ago = DATE_SUB(@today, INTERVAL 2 DAY);
SET @x=0;

SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);

SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
SET @x=@x+1;
SET @message_time = DATE_ADD(@two_days_ago, INTERVAL @x MINUTE);
insert into message (sender_id, receiver_id, message, created_at, modified_at)
values (100, 100, CONCAT('from 100 to 100 ', @message_time, ' (', @x, ')'), @message_time, @message_time);
