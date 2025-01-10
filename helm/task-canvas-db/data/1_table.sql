\ c task_canvas;
CREATE SCHEMA task_canvas;

CREATE TABLE task_canvas.user (
    id uuid primary key,
    email text not null unique,
    password_hash text not null
);

CREATE TABLE task_canvas.todo (
    id uuid primary key,
    content text not null,
    completed boolean not null,
    created_at timestamp CURRENT_TIMESTAMP not null
);

CREATE TABLE task_canvas.user_todo (
    user_id uuid references task_canvas.user(id),
    todo_id uuid references task_canvas.todo(id),
    primary key (user_id, todo_id)
);

CREATE TABLE task_canvas.tag (
    id uuid primary key,
    name text not null,
    is_deleted boolean not null default false
);

CREATE TABLE task_canvas.tag_history (
    id uuid primary key,
    tag_id uuid references task_canvas.tag(id),
    name text not null,
    created_at timestamp not null
);

CREATE TABLE task_canvas.todo_tag (
    todo_id uuid references task_canvas.todo(id),
    tag_id uuid references task_canvas.tag(id),
    primary key (todo_id, tag_id)
);
