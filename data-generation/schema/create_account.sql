CREATE TABLE IF NOT EXISTS  x.account
(
    id integer NOT NULL,
    CONSTRAINT account_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE x.account
    OWNER to postgres;

CREATE INDEX  IF NOT EXISTS  account_idx
    ON x.account USING btree
    (id)
    TABLESPACE pg_default;
