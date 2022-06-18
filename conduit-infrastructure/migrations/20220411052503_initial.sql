create table if not exists users
(
    id         bigint generated by default as identity,
    username   varchar     not null default '',
    email      varchar     not null default '',
    password   varchar     not null default '',
    bio        varchar     not null default '',
    image      varchar     not null default '',
    created_at timestamptz not null default current_timestamp,
    updated_at timestamptz not null default current_timestamp
);


alter table users
    add constraint users_id_pk primary key (id);

create index if not exists users_email_idx on users (email);