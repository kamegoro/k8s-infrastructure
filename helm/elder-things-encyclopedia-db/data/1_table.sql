\ c elder_things_encyclopedia;
CREATE SCHEMA elder_things_encyclopedia;

CREATE TABLE elder_things_encyclopedia.character (
    id uuid primary key,
    title text not null,
    profile text not null
);