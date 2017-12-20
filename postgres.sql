DROP TABLE IF EXISTS public.all_data_types;
CREATE TABLE public.all_data_types (
  bigintnull bigint NULL,
  bigint bigint NOT NULL,
  bigserialnull bigserial,
  bigserial bigserial NOT NULL,
  integernull integer NULL,
  integer integer NOT NULL,
  intnull int NULL,
  int int NOT NULL,
  int4null int4 NULL,
  int4 int4 NOT NULL,
  smallintnull smallint NULL,
  smallint smallint NOT NULL,
  int2null int2 NULL,
  int2 int2 NOT NULL,
  smallserial smallserial NOT NULL,
  serial2 serial2 NOT NULL,
  serial serial NOT NULL,
  serial4 serial4 NOT NULL,
  charnull char NULL,
  char char NOT NULL,
  characternull character NULL,
  character character NOT NULL,
  charactervaryingnull character varying NULL,
  charactervarying character varying NOT NULL,
  varcharnull varchar NULL,
  varchar varchar NOT NULL,
  cidrnull cidr NULL,
  cidr cidr NOT NULL,
  inetnull inet NULL,
  inet inet NOT NULL,
  jsonnull json NULL,
  json json NOT NULL,
  macaddrnull macaddr NULL,
  macaddr macaddr NOT NULL,
  textnull text NULL,
  text text NOT NULL,
  xmlnull xml NULL,
  xml xml NOT NULL,
  datenull date NULL,
  date date NOT NULL,
  timenull time NULL,
  time time NOT NULL,
  timewithouttimezonenull time without time zone NULL,
  timewithouttimezone time without time zone NOT NULL,
  timewithtimezonenull time with time zone NULL,
  timewithtimezone time with time zone NOT NULL,
  timetznull timetz NULL,
  timetz timetz NOT NULL,
  timestampnull timestamp NULL,
  timestamp timestamp NOT NULL,
  timestampwithouttimezonenull timestamp without time zone NULL,
  timestampwithouttimezone timestamp without time zone NOT NULL,
  timestampwithtimezonenull timestamp with time zone NULL,
  timestampwithtimezone timestamp with time zone NOT NULL,
  timestamptznull timestamptz NULL,
  timestamptz timestamptz NOT NULL,
  intervalnull interval NULL,
  interval interval NOT NULL,
  doubleprecisionnull double precision NULL,
  doubleprecision double precision NOT NULL,
  float8null float8 NULL,
  float8 float8 NOT NULL,
  moneynull money NULL,
  money money NOT NULL,
  numericnull numeric NULL,
  numeric numeric NOT NULL,
  decimalnull decimal NULL,
  decimal decimal NOT NULL,
  realnull real NULL,
  real real NOT NULL,
  bitnull bit NULL,
  bit bit NOT NULL,
  bitvaryingnull bit varying NULL,
  bitvarying bit varying NOT NULL,
  byteanull bytea NULL,
  bytea bytea NOT NULL,
  jsonbnull jsonb NULL,
  jsonb jsonb NOT NULL,
  booleannull boolean NULL,
  boolean boolean NOT NULL
);
