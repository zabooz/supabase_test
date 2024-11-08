alter table "public"."passwordplayground" drop constraint "passwordplayground_pkey";

drop index if exists "public"."passwordplayground_pkey";

-- create table "public"."employees" (
--     "id" bigint generated always as identity not null,
--     "name" text,
--     "email" text,
--     "created_at" timestamp with time zone default now()
-- );


CREATE UNIQUE INDEX employees_pkey ON public.employees USING btree (id);

CREATE UNIQUE INDEX passwordplayground_pkey ON public.passwordplayground USING btree (id);

alter table "public"."employees" add constraint "employees_pkey" PRIMARY KEY using index "employees_pkey";

alter table "public"."passwordplayground" add constraint "passwordplayground_pkey" PRIMARY KEY using index "passwordplayground_pkey";

grant delete on table "public"."employees" to "anon";

grant insert on table "public"."employees" to "anon";

grant references on table "public"."employees" to "anon";

grant select on table "public"."employees" to "anon";

grant trigger on table "public"."employees" to "anon";

grant truncate on table "public"."employees" to "anon";

grant update on table "public"."employees" to "anon";

grant delete on table "public"."employees" to "authenticated";

grant insert on table "public"."employees" to "authenticated";

grant references on table "public"."employees" to "authenticated";

grant select on table "public"."employees" to "authenticated";

grant trigger on table "public"."employees" to "authenticated";

grant truncate on table "public"."employees" to "authenticated";

grant update on table "public"."employees" to "authenticated";

grant delete on table "public"."employees" to "service_role";

grant insert on table "public"."employees" to "service_role";

grant references on table "public"."employees" to "service_role";

grant select on table "public"."employees" to "service_role";

grant trigger on table "public"."employees" to "service_role";

grant truncate on table "public"."employees" to "service_role";

grant update on table "public"."employees" to "service_role";


