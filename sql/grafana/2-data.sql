\connect grafana;

INSERT INTO "data_source" ("id", "org_id", "version", "type", "name", "access", "url", "password", "user", "database", "basic_auth", "basic_auth_user", "basic_auth_password", "is_default", "json_data", "created", "updated", "with_credentials", "secure_json_data") VALUES
  (1,	1,	1,	'postgres',	'omeglast',	'proxy',	'storage',	'admin',	'admin',	'omeglast',	'0',	'',	'',	'1',	'{"sslmode":"disable"}',	'2017-11-13 19:09:27',	'2017-11-13 19:09:30',	'0',	'{"password":"eEczQ0xIbleNgCE2g/CkMOVLb/Gh8is7Bh51/q4="}');

