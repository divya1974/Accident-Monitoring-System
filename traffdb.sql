PGDMP     8        	            u            traffic    9.6.1    9.6.1 ?   
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       1262    69866    traffic    DATABASE     ?   CREATE DATABASE traffic WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United Kingdom.1252' LC_CTYPE = 'English_United Kingdom.1252';
    DROP DATABASE traffic;
             root    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    5                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    2                        3079    69867 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                  false                       0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                       false    1                        3079    69876    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                  false    5                       0    0    EXTENSION postgis    COMMENT     g   COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';
                       false    3            ?            1259    71349 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         root    false    5            ?            1259    71352    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       root    false    202    5                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       root    false    203            ?            1259    71354    auth_group_permissions    TABLE     ?   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         root    false    5            ?            1259    71357    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       root    false    204    5                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       root    false    205            ?            1259    71359    auth_permission    TABLE     ?   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         root    false    5            ?            1259    71362    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       root    false    206    5                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       root    false    207            ?            1259    71364 	   auth_user    TABLE     ?  CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         root    false    5            ?            1259    71370    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         root    false    5            ?            1259    71373    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       root    false    5    209                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       root    false    210            ?            1259    71375    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       root    false    5    208                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       root    false    211            ?            1259    71377    auth_user_user_permissions    TABLE     ?   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         root    false    5            ?            1259    71380 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       root    false    5    212                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       root    false    213            ?            1259    71382    django_admin_log    TABLE     ?  CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         root    false    5            ?            1259    71389    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       root    false    5    214                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       root    false    215            ?            1259    71391    django_content_type    TABLE     ?   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         root    false    5            ?            1259    71394    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       root    false    5    216                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       root    false    217            ?            1259    71396    django_migrations    TABLE     ?   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         root    false    5            ?            1259    71402    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       root    false    5    218                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       root    false    219            ?            1259    71404    django_session    TABLE     ?   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         root    false    5            ?            1259    71410    fir_accid_type    TABLE     0  CREATE TABLE fir_accid_type (
    "SNO" integer NOT NULL,
    "TYPE" character varying(200) NOT NULL,
    "CATEGORY" character varying(100) NOT NULL,
    "CODE" character varying(20) NOT NULL,
    "VICTIM" character varying(50) NOT NULL,
    CONSTRAINT "fir_accid_type_SNO_check" CHECK (("SNO" >= 0))
);
 "   DROP TABLE public.fir_accid_type;
       public         root    false    5            ?            1259    71414    fir_area_type    TABLE     ?   CREATE TABLE fir_area_type (
    "Atype_Code" character varying(20) NOT NULL,
    "Area_Type" character varying(100) NOT NULL
);
 !   DROP TABLE public.fir_area_type;
       public         root    false    5            ?            1259    71417    fir_area_type2    TABLE     ?   CREATE TABLE fir_area_type2 (
    "SAtype_Code" character varying(20) NOT NULL,
    "SArea_Type" character varying(100) NOT NULL
);
 "   DROP TABLE public.fir_area_type2;
       public         root    false    5            ?            1259    71420    fir_area_type2_oth    TABLE     ?   CREATE TABLE fir_area_type2_oth (
    "SOAtype_Code" character varying(20) NOT NULL,
    "SOArea_Type" character varying(100) NOT NULL
);
 &   DROP TABLE public.fir_area_type2_oth;
       public         root    false    5            ?            1259    71423 
   fir_causes    TABLE     p  CREATE TABLE fir_causes (
    id integer NOT NULL,
    "CAUSE" character varying(15) NOT NULL,
    "OTHER_DRIVER_FAULT" character varying(50) NOT NULL,
    "DRUNK_FAULT" character varying(25) NOT NULL,
    "OVER_SPEED_FAULT" character varying(15) NOT NULL,
    "OTHER_VEC_MEH_FAULT" character varying(50) NOT NULL,
    "OTHER_ROAD_ENV_FAULT" character varying(50) NOT NULL,
    "OTHER_ROAD_ENGG_FAULT" character varying(50) NOT NULL,
    "OTHER_VICTIM_FAULT" character varying(50) NOT NULL,
    "OTHER_WEATHER_COND_FAULT" character varying(50) NOT NULL,
    "OTHER_CAUSE" character varying(1000) NOT NULL,
    "REMARKS" character varying(200) NOT NULL,
    "OTHER_REMARK" character varying(50) NOT NULL,
    "DRIVER_FAULT_id" character varying(20),
    "REMEDIES_id" character varying(20) NOT NULL,
    "ROAD_ENGG_FAULT_id" character varying(20),
    "ROAD_ENV_FAULT_id" character varying(20),
    "VEH_MECH_FAULT_id" character varying(20),
    "VICTIM_FAULT_id" character varying(20),
    "WEATHER_COND_id" character varying(20),
    "ACCID_ID_id" character varying(15) NOT NULL,
    "OTHER_REMEDIES" character varying(50) NOT NULL
);
    DROP TABLE public.fir_causes;
       public         root    false    5            ?            1259    71429    fir_causes_id_seq    SEQUENCE     s   CREATE SEQUENCE fir_causes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.fir_causes_id_seq;
       public       root    false    5    225                       0    0    fir_causes_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE fir_causes_id_seq OWNED BY fir_causes.id;
            public       root    false    226            ?            1259    71431    fir_circles    TABLE     +  CREATE TABLE fir_circles (
    "DISTNAM" character varying(50) NOT NULL,
    "DIST" character varying(4) NOT NULL,
    "CIRCLE" character varying(4) NOT NULL,
    "CIRCLENAM" character varying(50) NOT NULL,
    "RANGE" character varying(4) NOT NULL,
    "RANGENAM" character varying(50) NOT NULL
);
    DROP TABLE public.fir_circles;
       public         root    false    5            ?            1259    71434    fir_collision    TABLE     ?   CREATE TABLE fir_collision (
    id integer NOT NULL,
    "VIC_TYPE" character varying(15) NOT NULL,
    "COL_TYPE_id" integer NOT NULL,
    "ACCID_ID_id" character varying(15) NOT NULL
);
 !   DROP TABLE public.fir_collision;
       public         root    false    5            ?            1259    71437    fir_collision_id_seq    SEQUENCE     v   CREATE SEQUENCE fir_collision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.fir_collision_id_seq;
       public       root    false    5    228                       0    0    fir_collision_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE fir_collision_id_seq OWNED BY fir_collision.id;
            public       root    false    229            ?            1259    71439    fir_details    TABLE     ?	  CREATE TABLE fir_details (
    "ACC_ID" character varying(15) NOT NULL,
    "RNG" character varying(5) NOT NULL,
    "CIRCLE_id" character varying(4) NOT NULL,
    "DIST" character varying(5) NOT NULL,
    "PS_id" character varying(50) NOT NULL,
    "FIRNO" integer NOT NULL,
    "OF_SECTION_id" integer NOT NULL,
    "TIME_OCC" character varying(4) NOT NULL,
    "DATE_OCC" date NOT NULL,
    "PLACE_OCC" character varying(140) NOT NULL,
    "ROAD_id" character varying(50) NOT NULL,
    "ROADNAME" character varying(150) NOT NULL,
    "AREA_TYPE2_id" integer NOT NULL,
    "ACC_PHOTO" character varying(100),
    "FIR_PHOTO" character varying(100),
    "AREA_TYPE_id" character varying(20) NOT NULL,
    "ROAD_CHARACTER_id" character varying(20) NOT NULL,
    "ROAD_CONDITION_id" character varying(20) NOT NULL,
    "ROAD_LEVEL" character varying(30) NOT NULL,
    "SEPERATION_id" character varying(20) NOT NULL,
    "SURFACE_CONDITION_id" character varying(20) NOT NULL,
    "SURFACE_TYPE_id" character varying(20) NOT NULL,
    "GROUND_LEVEL" character varying(30) NOT NULL,
    "JUNCTION_CONTROL" character varying(30) NOT NULL,
    "MVA_NAME_id" character varying(20),
    "ROAD_TYPE_id" character varying(20) NOT NULL,
    "ROAD_TYPE1" character varying(30) NOT NULL,
    "ACC_SKETCH_PHOTO" character varying(100),
    "AREA" character varying(30) NOT NULL,
    "AREA_TYPE_OTHER" character varying(50),
    "FIR_DATE" date NOT NULL,
    "MINORROADNAME" character varying(150) NOT NULL,
    "ROAD_CHARACTER_REMARKS" character varying(50) NOT NULL,
    "ROAD_CONDITION_REMARKS" character varying(50) NOT NULL,
    "SURFACE_CONDITION_REMARKS" character varying(50) NOT NULL,
    "TIME_KNOWN" character varying(30) NOT NULL,
    "FLYOVER" character varying(30) NOT NULL,
    "UNDERPASS" character varying(30) NOT NULL,
    map_loc geometry(Point,4326) NOT NULL,
    "APZ" character varying(50) NOT NULL,
    "APZ_TYPE" character varying(50) NOT NULL,
    "ILLUMINATION" character varying(50) NOT NULL,
    "ROAD_MARKING" character varying(50) NOT NULL,
    "ROAD_SIGN" character varying(50) NOT NULL,
    "YES_ILLUMINATION" character varying(50) NOT NULL,
    "MOB_NUM" character varying(11) NOT NULL,
    "NAME_IO" character varying(140) NOT NULL,
    "PIS_NUM" character varying(140) NOT NULL,
    "ACC_PHOTO1" character varying(100),
    "ACC_PHOTO2" character varying(100),
    "ACC_PHOTO3" character varying(100),
    CONSTRAINT "fir_details_FIRNO_fb0aca30_check" CHECK (("FIRNO" >= 0))
);
    DROP TABLE public.fir_details;
       public         root    false    3    3    5    3    5    3    5    3    5    3    5    3    5    3    5    5    5            ?            1259    71446    fir_driver_fault    TABLE     ?   CREATE TABLE fir_driver_fault (
    "DF_Code" character varying(20) NOT NULL,
    "DF_Details" character varying(100) NOT NULL
);
 $   DROP TABLE public.fir_driver_fault;
       public         root    false    5            ?            1259    71449    fir_edu_qual    TABLE        CREATE TABLE fir_edu_qual (
    "EDQF_Code" character varying(20) NOT NULL,
    "EDQF_Name" character varying(100) NOT NULL
);
     DROP TABLE public.fir_edu_qual;
       public         root    false    5            ?            1259    71452    fir_injured    TABLE     ?  CREATE TABLE fir_injured (
    id integer NOT NULL,
    "PS" character varying(5) NOT NULL,
    "FIRNO" integer NOT NULL,
    "YEAR" integer NOT NULL,
    "INJSEX" character varying(15) NOT NULL,
    "INJAGE" character varying(15) NOT NULL,
    "INJTYPE" character varying(5) NOT NULL,
    "ACCID_ID_id" character varying(15) NOT NULL,
    CONSTRAINT "fir_injured_YEAR_check" CHECK (("YEAR" >= 0))
);
    DROP TABLE public.fir_injured;
       public         root    false    5            ?            1259    71456    fir_injured_id_seq    SEQUENCE     t   CREATE SEQUENCE fir_injured_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.fir_injured_id_seq;
       public       root    false    233    5                       0    0    fir_injured_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE fir_injured_id_seq OWNED BY fir_injured.id;
            public       root    false    234            ?            1259    71458 
   fir_killed    TABLE     ?  CREATE TABLE fir_killed (
    id integer NOT NULL,
    "PS" character varying(5) NOT NULL,
    "FIRNO" integer NOT NULL,
    "YEAR" integer NOT NULL,
    "SEX" character varying(15) NOT NULL,
    "AGE" character varying(15) NOT NULL,
    "TYPE" character varying(20) NOT NULL,
    "ACCID_ID_id" character varying(15) NOT NULL,
    CONSTRAINT "fir_killed_YEAR_check" CHECK (("YEAR" >= 0))
);
    DROP TABLE public.fir_killed;
       public         root    false    5            ?            1259    71462    fir_killed_id_seq    SEQUENCE     s   CREATE SEQUENCE fir_killed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.fir_killed_id_seq;
       public       root    false    5    235                       0    0    fir_killed_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE fir_killed_id_seq OWNED BY fir_killed.id;
            public       root    false    236            ?            1259    71464    fir_location    TABLE     ?   CREATE TABLE fir_location (
    "SNO" integer NOT NULL,
    "TYPE" character varying(150) NOT NULL,
    "CATEGORY" character varying(100) NOT NULL,
    CONSTRAINT "fir_location_SNO_check" CHECK (("SNO" >= 0))
);
     DROP TABLE public.fir_location;
       public         root    false    5            ?            1259    71468    fir_mva_act    TABLE        CREATE TABLE fir_mva_act (
    "MVA_Section" character varying(20) NOT NULL,
    "MVA_Name" character varying(100) NOT NULL
);
    DROP TABLE public.fir_mva_act;
       public         root    false    5            ?            1259    71471    fir_offender    TABLE     +  CREATE TABLE fir_offender (
    id integer NOT NULL,
    "SUBVEHICLE_TYPE1" character varying(15) NOT NULL,
    routeno1 character varying(15) NOT NULL,
    rcno1 character varying(15) NOT NULL,
    dri_name character varying(50) NOT NULL,
    dri_rel_name character varying(150) NOT NULL,
    dri_sex character varying(15) NOT NULL,
    dri_add character varying(150) NOT NULL,
    "OTHER_EDU_QUAL" character varying(50) NOT NULL,
    "OTHER_WORK_STATUS" character varying(50) NOT NULL,
    "DRI_DRUNK" character varying(50) NOT NULL,
    dri_lic_no character varying(150) NOT NULL,
    dri_lic_from character varying(150) NOT NULL,
    dri_lic_date_issu date,
    dri_lic_date_upto date,
    "EDU_QUAL_id" character varying(20),
    "VEHICLE_LOADED_CONDITION1_id" character varying(20) NOT NULL,
    "VEHTYPE1_id" character varying(20) NOT NULL,
    "WORK_STATUS_id" character varying(20),
    "ACCID_ID_id" character varying(15) NOT NULL,
    dri_relation character varying(15) NOT NULL,
    dri_lic character varying(5) NOT NULL,
    dri_lic_perm character varying(25) NOT NULL,
    dri_lic_yes character varying(25) NOT NULL,
    age_known character varying(30) NOT NULL,
    dri_age integer NOT NULL,
    dri_lic_not character varying(25) NOT NULL,
    CONSTRAINT fir_offender_dri_age_check CHECK ((dri_age >= 0))
);
     DROP TABLE public.fir_offender;
       public         root    false    5            ?            1259    71478    fir_offender_id_seq    SEQUENCE     u   CREATE SEQUENCE fir_offender_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.fir_offender_id_seq;
       public       root    false    239    5                       0    0    fir_offender_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE fir_offender_id_seq OWNED BY fir_offender.id;
            public       root    false    240            ?            1259    71480    fir_policestation    TABLE     ?  CREATE TABLE fir_policestation (
    "DISTNAM" character varying(50) NOT NULL,
    "DIST" character varying(20) NOT NULL,
    "CIRCLENAM" character varying(50) NOT NULL,
    "RANGE" character varying(4) NOT NULL,
    "RANGENAM" character varying(50) NOT NULL,
    "PS" character varying(20) NOT NULL,
    "PSNAME" character varying(100) NOT NULL,
    "CIRCLE_PS" character varying(50) NOT NULL,
    "CIRCLE_id" character varying(4) NOT NULL
);
 %   DROP TABLE public.fir_policestation;
       public         root    false    5            ?            1259    71483    fir_profile    TABLE     h  CREATE TABLE fir_profile (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    emp_id character varying(15) NOT NULL,
    district_circle character varying(30) NOT NULL,
    range_circle character varying(30) NOT NULL,
    designation character varying(30) NOT NULL,
    circle character varying(60) NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.fir_profile;
       public         root    false    5            ?            1259    71486    fir_profile_id_seq    SEQUENCE     t   CREATE SEQUENCE fir_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.fir_profile_id_seq;
       public       root    false    242    5                       0    0    fir_profile_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE fir_profile_id_seq OWNED BY fir_profile.id;
            public       root    false    243            ?            1259    71488    fir_remedies    TABLE     ?   CREATE TABLE fir_remedies (
    "Rem_Code" character varying(20) NOT NULL,
    "Rem_Description" character varying(100) NOT NULL
);
     DROP TABLE public.fir_remedies;
       public         root    false    5            ?            1259    71491    fir_road_character    TABLE     ?   CREATE TABLE fir_road_character (
    "RC_Code" character varying(20) NOT NULL,
    "RC_Name" character varying(100) NOT NULL
);
 &   DROP TABLE public.fir_road_character;
       public         root    false    5            ?            1259    71494    fir_road_condition    TABLE     ?   CREATE TABLE fir_road_condition (
    "RCN_Code" character varying(20) NOT NULL,
    "RCN_Name" character varying(100) NOT NULL
);
 &   DROP TABLE public.fir_road_condition;
       public         root    false    5            ?            1259    71497    fir_road_engg_fault    TABLE     ?   CREATE TABLE fir_road_engg_fault (
    "RENF_Code" character varying(20) NOT NULL,
    "RENF_Details" character varying(100) NOT NULL
);
 '   DROP TABLE public.fir_road_engg_fault;
       public         root    false    5            ?            1259    71500    fir_road_env_fault    TABLE     ?   CREATE TABLE fir_road_env_fault (
    "REF_Code" character varying(20) NOT NULL,
    "REF_Details" character varying(100) NOT NULL
);
 &   DROP TABLE public.fir_road_env_fault;
       public         root    false    5            ?            1259    71503    fir_road_type    TABLE     |   CREATE TABLE fir_road_type (
    "RT_Code" character varying(20) NOT NULL,
    "RT_Name" character varying(100) NOT NULL
);
 !   DROP TABLE public.fir_road_type;
       public         root    false    5            ?            1259    71506    fir_road_type1    TABLE        CREATE TABLE fir_road_type1 (
    "SRT_Code" character varying(20) NOT NULL,
    "SRT_Name" character varying(100) NOT NULL
);
 "   DROP TABLE public.fir_road_type1;
       public         root    false    5            ?            1259    71509 	   fir_roads    TABLE     ?  CREATE TABLE fir_roads (
    "RNG" character varying(5) NOT NULL,
    "DIST" character varying(5) NOT NULL,
    "ROADNAME" character varying(50) NOT NULL,
    "ROAD" integer NOT NULL,
    "PS" character varying(5) NOT NULL,
    "PLACE_OCC" character varying(50) NOT NULL,
    "NEW" character varying(50) NOT NULL,
    "PSNAME" character varying(50) NOT NULL,
    "NEW1" character varying(50) NOT NULL,
    "CIRCLE_id" character varying(4) NOT NULL
);
    DROP TABLE public.fir_roads;
       public         root    false    5            ?            1259    71512    fir_sections    TABLE     ?   CREATE TABLE fir_sections (
    "SECTION" integer NOT NULL,
    "SECTIONDTL" character varying(50) NOT NULL,
    "ACCTYPE" character varying(5) NOT NULL,
    "ACCTYPEN" character varying(25) NOT NULL
);
     DROP TABLE public.fir_sections;
       public         root    false    5            ?            1259    71515    fir_self_type    TABLE     ?   CREATE TABLE fir_self_type (
    "SNO" character varying(20) NOT NULL,
    "CODE" character varying(20) NOT NULL,
    "TYPE" character varying(100) NOT NULL
);
 !   DROP TABLE public.fir_self_type;
       public         root    false    5            ?            1259    71518    fir_seperation    TABLE     {   CREATE TABLE fir_seperation (
    "S_Code" character varying(20) NOT NULL,
    "S_Name" character varying(100) NOT NULL
);
 "   DROP TABLE public.fir_seperation;
       public         root    false    5            ?            1259    71521    fir_study_parameter    TABLE     ?   CREATE TABLE fir_study_parameter (
    "SPM_Code" character varying(20) NOT NULL,
    "SPM_Name" character varying(100) NOT NULL
);
 '   DROP TABLE public.fir_study_parameter;
       public         root    false    5                        1259    71524    fir_surface_condition    TABLE     ?   CREATE TABLE fir_surface_condition (
    "SC_Code" character varying(20) NOT NULL,
    "SC_Name" character varying(100) NOT NULL
);
 )   DROP TABLE public.fir_surface_condition;
       public         root    false    5                       1259    71527    fir_surface_type    TABLE     ?   CREATE TABLE fir_surface_type (
    "SFT_Code" character varying(20) NOT NULL,
    "SFT_Name" character varying(100) NOT NULL
);
 $   DROP TABLE public.fir_surface_type;
       public         root    false    5                       1259    71530    fir_veh_mech_fault    TABLE     ?   CREATE TABLE fir_veh_mech_fault (
    "VMF_Code" character varying(20) NOT NULL,
    "VMF_Details" character varying(100) NOT NULL
);
 &   DROP TABLE public.fir_veh_mech_fault;
       public         root    false    5                       1259    71533    fir_vehicle_loaded_condition    TABLE     ?   CREATE TABLE fir_vehicle_loaded_condition (
    "VLC_Code" character varying(20) NOT NULL,
    "VLC_Name" character varying(100) NOT NULL
);
 0   DROP TABLE public.fir_vehicle_loaded_condition;
       public         root    false    5                       1259    71536    fir_vehtype1    TABLE     ?  CREATE TABLE fir_vehtype1 (
    "VEHTYPE" character varying(20) NOT NULL,
    "VEHDETL" character varying(20) NOT NULL,
    "VEHDTL" character varying(40) NOT NULL,
    "SIMPLE" integer NOT NULL,
    "NONINJ" integer NOT NULL,
    "FATAL" integer NOT NULL,
    "PERINJ" integer NOT NULL,
    "PERKIL" integer NOT NULL,
    "PEDESTRIAN" integer NOT NULL,
    "CARI" integer NOT NULL,
    "CARK" integer NOT NULL,
    "DTCI" integer NOT NULL,
    "DTCK" integer NOT NULL,
    "BLBI" integer NOT NULL,
    "BLBK" integer NOT NULL,
    "BUSI" integer NOT NULL,
    "BUSK" integer NOT NULL,
    "OSBI" integer NOT NULL,
    "OSBK" integer NOT NULL,
    "MBSI" integer NOT NULL,
    "MBSK" integer NOT NULL,
    "TAXI" integer NOT NULL,
    "TAXK" integer NOT NULL,
    "TSRK" integer NOT NULL,
    "TSRI" integer NOT NULL,
    "TWWI" integer NOT NULL,
    "TWWK" integer NOT NULL,
    "MILI" integer NOT NULL,
    "MILK" integer NOT NULL,
    "DLVI" integer NOT NULL,
    "DLVK" integer NOT NULL,
    "TRCI" integer NOT NULL,
    "TRCK" integer NOT NULL,
    "POVI" integer NOT NULL,
    "POVK" integer NOT NULL,
    "AMBI" integer NOT NULL,
    "AMBK" integer NOT NULL,
    "STRI" integer NOT NULL,
    "STRK" integer NOT NULL,
    "TMPI" integer NOT NULL,
    "TMPK" integer NOT NULL,
    "MATI" integer NOT NULL,
    "MATK" integer NOT NULL,
    "TNKI" integer NOT NULL,
    "TNKK" integer NOT NULL,
    "UNKI" integer NOT NULL,
    "UNKK" integer NOT NULL,
    "CYCI" integer NOT NULL,
    "CYCK" integer NOT NULL,
    "TNGI" integer NOT NULL,
    "TNGK" integer NOT NULL,
    "CYRI" integer NOT NULL,
    "CYRK" integer NOT NULL,
    "HDCI" integer NOT NULL,
    "HDCK" integer NOT NULL,
    "BULI" integer NOT NULL,
    "BULK" integer NOT NULL,
    "ANII" integer NOT NULL,
    "ANIK" integer NOT NULL,
    "CRNI" integer NOT NULL,
    "CRNK" integer NOT NULL,
    "UDTI" integer NOT NULL,
    "UDTK" integer NOT NULL,
    "PEDI" integer NOT NULL,
    "PEDK" integer NOT NULL,
    "HTVI" integer NOT NULL,
    "HTVK" integer NOT NULL,
    "SLFI" integer NOT NULL,
    "SLFK" integer NOT NULL,
    "ELTI" integer NOT NULL,
    "ELTK" integer NOT NULL,
    "WLLI" integer NOT NULL,
    "WLLK" integer NOT NULL,
    "PASI" integer NOT NULL,
    "PASK" integer NOT NULL,
    CONSTRAINT "fir_vehtype1_AMBI_5a4b678f_check" CHECK (("AMBI" >= 0)),
    CONSTRAINT "fir_vehtype1_AMBK_b8048434_check" CHECK (("AMBK" >= 0)),
    CONSTRAINT "fir_vehtype1_ANII_aac56e80_check" CHECK (("ANII" >= 0)),
    CONSTRAINT "fir_vehtype1_ANIK_5c4bb31e_check" CHECK (("ANIK" >= 0)),
    CONSTRAINT "fir_vehtype1_BLBI_ec272624_check" CHECK (("BLBI" >= 0)),
    CONSTRAINT "fir_vehtype1_BLBK_1163e560_check" CHECK (("BLBK" >= 0)),
    CONSTRAINT "fir_vehtype1_BULI_8d36e91f_check" CHECK (("BULI" >= 0)),
    CONSTRAINT "fir_vehtype1_BULK_b95bb412_check" CHECK (("BULK" >= 0)),
    CONSTRAINT "fir_vehtype1_BUSI_f5482a48_check" CHECK (("BUSI" >= 0)),
    CONSTRAINT "fir_vehtype1_BUSK_a354f6d9_check" CHECK (("BUSK" >= 0)),
    CONSTRAINT "fir_vehtype1_CARI_16fb5b8d_check" CHECK (("CARI" >= 0)),
    CONSTRAINT "fir_vehtype1_CARK_14a4c2a6_check" CHECK (("CARK" >= 0)),
    CONSTRAINT "fir_vehtype1_CRNI_b5ca1008_check" CHECK (("CRNI" >= 0)),
    CONSTRAINT "fir_vehtype1_CRNK_c9942d73_check" CHECK (("CRNK" >= 0)),
    CONSTRAINT "fir_vehtype1_CYCI_4ad81930_check" CHECK (("CYCI" >= 0)),
    CONSTRAINT "fir_vehtype1_CYCK_407213e2_check" CHECK (("CYCK" >= 0)),
    CONSTRAINT "fir_vehtype1_CYRI_77a52351_check" CHECK (("CYRI" >= 0)),
    CONSTRAINT "fir_vehtype1_CYRK_23b5e7c6_check" CHECK (("CYRK" >= 0)),
    CONSTRAINT "fir_vehtype1_DLVI_2e7b51c0_check" CHECK (("DLVI" >= 0)),
    CONSTRAINT "fir_vehtype1_DLVK_d66d8dcb_check" CHECK (("DLVK" >= 0)),
    CONSTRAINT "fir_vehtype1_DTCI_2a3386ea_check" CHECK (("DTCI" >= 0)),
    CONSTRAINT "fir_vehtype1_DTCK_e58fefd1_check" CHECK (("DTCK" >= 0)),
    CONSTRAINT "fir_vehtype1_ELTI_5061f9a2_check" CHECK (("ELTI" >= 0)),
    CONSTRAINT "fir_vehtype1_ELTK_f02abd20_check" CHECK (("ELTK" >= 0)),
    CONSTRAINT "fir_vehtype1_FATAL_b833ee5d_check" CHECK (("FATAL" >= 0)),
    CONSTRAINT "fir_vehtype1_HDCI_57aa9a1a_check" CHECK (("HDCI" >= 0)),
    CONSTRAINT "fir_vehtype1_HDCK_2741afb8_check" CHECK (("HDCK" >= 0)),
    CONSTRAINT "fir_vehtype1_HTVI_623559b3_check" CHECK (("HTVI" >= 0)),
    CONSTRAINT "fir_vehtype1_HTVK_465d416c_check" CHECK (("HTVK" >= 0)),
    CONSTRAINT "fir_vehtype1_MATI_71feae30_check" CHECK (("MATI" >= 0)),
    CONSTRAINT "fir_vehtype1_MATK_90224f14_check" CHECK (("MATK" >= 0)),
    CONSTRAINT "fir_vehtype1_MBSI_be71edce_check" CHECK (("MBSI" >= 0)),
    CONSTRAINT "fir_vehtype1_MBSK_101ad22b_check" CHECK (("MBSK" >= 0)),
    CONSTRAINT "fir_vehtype1_MILI_3c112167_check" CHECK (("MILI" >= 0)),
    CONSTRAINT "fir_vehtype1_MILK_2a699b4c_check" CHECK (("MILK" >= 0)),
    CONSTRAINT "fir_vehtype1_NONINJ_0db0d44a_check" CHECK (("NONINJ" >= 0)),
    CONSTRAINT "fir_vehtype1_OSBI_e40878ad_check" CHECK (("OSBI" >= 0)),
    CONSTRAINT "fir_vehtype1_OSBK_c81b9e5c_check" CHECK (("OSBK" >= 0)),
    CONSTRAINT "fir_vehtype1_PASI_f59f9265_check" CHECK (("PASI" >= 0)),
    CONSTRAINT "fir_vehtype1_PASK_ea457a55_check" CHECK (("PASK" >= 0)),
    CONSTRAINT "fir_vehtype1_PEDESTRIAN_4723570e_check" CHECK (("PEDESTRIAN" >= 0)),
    CONSTRAINT "fir_vehtype1_PEDI_023af736_check" CHECK (("PEDI" >= 0)),
    CONSTRAINT "fir_vehtype1_PEDK_52fcc01d_check" CHECK (("PEDK" >= 0)),
    CONSTRAINT "fir_vehtype1_PERINJ_856d21ef_check" CHECK (("PERINJ" >= 0)),
    CONSTRAINT "fir_vehtype1_PERKIL_6cd1ad0e_check" CHECK (("PERKIL" >= 0)),
    CONSTRAINT "fir_vehtype1_POVI_cceb16dd_check" CHECK (("POVI" >= 0)),
    CONSTRAINT "fir_vehtype1_POVK_7ac4fb84_check" CHECK (("POVK" >= 0)),
    CONSTRAINT "fir_vehtype1_SIMPLE_c2aace8b_check" CHECK (("SIMPLE" >= 0)),
    CONSTRAINT "fir_vehtype1_SLFI_dbc85299_check" CHECK (("SLFI" >= 0)),
    CONSTRAINT "fir_vehtype1_SLFK_b7b432db_check" CHECK (("SLFK" >= 0)),
    CONSTRAINT "fir_vehtype1_STRI_2614535c_check" CHECK (("STRI" >= 0)),
    CONSTRAINT "fir_vehtype1_STRK_9ce1f6c1_check" CHECK (("STRK" >= 0)),
    CONSTRAINT "fir_vehtype1_TAXI_52622d4a_check" CHECK (("TAXI" >= 0)),
    CONSTRAINT "fir_vehtype1_TAXK_18c38c23_check" CHECK (("TAXK" >= 0)),
    CONSTRAINT "fir_vehtype1_TMPI_e2af358b_check" CHECK (("TMPI" >= 0)),
    CONSTRAINT "fir_vehtype1_TMPK_c802bf04_check" CHECK (("TMPK" >= 0)),
    CONSTRAINT "fir_vehtype1_TNGI_57332fc3_check" CHECK (("TNGI" >= 0)),
    CONSTRAINT "fir_vehtype1_TNGK_07a1f2df_check" CHECK (("TNGK" >= 0)),
    CONSTRAINT "fir_vehtype1_TNKI_f4d3d74d_check" CHECK (("TNKI" >= 0)),
    CONSTRAINT "fir_vehtype1_TNKK_c2e5868d_check" CHECK (("TNKK" >= 0)),
    CONSTRAINT "fir_vehtype1_TRCI_13924509_check" CHECK (("TRCI" >= 0)),
    CONSTRAINT "fir_vehtype1_TRCK_8d657b02_check" CHECK (("TRCK" >= 0)),
    CONSTRAINT "fir_vehtype1_TSRI_91f9193b_check" CHECK (("TSRI" >= 0)),
    CONSTRAINT "fir_vehtype1_TSRK_eb0fc9ab_check" CHECK (("TSRK" >= 0)),
    CONSTRAINT "fir_vehtype1_TWWI_cbcf886e_check" CHECK (("TWWI" >= 0)),
    CONSTRAINT "fir_vehtype1_TWWK_0bcb3386_check" CHECK (("TWWK" >= 0)),
    CONSTRAINT "fir_vehtype1_UDTI_e1c9dc5f_check" CHECK (("UDTI" >= 0)),
    CONSTRAINT "fir_vehtype1_UDTK_48984d0d_check" CHECK (("UDTK" >= 0)),
    CONSTRAINT "fir_vehtype1_UNKI_bec95714_check" CHECK (("UNKI" >= 0)),
    CONSTRAINT "fir_vehtype1_UNKK_cc09af42_check" CHECK (("UNKK" >= 0)),
    CONSTRAINT "fir_vehtype1_WLLI_ed4e0aaa_check" CHECK (("WLLI" >= 0)),
    CONSTRAINT "fir_vehtype1_WLLK_e27b900d_check" CHECK (("WLLK" >= 0))
);
     DROP TABLE public.fir_vehtype1;
       public         root    false    5                       1259    71611    fir_vehtype2    TABLE     ?  CREATE TABLE fir_vehtype2 (
    "VEHTYPE" character varying(30) NOT NULL,
    "VEHDETL" character varying(20) NOT NULL,
    "VEHDTL" character varying(40) NOT NULL,
    "SIMPLE" integer NOT NULL,
    "NONINJ" integer NOT NULL,
    "FATAL" integer NOT NULL,
    "PERINJ" integer NOT NULL,
    "PERKIL" integer NOT NULL,
    "PEDESTRIAN" integer NOT NULL,
    "CARI" integer NOT NULL,
    "CARK" integer NOT NULL,
    "DTCI" integer NOT NULL,
    "DTCK" integer NOT NULL,
    "BLBI" integer NOT NULL,
    "BLBK" integer NOT NULL,
    "BUSI" integer NOT NULL,
    "BUSK" integer NOT NULL,
    "OSBI" integer NOT NULL,
    "OSBK" integer NOT NULL,
    "MBSI" integer NOT NULL,
    "MBSK" integer NOT NULL,
    "TAXI" integer NOT NULL,
    "TAXK" integer NOT NULL,
    "TSRI" integer NOT NULL,
    "TSRK" integer NOT NULL,
    "TWWI" integer NOT NULL,
    "TWWK" integer NOT NULL,
    "MILI" integer NOT NULL,
    "MILK" integer NOT NULL,
    "DLVI" integer NOT NULL,
    "DLVK" integer NOT NULL,
    "TRCI" integer NOT NULL,
    "TRCK" integer NOT NULL,
    "POVI" integer NOT NULL,
    "POVK" integer NOT NULL,
    "AMBI" integer NOT NULL,
    "AMBK" integer NOT NULL,
    "STRI" integer NOT NULL,
    "STRK" integer NOT NULL,
    "TMPI" integer NOT NULL,
    "TMPK" integer NOT NULL,
    "CYCI" integer NOT NULL,
    "CYRI" integer NOT NULL,
    "CYRK" integer NOT NULL,
    "HDCI" integer NOT NULL,
    "HDCK" integer NOT NULL,
    "BULI" integer NOT NULL,
    "BULK" integer NOT NULL,
    "ANII" integer NOT NULL,
    "ANIK" integer NOT NULL,
    "CRNI" integer NOT NULL,
    "CRNK" integer NOT NULL,
    "UDTI" integer NOT NULL,
    "UDTK" integer NOT NULL,
    "PEDI" integer NOT NULL,
    "PEDK" integer NOT NULL,
    "HTVI" integer NOT NULL,
    "HTVK" integer NOT NULL,
    "SLFI" integer NOT NULL,
    "SLFK" integer NOT NULL,
    "ELTI" integer NOT NULL,
    "ELTK" integer NOT NULL,
    "WLLI" integer NOT NULL,
    "WLLK" integer NOT NULL,
    "PASI" integer NOT NULL,
    "PASK" integer NOT NULL,
    "CYCK" integer NOT NULL,
    "MATI" integer NOT NULL,
    "MATK" integer NOT NULL,
    "TNGI" integer NOT NULL,
    "TNGK" integer NOT NULL,
    "TNKI" integer NOT NULL,
    "TNKK" integer NOT NULL,
    "UNKI" integer NOT NULL,
    "UNKK" integer NOT NULL,
    CONSTRAINT "fir_vehtype2_AMBI_dbd9dd74_check" CHECK (("AMBI" >= 0)),
    CONSTRAINT "fir_vehtype2_AMBK_4b430505_check" CHECK (("AMBK" >= 0)),
    CONSTRAINT "fir_vehtype2_ANII_09bb5c4f_check" CHECK (("ANII" >= 0)),
    CONSTRAINT "fir_vehtype2_ANIK_e5067919_check" CHECK (("ANIK" >= 0)),
    CONSTRAINT "fir_vehtype2_BLBI_241805f8_check" CHECK (("BLBI" >= 0)),
    CONSTRAINT "fir_vehtype2_BLBK_26d5c741_check" CHECK (("BLBK" >= 0)),
    CONSTRAINT "fir_vehtype2_BULI_ae8dcad8_check" CHECK (("BULI" >= 0)),
    CONSTRAINT "fir_vehtype2_BULK_f29e73e9_check" CHECK (("BULK" >= 0)),
    CONSTRAINT "fir_vehtype2_BUSI_8039b9b9_check" CHECK (("BUSI" >= 0)),
    CONSTRAINT "fir_vehtype2_BUSK_ae5c70f0_check" CHECK (("BUSK" >= 0)),
    CONSTRAINT "fir_vehtype2_CARI_61771f26_check" CHECK (("CARI" >= 0)),
    CONSTRAINT "fir_vehtype2_CARK_7c2f7bd7_check" CHECK (("CARK" >= 0)),
    CONSTRAINT "fir_vehtype2_CRNI_dd2982fd_check" CHECK (("CRNI" >= 0)),
    CONSTRAINT "fir_vehtype2_CRNK_07083681_check" CHECK (("CRNK" >= 0)),
    CONSTRAINT "fir_vehtype2_CYCI_2e9bd09c_check" CHECK (("CYCI" >= 0)),
    CONSTRAINT "fir_vehtype2_CYCK_3bfa8f7d_check" CHECK (("CYCK" >= 0)),
    CONSTRAINT "fir_vehtype2_CYRI_4855fd8f_check" CHECK (("CYRI" >= 0)),
    CONSTRAINT "fir_vehtype2_CYRK_e556d5ac_check" CHECK (("CYRK" >= 0)),
    CONSTRAINT "fir_vehtype2_DLVI_0b43f419_check" CHECK (("DLVI" >= 0)),
    CONSTRAINT "fir_vehtype2_DLVK_7fc12c81_check" CHECK (("DLVK" >= 0)),
    CONSTRAINT "fir_vehtype2_DTCI_e09e9a6e_check" CHECK (("DTCI" >= 0)),
    CONSTRAINT "fir_vehtype2_DTCK_8ed42ae5_check" CHECK (("DTCK" >= 0)),
    CONSTRAINT "fir_vehtype2_ELTI_12feb419_check" CHECK (("ELTI" >= 0)),
    CONSTRAINT "fir_vehtype2_ELTK_88d8a314_check" CHECK (("ELTK" >= 0)),
    CONSTRAINT "fir_vehtype2_FATAL_d0c8334f_check" CHECK (("FATAL" >= 0)),
    CONSTRAINT "fir_vehtype2_HDCI_14a97cf1_check" CHECK (("HDCI" >= 0)),
    CONSTRAINT "fir_vehtype2_HDCK_b3c7973e_check" CHECK (("HDCK" >= 0)),
    CONSTRAINT "fir_vehtype2_HTVI_162cc755_check" CHECK (("HTVI" >= 0)),
    CONSTRAINT "fir_vehtype2_HTVK_5c2562fe_check" CHECK (("HTVK" >= 0)),
    CONSTRAINT "fir_vehtype2_MATI_3bb7fd5c_check" CHECK (("MATI" >= 0)),
    CONSTRAINT "fir_vehtype2_MATK_81896769_check" CHECK (("MATK" >= 0)),
    CONSTRAINT "fir_vehtype2_MBSI_d8703383_check" CHECK (("MBSI" >= 0)),
    CONSTRAINT "fir_vehtype2_MBSK_53620702_check" CHECK (("MBSK" >= 0)),
    CONSTRAINT "fir_vehtype2_MILI_12947bcd_check" CHECK (("MILI" >= 0)),
    CONSTRAINT "fir_vehtype2_MILK_9482a8e5_check" CHECK (("MILK" >= 0)),
    CONSTRAINT "fir_vehtype2_NONINJ_f8933739_check" CHECK (("NONINJ" >= 0)),
    CONSTRAINT "fir_vehtype2_OSBI_059994e4_check" CHECK (("OSBI" >= 0)),
    CONSTRAINT "fir_vehtype2_OSBK_28522f6f_check" CHECK (("OSBK" >= 0)),
    CONSTRAINT "fir_vehtype2_PASI_8a32764d_check" CHECK (("PASI" >= 0)),
    CONSTRAINT "fir_vehtype2_PASK_70641e00_check" CHECK (("PASK" >= 0)),
    CONSTRAINT "fir_vehtype2_PEDESTRIAN_6483e20c_check" CHECK (("PEDESTRIAN" >= 0)),
    CONSTRAINT "fir_vehtype2_PEDI_90c59aea_check" CHECK (("PEDI" >= 0)),
    CONSTRAINT "fir_vehtype2_PEDK_d899425e_check" CHECK (("PEDK" >= 0)),
    CONSTRAINT "fir_vehtype2_PERINJ_66b8f191_check" CHECK (("PERINJ" >= 0)),
    CONSTRAINT "fir_vehtype2_PERKIL_4093ee98_check" CHECK (("PERKIL" >= 0)),
    CONSTRAINT "fir_vehtype2_POVI_77d8b3e3_check" CHECK (("POVI" >= 0)),
    CONSTRAINT "fir_vehtype2_POVK_68f0ffcb_check" CHECK (("POVK" >= 0)),
    CONSTRAINT "fir_vehtype2_SIMPLE_16a5a31b_check" CHECK (("SIMPLE" >= 0)),
    CONSTRAINT "fir_vehtype2_SLFI_1c7136ca_check" CHECK (("SLFI" >= 0)),
    CONSTRAINT "fir_vehtype2_SLFK_7fdd14f4_check" CHECK (("SLFK" >= 0)),
    CONSTRAINT "fir_vehtype2_STRI_5940daf8_check" CHECK (("STRI" >= 0)),
    CONSTRAINT "fir_vehtype2_STRK_ef8a2712_check" CHECK (("STRK" >= 0)),
    CONSTRAINT "fir_vehtype2_TAXI_64445e48_check" CHECK (("TAXI" >= 0)),
    CONSTRAINT "fir_vehtype2_TAXK_25d1fa18_check" CHECK (("TAXK" >= 0)),
    CONSTRAINT "fir_vehtype2_TMPI_76742bd7_check" CHECK (("TMPI" >= 0)),
    CONSTRAINT "fir_vehtype2_TMPK_37b1b912_check" CHECK (("TMPK" >= 0)),
    CONSTRAINT "fir_vehtype2_TNGI_ee5abb11_check" CHECK (("TNGI" >= 0)),
    CONSTRAINT "fir_vehtype2_TNGK_714d00d9_check" CHECK (("TNGK" >= 0)),
    CONSTRAINT "fir_vehtype2_TNKI_af9b53f4_check" CHECK (("TNKI" >= 0)),
    CONSTRAINT "fir_vehtype2_TNKK_ede13969_check" CHECK (("TNKK" >= 0)),
    CONSTRAINT "fir_vehtype2_TRCI_85047142_check" CHECK (("TRCI" >= 0)),
    CONSTRAINT "fir_vehtype2_TRCK_fa000ba4_check" CHECK (("TRCK" >= 0)),
    CONSTRAINT "fir_vehtype2_TSRI_2a77a831_check" CHECK (("TSRI" >= 0)),
    CONSTRAINT "fir_vehtype2_TSRK_5c5c388f_check" CHECK (("TSRK" >= 0)),
    CONSTRAINT "fir_vehtype2_TWWI_d32c799c_check" CHECK (("TWWI" >= 0)),
    CONSTRAINT "fir_vehtype2_TWWK_060d0dd3_check" CHECK (("TWWK" >= 0)),
    CONSTRAINT "fir_vehtype2_UDTI_5a489059_check" CHECK (("UDTI" >= 0)),
    CONSTRAINT "fir_vehtype2_UDTK_72e876ca_check" CHECK (("UDTK" >= 0)),
    CONSTRAINT "fir_vehtype2_UNKI_bfbac418_check" CHECK (("UNKI" >= 0)),
    CONSTRAINT "fir_vehtype2_UNKK_c8a40c70_check" CHECK (("UNKK" >= 0)),
    CONSTRAINT "fir_vehtype2_WLLI_033ea2f8_check" CHECK (("WLLI" >= 0)),
    CONSTRAINT "fir_vehtype2_WLLK_4303df50_check" CHECK (("WLLK" >= 0))
);
     DROP TABLE public.fir_vehtype2;
       public         root    false    5                       1259    71686    fir_victim_fault    TABLE     ?   CREATE TABLE fir_victim_fault (
    "VF_Code" character varying(20) NOT NULL,
    "VF_Details" character varying(100) NOT NULL
);
 $   DROP TABLE public.fir_victim_fault;
       public         root    false    5                       1259    71689    fir_victim_person    TABLE     ?  CREATE TABLE fir_victim_person (
    id integer NOT NULL,
    "INJKIL" character varying(15) NOT NULL,
    "VICSEX" character varying(15) NOT NULL,
    "VICAGE" integer NOT NULL,
    "PER_STAT_TYPE" character varying(15) NOT NULL,
    "OFFEND" character varying(15) NOT NULL,
    "VEH_INFO" character varying(25) NOT NULL,
    "VIC_SEAT_BELT" character varying(5) NOT NULL,
    "VIC_HELMET" character varying(5) NOT NULL,
    "HELMET_STANDARD" character varying(15) NOT NULL,
    "VIC_OTHER_EDU_QUAL" character varying(50) NOT NULL,
    "VIC_OTHER_WORK_STATUS" character varying(50) NOT NULL,
    "VIC_DRI_DRUNK" character varying(15) NOT NULL,
    "ACCID_ID_id" character varying(15) NOT NULL,
    "PER_STAT_TYPE2_id" character varying(100) NOT NULL,
    "VIC_EDU_QUAL_id" character varying(20),
    "VIC_WORK_STATUS_id" character varying(20),
    CONSTRAINT "fir_victim_person_VICAGE_6f8ac6cc_check" CHECK (("VICAGE" >= 0))
);
 %   DROP TABLE public.fir_victim_person;
       public         root    false    5                       1259    71693    fir_victim_person_id_seq    SEQUENCE     z   CREATE SEQUENCE fir_victim_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.fir_victim_person_id_seq;
       public       root    false    263    5                        0    0    fir_victim_person_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE fir_victim_person_id_seq OWNED BY fir_victim_person.id;
            public       root    false    264            	           1259    71695    fir_victim_person_status    TABLE     f   CREATE TABLE fir_victim_person_status (
    "Victim_Person_Status" character varying(100) NOT NULL
);
 ,   DROP TABLE public.fir_victim_person_status;
       public         root    false    5            
           1259    71698    fir_victim_person_status1    TABLE     h   CREATE TABLE fir_victim_person_status1 (
    "Victim_Person_Status1" character varying(100) NOT NULL
);
 -   DROP TABLE public.fir_victim_person_status1;
       public         root    false    5                       1259    71701    fir_victim_vehicle    TABLE     r  CREATE TABLE fir_victim_vehicle (
    id integer NOT NULL,
    "SUBVEHICLE_TYPE2" character varying(15) NOT NULL,
    routeno2 character varying(15) NOT NULL,
    rgno2 character varying(15) NOT NULL,
    "VEHICLE_LOADED_CONDITION2_id" character varying(20) NOT NULL,
    "VEHTYPE2_id" character varying(30) NOT NULL,
    "ACCID_ID_id" character varying(15) NOT NULL
);
 &   DROP TABLE public.fir_victim_vehicle;
       public         root    false    5                       1259    71704    fir_victim_vehicle_id_seq    SEQUENCE     {   CREATE SEQUENCE fir_victim_vehicle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.fir_victim_vehicle_id_seq;
       public       root    false    267    5            !           0    0    fir_victim_vehicle_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE fir_victim_vehicle_id_seq OWNED BY fir_victim_vehicle.id;
            public       root    false    268                       1259    71706    fir_weather_cond    TABLE     ?   CREATE TABLE fir_weather_cond (
    "WC_Code" character varying(20) NOT NULL,
    "WC_Details" character varying(100) NOT NULL
);
 $   DROP TABLE public.fir_weather_cond;
       public         root    false    5                       1259    71709    fir_work_status    TABLE     ~   CREATE TABLE fir_work_status (
    "WS_Code" character varying(20) NOT NULL,
    "WS_Name" character varying(100) NOT NULL
);
 #   DROP TABLE public.fir_work_status;
       public         root    false    5                       1259    71712    report_builder_displayfield    TABLE     ?  CREATE TABLE report_builder_displayfield (
    id integer NOT NULL,
    path character varying(2000) NOT NULL,
    path_verbose character varying(2000) NOT NULL,
    field character varying(2000) NOT NULL,
    field_verbose character varying(2000) NOT NULL,
    name character varying(2000) NOT NULL,
    sort integer,
    sort_reverse boolean NOT NULL,
    width integer NOT NULL,
    aggregate character varying(5) NOT NULL,
    "position" smallint,
    total boolean NOT NULL,
    "group" boolean NOT NULL,
    display_format_id integer,
    report_id integer NOT NULL,
    CONSTRAINT report_builder_displayfield_position_check CHECK (("position" >= 0))
);
 /   DROP TABLE public.report_builder_displayfield;
       public         root    false    5                       1259    71719 "   report_builder_displayfield_id_seq    SEQUENCE     ?   CREATE SEQUENCE report_builder_displayfield_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.report_builder_displayfield_id_seq;
       public       root    false    5    271            "           0    0 "   report_builder_displayfield_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE report_builder_displayfield_id_seq OWNED BY report_builder_displayfield.id;
            public       root    false    272                       1259    71721    report_builder_filterfield    TABLE     E  CREATE TABLE report_builder_filterfield (
    id integer NOT NULL,
    path character varying(2000) NOT NULL,
    path_verbose character varying(2000) NOT NULL,
    field character varying(2000) NOT NULL,
    field_verbose character varying(2000) NOT NULL,
    filter_type character varying(20) NOT NULL,
    filter_value character varying(2000) NOT NULL,
    filter_value2 character varying(2000) NOT NULL,
    exclude boolean NOT NULL,
    "position" smallint,
    report_id integer NOT NULL,
    CONSTRAINT report_builder_filterfield_position_check CHECK (("position" >= 0))
);
 .   DROP TABLE public.report_builder_filterfield;
       public         root    false    5                       1259    71728 !   report_builder_filterfield_id_seq    SEQUENCE     ?   CREATE SEQUENCE report_builder_filterfield_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.report_builder_filterfield_id_seq;
       public       root    false    273    5            #           0    0 !   report_builder_filterfield_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE report_builder_filterfield_id_seq OWNED BY report_builder_filterfield.id;
            public       root    false    274                       1259    71730    report_builder_format    TABLE     ?   CREATE TABLE report_builder_format (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    string character varying(300) NOT NULL
);
 )   DROP TABLE public.report_builder_format;
       public         root    false    5                       1259    71733    report_builder_format_id_seq    SEQUENCE     ~   CREATE SEQUENCE report_builder_format_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.report_builder_format_id_seq;
       public       root    false    275    5            $           0    0    report_builder_format_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE report_builder_format_id_seq OWNED BY report_builder_format.id;
            public       root    false    276                       1259    71735    report_builder_report    TABLE     ?  CREATE TABLE report_builder_report (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(50) NOT NULL,
    description text NOT NULL,
    created date NOT NULL,
    modified date NOT NULL,
    "distinct" boolean NOT NULL,
    report_file character varying(100) NOT NULL,
    report_file_creation timestamp with time zone,
    root_model_id integer NOT NULL,
    user_created_id integer,
    user_modified_id integer
);
 )   DROP TABLE public.report_builder_report;
       public         root    false    5                       1259    71741    report_builder_report_id_seq    SEQUENCE     ~   CREATE SEQUENCE report_builder_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.report_builder_report_id_seq;
       public       root    false    277    5            %           0    0    report_builder_report_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE report_builder_report_id_seq OWNED BY report_builder_report.id;
            public       root    false    278                       1259    71743    report_builder_report_starred    TABLE     ?   CREATE TABLE report_builder_report_starred (
    id integer NOT NULL,
    report_id integer NOT NULL,
    user_id integer NOT NULL
);
 1   DROP TABLE public.report_builder_report_starred;
       public         root    false    5                       1259    71746 $   report_builder_report_starred_id_seq    SEQUENCE     ?   CREATE SEQUENCE report_builder_report_starred_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.report_builder_report_starred_id_seq;
       public       root    false    279    5            &           0    0 $   report_builder_report_starred_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE report_builder_report_starred_id_seq OWNED BY report_builder_report_starred.id;
            public       root    false    280            J           2604    71748    auth_group id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       root    false    203    202            K           2604    71749    auth_group_permissions id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       root    false    205    204            L           2604    71750    auth_permission id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       root    false    207    206            M           2604    71751    auth_user id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       root    false    211    208            N           2604    71752    auth_user_groups id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       root    false    210    209            O           2604    71753    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       root    false    213    212            P           2604    71754    django_admin_log id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       root    false    215    214            R           2604    71755    django_content_type id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       root    false    217    216            S           2604    71756    django_migrations id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       root    false    219    218            U           2604    71757    fir_causes id    DEFAULT     `   ALTER TABLE ONLY fir_causes ALTER COLUMN id SET DEFAULT nextval('fir_causes_id_seq'::regclass);
 <   ALTER TABLE public.fir_causes ALTER COLUMN id DROP DEFAULT;
       public       root    false    226    225            V           2604    71758    fir_collision id    DEFAULT     f   ALTER TABLE ONLY fir_collision ALTER COLUMN id SET DEFAULT nextval('fir_collision_id_seq'::regclass);
 ?   ALTER TABLE public.fir_collision ALTER COLUMN id DROP DEFAULT;
       public       root    false    229    228            X           2604    71759    fir_injured id    DEFAULT     b   ALTER TABLE ONLY fir_injured ALTER COLUMN id SET DEFAULT nextval('fir_injured_id_seq'::regclass);
 =   ALTER TABLE public.fir_injured ALTER COLUMN id DROP DEFAULT;
       public       root    false    234    233            Z           2604    71760    fir_killed id    DEFAULT     `   ALTER TABLE ONLY fir_killed ALTER COLUMN id SET DEFAULT nextval('fir_killed_id_seq'::regclass);
 <   ALTER TABLE public.fir_killed ALTER COLUMN id DROP DEFAULT;
       public       root    false    236    235            ]           2604    71761    fir_offender id    DEFAULT     d   ALTER TABLE ONLY fir_offender ALTER COLUMN id SET DEFAULT nextval('fir_offender_id_seq'::regclass);
 >   ALTER TABLE public.fir_offender ALTER COLUMN id DROP DEFAULT;
       public       root    false    240    239            _           2604    71762    fir_profile id    DEFAULT     b   ALTER TABLE ONLY fir_profile ALTER COLUMN id SET DEFAULT nextval('fir_profile_id_seq'::regclass);
 =   ALTER TABLE public.fir_profile ALTER COLUMN id DROP DEFAULT;
       public       root    false    243    242            ?           2604    71763    fir_victim_person id    DEFAULT     n   ALTER TABLE ONLY fir_victim_person ALTER COLUMN id SET DEFAULT nextval('fir_victim_person_id_seq'::regclass);
 C   ALTER TABLE public.fir_victim_person ALTER COLUMN id DROP DEFAULT;
       public       root    false    264    263            ?           2604    71764    fir_victim_vehicle id    DEFAULT     p   ALTER TABLE ONLY fir_victim_vehicle ALTER COLUMN id SET DEFAULT nextval('fir_victim_vehicle_id_seq'::regclass);
 D   ALTER TABLE public.fir_victim_vehicle ALTER COLUMN id DROP DEFAULT;
       public       root    false    268    267            ?           2604    71765    report_builder_displayfield id    DEFAULT     ?   ALTER TABLE ONLY report_builder_displayfield ALTER COLUMN id SET DEFAULT nextval('report_builder_displayfield_id_seq'::regclass);
 M   ALTER TABLE public.report_builder_displayfield ALTER COLUMN id DROP DEFAULT;
       public       root    false    272    271            ?           2604    71766    report_builder_filterfield id    DEFAULT     ?   ALTER TABLE ONLY report_builder_filterfield ALTER COLUMN id SET DEFAULT nextval('report_builder_filterfield_id_seq'::regclass);
 L   ALTER TABLE public.report_builder_filterfield ALTER COLUMN id DROP DEFAULT;
       public       root    false    274    273            ?           2604    71767    report_builder_format id    DEFAULT     v   ALTER TABLE ONLY report_builder_format ALTER COLUMN id SET DEFAULT nextval('report_builder_format_id_seq'::regclass);
 G   ALTER TABLE public.report_builder_format ALTER COLUMN id DROP DEFAULT;
       public       root    false    276    275            ?           2604    71768    report_builder_report id    DEFAULT     v   ALTER TABLE ONLY report_builder_report ALTER COLUMN id SET DEFAULT nextval('report_builder_report_id_seq'::regclass);
 G   ALTER TABLE public.report_builder_report ALTER COLUMN id DROP DEFAULT;
       public       root    false    278    277            ?           2604    71769     report_builder_report_starred id    DEFAULT     ?   ALTER TABLE ONLY report_builder_report_starred ALTER COLUMN id SET DEFAULT nextval('report_builder_report_starred_id_seq'::regclass);
 O   ALTER TABLE public.report_builder_report_starred ALTER COLUMN id DROP DEFAULT;
       public       root    false    280    279            ?          0    71349 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       root    false    202   ?      '           0    0    auth_group_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('auth_group_id_seq', 4, true);
            public       root    false    203            ?          0    71354    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       root    false    204   K?      (           0    0    auth_group_permissions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 126, true);
            public       root    false    205            ?          0    71359    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       root    false    206   %?      )           0    0    auth_permission_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_permission_id_seq', 168, true);
            public       root    false    207            ?          0    71364 	   auth_user 
   TABLE DATA               ?   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       root    false    208   ??      ?          0    71370    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       root    false    209   ??      *           0    0    auth_user_groups_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_user_groups_id_seq', 8, true);
            public       root    false    210            +           0    0    auth_user_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('auth_user_id_seq', 20, true);
            public       root    false    211            ?          0    71377    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       root    false    212   ??      ,           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       root    false    213            ?          0    71382    django_admin_log 
   TABLE DATA               ?   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       root    false    214   ??      -           0    0    django_admin_log_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('django_admin_log_id_seq', 4, true);
            public       root    false    215            ?          0    71391    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       root    false    216   n?      .           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 56, true);
            public       root    false    217            ?          0    71396    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       root    false    218   d?      /           0    0    django_migrations_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('django_migrations_id_seq', 138, true);
            public       root    false    219            ?          0    71404    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       root    false    220   ??      ?          0    71410    fir_accid_type 
   TABLE DATA               N   COPY fir_accid_type ("SNO", "TYPE", "CATEGORY", "CODE", "VICTIM") FROM stdin;
    public       root    false    221    ?      ?          0    71414    fir_area_type 
   TABLE DATA               ;   COPY fir_area_type ("Atype_Code", "Area_Type") FROM stdin;
    public       root    false    222   ??      ?          0    71417    fir_area_type2 
   TABLE DATA               >   COPY fir_area_type2 ("SAtype_Code", "SArea_Type") FROM stdin;
    public       root    false    223   ?      ?          0    71420    fir_area_type2_oth 
   TABLE DATA               D   COPY fir_area_type2_oth ("SOAtype_Code", "SOArea_Type") FROM stdin;
    public       root    false    224   A?      ?          0    71423 
   fir_causes 
   TABLE DATA               ?  COPY fir_causes (id, "CAUSE", "OTHER_DRIVER_FAULT", "DRUNK_FAULT", "OVER_SPEED_FAULT", "OTHER_VEC_MEH_FAULT", "OTHER_ROAD_ENV_FAULT", "OTHER_ROAD_ENGG_FAULT", "OTHER_VICTIM_FAULT", "OTHER_WEATHER_COND_FAULT", "OTHER_CAUSE", "REMARKS", "OTHER_REMARK", "DRIVER_FAULT_id", "REMEDIES_id", "ROAD_ENGG_FAULT_id", "ROAD_ENV_FAULT_id", "VEH_MECH_FAULT_id", "VICTIM_FAULT_id", "WEATHER_COND_id", "ACCID_ID_id", "OTHER_REMEDIES") FROM stdin;
    public       root    false    225   ??      0           0    0    fir_causes_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('fir_causes_id_seq', 1, false);
            public       root    false    226            ?          0    71431    fir_circles 
   TABLE DATA               ]   COPY fir_circles ("DISTNAM", "DIST", "CIRCLE", "CIRCLENAM", "RANGE", "RANGENAM") FROM stdin;
    public       root    false    227   	?      ?          0    71434    fir_collision 
   TABLE DATA               N   COPY fir_collision (id, "VIC_TYPE", "COL_TYPE_id", "ACCID_ID_id") FROM stdin;
    public       root    false    228   ??      1           0    0    fir_collision_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('fir_collision_id_seq', 1, true);
            public       root    false    229            ?          0    71439    fir_details 
   TABLE DATA                 COPY fir_details ("ACC_ID", "RNG", "CIRCLE_id", "DIST", "PS_id", "FIRNO", "OF_SECTION_id", "TIME_OCC", "DATE_OCC", "PLACE_OCC", "ROAD_id", "ROADNAME", "AREA_TYPE2_id", "ACC_PHOTO", "FIR_PHOTO", "AREA_TYPE_id", "ROAD_CHARACTER_id", "ROAD_CONDITION_id", "ROAD_LEVEL", "SEPERATION_id", "SURFACE_CONDITION_id", "SURFACE_TYPE_id", "GROUND_LEVEL", "JUNCTION_CONTROL", "MVA_NAME_id", "ROAD_TYPE_id", "ROAD_TYPE1", "ACC_SKETCH_PHOTO", "AREA", "AREA_TYPE_OTHER", "FIR_DATE", "MINORROADNAME", "ROAD_CHARACTER_REMARKS", "ROAD_CONDITION_REMARKS", "SURFACE_CONDITION_REMARKS", "TIME_KNOWN", "FLYOVER", "UNDERPASS", map_loc, "APZ", "APZ_TYPE", "ILLUMINATION", "ROAD_MARKING", "ROAD_SIGN", "YES_ILLUMINATION", "MOB_NUM", "NAME_IO", "PIS_NUM", "ACC_PHOTO1", "ACC_PHOTO2", "ACC_PHOTO3") FROM stdin;
    public       root    false    230   ?      ?          0    71446    fir_driver_fault 
   TABLE DATA               <   COPY fir_driver_fault ("DF_Code", "DF_Details") FROM stdin;
    public       root    false    231   ??      ?          0    71449    fir_edu_qual 
   TABLE DATA               9   COPY fir_edu_qual ("EDQF_Code", "EDQF_Name") FROM stdin;
    public       root    false    232   j?      ?          0    71452    fir_injured 
   TABLE DATA               g   COPY fir_injured (id, "PS", "FIRNO", "YEAR", "INJSEX", "INJAGE", "INJTYPE", "ACCID_ID_id") FROM stdin;
    public       root    false    233   ??      2           0    0    fir_injured_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('fir_injured_id_seq', 1, false);
            public       root    false    234            ?          0    71458 
   fir_killed 
   TABLE DATA               ]   COPY fir_killed (id, "PS", "FIRNO", "YEAR", "SEX", "AGE", "TYPE", "ACCID_ID_id") FROM stdin;
    public       root    false    235   
?      3           0    0    fir_killed_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('fir_killed_id_seq', 1, false);
            public       root    false    236            ?          0    71464    fir_location 
   TABLE DATA               :   COPY fir_location ("SNO", "TYPE", "CATEGORY") FROM stdin;
    public       root    false    237   '?      ?          0    71468    fir_mva_act 
   TABLE DATA               9   COPY fir_mva_act ("MVA_Section", "MVA_Name") FROM stdin;
    public       root    false    238   ?      ?          0    71471    fir_offender 
   TABLE DATA               ?  COPY fir_offender (id, "SUBVEHICLE_TYPE1", routeno1, rcno1, dri_name, dri_rel_name, dri_sex, dri_add, "OTHER_EDU_QUAL", "OTHER_WORK_STATUS", "DRI_DRUNK", dri_lic_no, dri_lic_from, dri_lic_date_issu, dri_lic_date_upto, "EDU_QUAL_id", "VEHICLE_LOADED_CONDITION1_id", "VEHTYPE1_id", "WORK_STATUS_id", "ACCID_ID_id", dri_relation, dri_lic, dri_lic_perm, dri_lic_yes, age_known, dri_age, dri_lic_not) FROM stdin;
    public       root    false    239   ??      4           0    0    fir_offender_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('fir_offender_id_seq', 7, true);
            public       root    false    240            ?          0    71480    fir_policestation 
   TABLE DATA               ?   COPY fir_policestation ("DISTNAM", "DIST", "CIRCLENAM", "RANGE", "RANGENAM", "PS", "PSNAME", "CIRCLE_PS", "CIRCLE_id") FROM stdin;
    public       root    false    241   u?      ?          0    71483    fir_profile 
   TABLE DATA               m   COPY fir_profile (id, name, emp_id, district_circle, range_circle, designation, circle, user_id) FROM stdin;
    public       root    false    242   \      5           0    0    fir_profile_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('fir_profile_id_seq', 16, true);
            public       root    false    243            ?          0    71488    fir_remedies 
   TABLE DATA               >   COPY fir_remedies ("Rem_Code", "Rem_Description") FROM stdin;
    public       root    false    244   Y      ?          0    71491    fir_road_character 
   TABLE DATA               ;   COPY fir_road_character ("RC_Code", "RC_Name") FROM stdin;
    public       root    false    245   ?      ?          0    71494    fir_road_condition 
   TABLE DATA               =   COPY fir_road_condition ("RCN_Code", "RCN_Name") FROM stdin;
    public       root    false    246   ?      ?          0    71497    fir_road_engg_fault 
   TABLE DATA               C   COPY fir_road_engg_fault ("RENF_Code", "RENF_Details") FROM stdin;
    public       root    false    247   n      ?          0    71500    fir_road_env_fault 
   TABLE DATA               @   COPY fir_road_env_fault ("REF_Code", "REF_Details") FROM stdin;
    public       root    false    248         ?          0    71503    fir_road_type 
   TABLE DATA               6   COPY fir_road_type ("RT_Code", "RT_Name") FROM stdin;
    public       root    false    249   ?      ?          0    71506    fir_road_type1 
   TABLE DATA               9   COPY fir_road_type1 ("SRT_Code", "SRT_Name") FROM stdin;
    public       root    false    250   	      ?          0    71509 	   fir_roads 
   TABLE DATA               x   COPY fir_roads ("RNG", "DIST", "ROADNAME", "ROAD", "PS", "PLACE_OCC", "NEW", "PSNAME", "NEW1", "CIRCLE_id") FROM stdin;
    public       root    false    251   p	      ?          0    71512    fir_sections 
   TABLE DATA               O   COPY fir_sections ("SECTION", "SECTIONDTL", "ACCTYPE", "ACCTYPEN") FROM stdin;
    public       root    false    252   ??      ?          0    71515    fir_self_type 
   TABLE DATA               7   COPY fir_self_type ("SNO", "CODE", "TYPE") FROM stdin;
    public       root    false    253   v@      ?          0    71518    fir_seperation 
   TABLE DATA               5   COPY fir_seperation ("S_Code", "S_Name") FROM stdin;
    public       root    false    254   ?A      ?          0    71521    fir_study_parameter 
   TABLE DATA               >   COPY fir_study_parameter ("SPM_Code", "SPM_Name") FROM stdin;
    public       root    false    255   B      ?          0    71524    fir_surface_condition 
   TABLE DATA               >   COPY fir_surface_condition ("SC_Code", "SC_Name") FROM stdin;
    public       root    false    256   uB      ?          0    71527    fir_surface_type 
   TABLE DATA               ;   COPY fir_surface_type ("SFT_Code", "SFT_Name") FROM stdin;
    public       root    false    257   ?B      ?          0    71530    fir_veh_mech_fault 
   TABLE DATA               @   COPY fir_veh_mech_fault ("VMF_Code", "VMF_Details") FROM stdin;
    public       root    false    258   C      ?          0    71533    fir_vehicle_loaded_condition 
   TABLE DATA               G   COPY fir_vehicle_loaded_condition ("VLC_Code", "VLC_Name") FROM stdin;
    public       root    false    259   ?C      ?          0    71536    fir_vehtype1 
   TABLE DATA               ?  COPY fir_vehtype1 ("VEHTYPE", "VEHDETL", "VEHDTL", "SIMPLE", "NONINJ", "FATAL", "PERINJ", "PERKIL", "PEDESTRIAN", "CARI", "CARK", "DTCI", "DTCK", "BLBI", "BLBK", "BUSI", "BUSK", "OSBI", "OSBK", "MBSI", "MBSK", "TAXI", "TAXK", "TSRK", "TSRI", "TWWI", "TWWK", "MILI", "MILK", "DLVI", "DLVK", "TRCI", "TRCK", "POVI", "POVK", "AMBI", "AMBK", "STRI", "STRK", "TMPI", "TMPK", "MATI", "MATK", "TNKI", "TNKK", "UNKI", "UNKK", "CYCI", "CYCK", "TNGI", "TNGK", "CYRI", "CYRK", "HDCI", "HDCK", "BULI", "BULK", "ANII", "ANIK", "CRNI", "CRNK", "UDTI", "UDTK", "PEDI", "PEDK", "HTVI", "HTVK", "SLFI", "SLFK", "ELTI", "ELTK", "WLLI", "WLLK", "PASI", "PASK") FROM stdin;
    public       root    false    260   ?C      ?          0    71611    fir_vehtype2 
   TABLE DATA               ?  COPY fir_vehtype2 ("VEHTYPE", "VEHDETL", "VEHDTL", "SIMPLE", "NONINJ", "FATAL", "PERINJ", "PERKIL", "PEDESTRIAN", "CARI", "CARK", "DTCI", "DTCK", "BLBI", "BLBK", "BUSI", "BUSK", "OSBI", "OSBK", "MBSI", "MBSK", "TAXI", "TAXK", "TSRI", "TSRK", "TWWI", "TWWK", "MILI", "MILK", "DLVI", "DLVK", "TRCI", "TRCK", "POVI", "POVK", "AMBI", "AMBK", "STRI", "STRK", "TMPI", "TMPK", "CYCI", "CYRI", "CYRK", "HDCI", "HDCK", "BULI", "BULK", "ANII", "ANIK", "CRNI", "CRNK", "UDTI", "UDTK", "PEDI", "PEDK", "HTVI", "HTVK", "SLFI", "SLFK", "ELTI", "ELTK", "WLLI", "WLLK", "PASI", "PASK", "CYCK", "MATI", "MATK", "TNGI", "TNGK", "TNKI", "TNKK", "UNKI", "UNKK") FROM stdin;
    public       root    false    261   bH      ?          0    71686    fir_victim_fault 
   TABLE DATA               <   COPY fir_victim_fault ("VF_Code", "VF_Details") FROM stdin;
    public       root    false    262   vM      ?          0    71689    fir_victim_person 
   TABLE DATA               ,  COPY fir_victim_person (id, "INJKIL", "VICSEX", "VICAGE", "PER_STAT_TYPE", "OFFEND", "VEH_INFO", "VIC_SEAT_BELT", "VIC_HELMET", "HELMET_STANDARD", "VIC_OTHER_EDU_QUAL", "VIC_OTHER_WORK_STATUS", "VIC_DRI_DRUNK", "ACCID_ID_id", "PER_STAT_TYPE2_id", "VIC_EDU_QUAL_id", "VIC_WORK_STATUS_id") FROM stdin;
    public       root    false    263   -N      6           0    0    fir_victim_person_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('fir_victim_person_id_seq', 6, true);
            public       root    false    264            ?          0    71695    fir_victim_person_status 
   TABLE DATA               C   COPY fir_victim_person_status ("Victim_Person_Status") FROM stdin;
    public       root    false    265   ?N      ?          0    71698    fir_victim_person_status1 
   TABLE DATA               E   COPY fir_victim_person_status1 ("Victim_Person_Status1") FROM stdin;
    public       root    false    266   ?N      ?          0    71701    fir_victim_vehicle 
   TABLE DATA               ?   COPY fir_victim_vehicle (id, "SUBVEHICLE_TYPE2", routeno2, rgno2, "VEHICLE_LOADED_CONDITION2_id", "VEHTYPE2_id", "ACCID_ID_id") FROM stdin;
    public       root    false    267   7O      7           0    0    fir_victim_vehicle_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('fir_victim_vehicle_id_seq', 8, true);
            public       root    false    268            ?          0    71706    fir_weather_cond 
   TABLE DATA               <   COPY fir_weather_cond ("WC_Code", "WC_Details") FROM stdin;
    public       root    false    269   ?O      ?          0    71709    fir_work_status 
   TABLE DATA               8   COPY fir_work_status ("WS_Code", "WS_Name") FROM stdin;
    public       root    false    270   ?O      ?          0    71712    report_builder_displayfield 
   TABLE DATA               ?   COPY report_builder_displayfield (id, path, path_verbose, field, field_verbose, name, sort, sort_reverse, width, aggregate, "position", total, "group", display_format_id, report_id) FROM stdin;
    public       root    false    271   {P      8           0    0 "   report_builder_displayfield_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('report_builder_displayfield_id_seq', 37, true);
            public       root    false    272                       0    71721    report_builder_filterfield 
   TABLE DATA               ?   COPY report_builder_filterfield (id, path, path_verbose, field, field_verbose, filter_type, filter_value, filter_value2, exclude, "position", report_id) FROM stdin;
    public       root    false    273   ?Q      9           0    0 !   report_builder_filterfield_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('report_builder_filterfield_id_seq', 7, true);
            public       root    false    274                      0    71730    report_builder_format 
   TABLE DATA               :   COPY report_builder_format (id, name, string) FROM stdin;
    public       root    false    275   ?R      :           0    0    report_builder_format_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('report_builder_format_id_seq', 1, false);
            public       root    false    276                      0    71735    report_builder_report 
   TABLE DATA               ?   COPY report_builder_report (id, name, slug, description, created, modified, "distinct", report_file, report_file_creation, root_model_id, user_created_id, user_modified_id) FROM stdin;
    public       root    false    277   ?R      ;           0    0    report_builder_report_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('report_builder_report_id_seq', 4, true);
            public       root    false    278                      0    71743    report_builder_report_starred 
   TABLE DATA               H   COPY report_builder_report_starred (id, report_id, user_id) FROM stdin;
    public       root    false    279   S      <           0    0 $   report_builder_report_starred_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('report_builder_report_starred_id_seq', 1, false);
            public       root    false    280            H          0    70173    spatial_ref_sys 
   TABLE DATA               Q   COPY spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public       postgres    false    188   .S      ?           2606    71771    auth_group auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         root    false    202    202                       2606    71773 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         root    false    204    204    204                       2606    71775 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         root    false    204    204            ?           2606    71777    auth_group auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         root    false    202    202                       2606    71779 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         root    false    206    206    206            	           2606    71781 $   auth_permission auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         root    false    206    206                       2606    71783 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         root    false    209    209                       2606    71785 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         root    false    209    209    209                       2606    71787    auth_user auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         root    false    208    208                       2606    71789 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         root    false    212    212                       2606    71791 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         root    false    212    212    212                       2606    71793     auth_user auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         root    false    208    208                       2606    71795 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         root    false    214    214                        2606    71797 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         root    false    216    216    216            "           2606    71799 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         root    false    216    216            $           2606    71801 (   django_migrations django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         root    false    218    218            '           2606    71803 "   django_session django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         root    false    220    220            *           2606    71805 "   fir_accid_type fir_accid_type_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY fir_accid_type
    ADD CONSTRAINT fir_accid_type_pkey PRIMARY KEY ("SNO");
 L   ALTER TABLE ONLY public.fir_accid_type DROP CONSTRAINT fir_accid_type_pkey;
       public         root    false    221    221            3           2606    71807 *   fir_area_type2_oth fir_area_type2_oth_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY fir_area_type2_oth
    ADD CONSTRAINT fir_area_type2_oth_pkey PRIMARY KEY ("SOAtype_Code");
 T   ALTER TABLE ONLY public.fir_area_type2_oth DROP CONSTRAINT fir_area_type2_oth_pkey;
       public         root    false    224    224            0           2606    71809 "   fir_area_type2 fir_area_type2_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY fir_area_type2
    ADD CONSTRAINT fir_area_type2_pkey PRIMARY KEY ("SAtype_Code");
 L   ALTER TABLE ONLY public.fir_area_type2 DROP CONSTRAINT fir_area_type2_pkey;
       public         root    false    223    223            -           2606    71811     fir_area_type fir_area_type_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY fir_area_type
    ADD CONSTRAINT fir_area_type_pkey PRIMARY KEY ("Atype_Code");
 J   ALTER TABLE ONLY public.fir_area_type DROP CONSTRAINT fir_area_type_pkey;
       public         root    false    222    222            E           2606    71813    fir_causes fir_causes_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY fir_causes
    ADD CONSTRAINT fir_causes_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.fir_causes DROP CONSTRAINT fir_causes_pkey;
       public         root    false    225    225            H           2606    71815    fir_circles fir_circles_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY fir_circles
    ADD CONSTRAINT fir_circles_pkey PRIMARY KEY ("CIRCLE");
 F   ALTER TABLE ONLY public.fir_circles DROP CONSTRAINT fir_circles_pkey;
       public         root    false    227    227            M           2606    71817     fir_collision fir_collision_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY fir_collision
    ADD CONSTRAINT fir_collision_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.fir_collision DROP CONSTRAINT fir_collision_pkey;
       public         root    false    228    228            h           2606    71819    fir_details fir_details_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT fir_details_pkey PRIMARY KEY ("ACC_ID");
 F   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT fir_details_pkey;
       public         root    false    230    230            k           2606    71821 &   fir_driver_fault fir_driver_fault_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY fir_driver_fault
    ADD CONSTRAINT fir_driver_fault_pkey PRIMARY KEY ("DF_Code");
 P   ALTER TABLE ONLY public.fir_driver_fault DROP CONSTRAINT fir_driver_fault_pkey;
       public         root    false    231    231            n           2606    71823    fir_edu_qual fir_edu_qual_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY fir_edu_qual
    ADD CONSTRAINT fir_edu_qual_pkey PRIMARY KEY ("EDQF_Code");
 H   ALTER TABLE ONLY public.fir_edu_qual DROP CONSTRAINT fir_edu_qual_pkey;
       public         root    false    232    232            r           2606    71825    fir_injured fir_injured_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY fir_injured
    ADD CONSTRAINT fir_injured_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.fir_injured DROP CONSTRAINT fir_injured_pkey;
       public         root    false    233    233            v           2606    71827    fir_killed fir_killed_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY fir_killed
    ADD CONSTRAINT fir_killed_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.fir_killed DROP CONSTRAINT fir_killed_pkey;
       public         root    false    235    235            x           2606    71829    fir_location fir_location_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY fir_location
    ADD CONSTRAINT fir_location_pkey PRIMARY KEY ("SNO");
 H   ALTER TABLE ONLY public.fir_location DROP CONSTRAINT fir_location_pkey;
       public         root    false    237    237            {           2606    71831    fir_mva_act fir_mva_act_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY fir_mva_act
    ADD CONSTRAINT fir_mva_act_pkey PRIMARY KEY ("MVA_Section");
 F   ALTER TABLE ONLY public.fir_mva_act DROP CONSTRAINT fir_mva_act_pkey;
       public         root    false    238    238            ?           2606    71833    fir_offender fir_offender_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY fir_offender
    ADD CONSTRAINT fir_offender_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.fir_offender DROP CONSTRAINT fir_offender_pkey;
       public         root    false    239    239            ?           2606    71835 (   fir_policestation fir_policestation_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY fir_policestation
    ADD CONSTRAINT fir_policestation_pkey PRIMARY KEY ("CIRCLE_PS");
 R   ALTER TABLE ONLY public.fir_policestation DROP CONSTRAINT fir_policestation_pkey;
       public         root    false    241    241            ?           2606    71837    fir_profile fir_profile_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY fir_profile
    ADD CONSTRAINT fir_profile_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.fir_profile DROP CONSTRAINT fir_profile_pkey;
       public         root    false    242    242            ?           2606    71839 #   fir_profile fir_profile_user_id_key 
   CONSTRAINT     Z   ALTER TABLE ONLY fir_profile
    ADD CONSTRAINT fir_profile_user_id_key UNIQUE (user_id);
 M   ALTER TABLE ONLY public.fir_profile DROP CONSTRAINT fir_profile_user_id_key;
       public         root    false    242    242            ?           2606    71841    fir_remedies fir_remedies_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY fir_remedies
    ADD CONSTRAINT fir_remedies_pkey PRIMARY KEY ("Rem_Code");
 H   ALTER TABLE ONLY public.fir_remedies DROP CONSTRAINT fir_remedies_pkey;
       public         root    false    244    244            ?           2606    71843 *   fir_road_character fir_road_character_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY fir_road_character
    ADD CONSTRAINT fir_road_character_pkey PRIMARY KEY ("RC_Code");
 T   ALTER TABLE ONLY public.fir_road_character DROP CONSTRAINT fir_road_character_pkey;
       public         root    false    245    245            ?           2606    71845 *   fir_road_condition fir_road_condition_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY fir_road_condition
    ADD CONSTRAINT fir_road_condition_pkey PRIMARY KEY ("RCN_Code");
 T   ALTER TABLE ONLY public.fir_road_condition DROP CONSTRAINT fir_road_condition_pkey;
       public         root    false    246    246            ?           2606    71847 ,   fir_road_engg_fault fir_road_engg_fault_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY fir_road_engg_fault
    ADD CONSTRAINT fir_road_engg_fault_pkey PRIMARY KEY ("RENF_Code");
 V   ALTER TABLE ONLY public.fir_road_engg_fault DROP CONSTRAINT fir_road_engg_fault_pkey;
       public         root    false    247    247            ?           2606    71849 *   fir_road_env_fault fir_road_env_fault_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY fir_road_env_fault
    ADD CONSTRAINT fir_road_env_fault_pkey PRIMARY KEY ("REF_Code");
 T   ALTER TABLE ONLY public.fir_road_env_fault DROP CONSTRAINT fir_road_env_fault_pkey;
       public         root    false    248    248            ?           2606    71851 "   fir_road_type1 fir_road_type1_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY fir_road_type1
    ADD CONSTRAINT fir_road_type1_pkey PRIMARY KEY ("SRT_Code");
 L   ALTER TABLE ONLY public.fir_road_type1 DROP CONSTRAINT fir_road_type1_pkey;
       public         root    false    250    250            ?           2606    71853     fir_road_type fir_road_type_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY fir_road_type
    ADD CONSTRAINT fir_road_type_pkey PRIMARY KEY ("RT_Code");
 J   ALTER TABLE ONLY public.fir_road_type DROP CONSTRAINT fir_road_type_pkey;
       public         root    false    249    249            ?           2606    71855 #   fir_roads fir_roads_NEW_226dfa92_pk 
   CONSTRAINT     _   ALTER TABLE ONLY fir_roads
    ADD CONSTRAINT "fir_roads_NEW_226dfa92_pk" PRIMARY KEY ("NEW");
 O   ALTER TABLE ONLY public.fir_roads DROP CONSTRAINT "fir_roads_NEW_226dfa92_pk";
       public         root    false    251    251            ?           2606    71857 %   fir_roads fir_roads_NEW_226dfa92_uniq 
   CONSTRAINT     \   ALTER TABLE ONLY fir_roads
    ADD CONSTRAINT "fir_roads_NEW_226dfa92_uniq" UNIQUE ("NEW");
 Q   ALTER TABLE ONLY public.fir_roads DROP CONSTRAINT "fir_roads_NEW_226dfa92_uniq";
       public         root    false    251    251            ?           2606    71859    fir_sections fir_sections_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY fir_sections
    ADD CONSTRAINT fir_sections_pkey PRIMARY KEY ("SECTION");
 H   ALTER TABLE ONLY public.fir_sections DROP CONSTRAINT fir_sections_pkey;
       public         root    false    252    252            ?           2606    71861 +   fir_self_type fir_self_type_SNO_4b299614_pk 
   CONSTRAINT     g   ALTER TABLE ONLY fir_self_type
    ADD CONSTRAINT "fir_self_type_SNO_4b299614_pk" PRIMARY KEY ("SNO");
 W   ALTER TABLE ONLY public.fir_self_type DROP CONSTRAINT "fir_self_type_SNO_4b299614_pk";
       public         root    false    253    253            ?           2606    71863 -   fir_self_type fir_self_type_SNO_4b299614_uniq 
   CONSTRAINT     d   ALTER TABLE ONLY fir_self_type
    ADD CONSTRAINT "fir_self_type_SNO_4b299614_uniq" UNIQUE ("SNO");
 Y   ALTER TABLE ONLY public.fir_self_type DROP CONSTRAINT "fir_self_type_SNO_4b299614_uniq";
       public         root    false    253    253            ?           2606    71865 "   fir_seperation fir_seperation_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY fir_seperation
    ADD CONSTRAINT fir_seperation_pkey PRIMARY KEY ("S_Code");
 L   ALTER TABLE ONLY public.fir_seperation DROP CONSTRAINT fir_seperation_pkey;
       public         root    false    254    254            ?           2606    71867 ,   fir_study_parameter fir_study_parameter_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY fir_study_parameter
    ADD CONSTRAINT fir_study_parameter_pkey PRIMARY KEY ("SPM_Code");
 V   ALTER TABLE ONLY public.fir_study_parameter DROP CONSTRAINT fir_study_parameter_pkey;
       public         root    false    255    255            ?           2606    71869 0   fir_surface_condition fir_surface_condition_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY fir_surface_condition
    ADD CONSTRAINT fir_surface_condition_pkey PRIMARY KEY ("SC_Code");
 Z   ALTER TABLE ONLY public.fir_surface_condition DROP CONSTRAINT fir_surface_condition_pkey;
       public         root    false    256    256            ?           2606    71871 &   fir_surface_type fir_surface_type_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY fir_surface_type
    ADD CONSTRAINT fir_surface_type_pkey PRIMARY KEY ("SFT_Code");
 P   ALTER TABLE ONLY public.fir_surface_type DROP CONSTRAINT fir_surface_type_pkey;
       public         root    false    257    257            ?           2606    71873 *   fir_veh_mech_fault fir_veh_mech_fault_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY fir_veh_mech_fault
    ADD CONSTRAINT fir_veh_mech_fault_pkey PRIMARY KEY ("VMF_Code");
 T   ALTER TABLE ONLY public.fir_veh_mech_fault DROP CONSTRAINT fir_veh_mech_fault_pkey;
       public         root    false    258    258            ?           2606    71875 >   fir_vehicle_loaded_condition fir_vehicle_loaded_condition_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY fir_vehicle_loaded_condition
    ADD CONSTRAINT fir_vehicle_loaded_condition_pkey PRIMARY KEY ("VLC_Code");
 h   ALTER TABLE ONLY public.fir_vehicle_loaded_condition DROP CONSTRAINT fir_vehicle_loaded_condition_pkey;
       public         root    false    259    259            ?           2606    71877 -   fir_vehtype1 fir_vehtype1_VEHTYPE_3b51b3a3_pk 
   CONSTRAINT     m   ALTER TABLE ONLY fir_vehtype1
    ADD CONSTRAINT "fir_vehtype1_VEHTYPE_3b51b3a3_pk" PRIMARY KEY ("VEHTYPE");
 Y   ALTER TABLE ONLY public.fir_vehtype1 DROP CONSTRAINT "fir_vehtype1_VEHTYPE_3b51b3a3_pk";
       public         root    false    260    260            ?           2606    71879 /   fir_vehtype1 fir_vehtype1_VEHTYPE_3b51b3a3_uniq 
   CONSTRAINT     j   ALTER TABLE ONLY fir_vehtype1
    ADD CONSTRAINT "fir_vehtype1_VEHTYPE_3b51b3a3_uniq" UNIQUE ("VEHTYPE");
 [   ALTER TABLE ONLY public.fir_vehtype1 DROP CONSTRAINT "fir_vehtype1_VEHTYPE_3b51b3a3_uniq";
       public         root    false    260    260            ?           2606    71881    fir_vehtype2 fir_vehtype2_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY fir_vehtype2
    ADD CONSTRAINT fir_vehtype2_pkey PRIMARY KEY ("VEHTYPE");
 H   ALTER TABLE ONLY public.fir_vehtype2 DROP CONSTRAINT fir_vehtype2_pkey;
       public         root    false    261    261            ?           2606    71883 &   fir_victim_fault fir_victim_fault_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY fir_victim_fault
    ADD CONSTRAINT fir_victim_fault_pkey PRIMARY KEY ("VF_Code");
 P   ALTER TABLE ONLY public.fir_victim_fault DROP CONSTRAINT fir_victim_fault_pkey;
       public         root    false    262    262            ?           2606    71885 (   fir_victim_person fir_victim_person_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY fir_victim_person
    ADD CONSTRAINT fir_victim_person_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.fir_victim_person DROP CONSTRAINT fir_victim_person_pkey;
       public         root    false    263    263            ?           2606    71887 8   fir_victim_person_status1 fir_victim_person_status1_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY fir_victim_person_status1
    ADD CONSTRAINT fir_victim_person_status1_pkey PRIMARY KEY ("Victim_Person_Status1");
 b   ALTER TABLE ONLY public.fir_victim_person_status1 DROP CONSTRAINT fir_victim_person_status1_pkey;
       public         root    false    266    266            ?           2606    71889 6   fir_victim_person_status fir_victim_person_status_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY fir_victim_person_status
    ADD CONSTRAINT fir_victim_person_status_pkey PRIMARY KEY ("Victim_Person_Status");
 `   ALTER TABLE ONLY public.fir_victim_person_status DROP CONSTRAINT fir_victim_person_status_pkey;
       public         root    false    265    265            ?           2606    71891 *   fir_victim_vehicle fir_victim_vehicle_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY fir_victim_vehicle
    ADD CONSTRAINT fir_victim_vehicle_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.fir_victim_vehicle DROP CONSTRAINT fir_victim_vehicle_pkey;
       public         root    false    267    267            ?           2606    71893 &   fir_weather_cond fir_weather_cond_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY fir_weather_cond
    ADD CONSTRAINT fir_weather_cond_pkey PRIMARY KEY ("WC_Code");
 P   ALTER TABLE ONLY public.fir_weather_cond DROP CONSTRAINT fir_weather_cond_pkey;
       public         root    false    269    269            ?           2606    71895 $   fir_work_status fir_work_status_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY fir_work_status
    ADD CONSTRAINT fir_work_status_pkey PRIMARY KEY ("WS_Code");
 N   ALTER TABLE ONLY public.fir_work_status DROP CONSTRAINT fir_work_status_pkey;
       public         root    false    270    270            ?           2606    71897 <   report_builder_displayfield report_builder_displayfield_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY report_builder_displayfield
    ADD CONSTRAINT report_builder_displayfield_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.report_builder_displayfield DROP CONSTRAINT report_builder_displayfield_pkey;
       public         root    false    271    271            ?           2606    71899 :   report_builder_filterfield report_builder_filterfield_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY report_builder_filterfield
    ADD CONSTRAINT report_builder_filterfield_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.report_builder_filterfield DROP CONSTRAINT report_builder_filterfield_pkey;
       public         root    false    273    273            ?           2606    71901 0   report_builder_format report_builder_format_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY report_builder_format
    ADD CONSTRAINT report_builder_format_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.report_builder_format DROP CONSTRAINT report_builder_format_pkey;
       public         root    false    275    275            ?           2606    71903 0   report_builder_report report_builder_report_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY report_builder_report
    ADD CONSTRAINT report_builder_report_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.report_builder_report DROP CONSTRAINT report_builder_report_pkey;
       public         root    false    277    277                        2606    71905 @   report_builder_report_starred report_builder_report_starred_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY report_builder_report_starred
    ADD CONSTRAINT report_builder_report_starred_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.report_builder_report_starred DROP CONSTRAINT report_builder_report_starred_pkey;
       public         root    false    279    279                       2606    71907 [   report_builder_report_starred report_builder_report_starred_report_id_user_id_8e38d9bd_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY report_builder_report_starred
    ADD CONSTRAINT report_builder_report_starred_report_id_user_id_8e38d9bd_uniq UNIQUE (report_id, user_id);
 ?   ALTER TABLE ONLY public.report_builder_report_starred DROP CONSTRAINT report_builder_report_starred_report_id_user_id_8e38d9bd_uniq;
       public         root    false    279    279    279            ?           1259    71908    auth_group_name_a6ea08ec_like    INDEX     a   CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         root    false    202            ?           1259    71909 (   auth_group_permissions_group_id_b120cbf9    INDEX     h   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         root    false    204                       1259    71910 -   auth_group_permissions_permission_id_84c5c92e    INDEX     r   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         root    false    204                       1259    71911 (   auth_permission_content_type_id_2f476e4b    INDEX     h   CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         root    false    206                       1259    71912 "   auth_user_groups_group_id_97559544    INDEX     \   CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         root    false    209                       1259    71913 !   auth_user_groups_user_id_6a12ed8b    INDEX     Z   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         root    false    209                       1259    71914 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     z   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         root    false    212                       1259    71915 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     n   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         root    false    212                       1259    71916     auth_user_username_6821ab7c_like    INDEX     g   CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         root    false    208                       1259    71917 )   django_admin_log_content_type_id_c4bce8eb    INDEX     j   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         root    false    214                       1259    71918 !   django_admin_log_user_id_c564eba6    INDEX     Z   CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         root    false    214            %           1259    71919 #   django_session_expire_date_a5c62663    INDEX     ^   CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         root    false    220            (           1259    71920 (   django_session_session_key_c0390e0f_like    INDEX     w   CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         root    false    220            .           1259    71921 (   fir_area_type2_SAtype_Code_707153be_like    INDEX     {   CREATE INDEX "fir_area_type2_SAtype_Code_707153be_like" ON fir_area_type2 USING btree ("SAtype_Code" varchar_pattern_ops);
 >   DROP INDEX public."fir_area_type2_SAtype_Code_707153be_like";
       public         root    false    223            1           1259    71922 -   fir_area_type2_oth_SOAtype_Code_850ace2d_like    INDEX     ?   CREATE INDEX "fir_area_type2_oth_SOAtype_Code_850ace2d_like" ON fir_area_type2_oth USING btree ("SOAtype_Code" varchar_pattern_ops);
 C   DROP INDEX public."fir_area_type2_oth_SOAtype_Code_850ace2d_like";
       public         root    false    224            +           1259    71923 &   fir_area_type_Atype_Code_92d98a50_like    INDEX     w   CREATE INDEX "fir_area_type_Atype_Code_92d98a50_like" ON fir_area_type USING btree ("Atype_Code" varchar_pattern_ops);
 <   DROP INDEX public."fir_area_type_Atype_Code_92d98a50_like";
       public         root    false    222            4           1259    71924    fir_causes_ACCID_ID_id_e1e13913    INDEX     Z   CREATE INDEX "fir_causes_ACCID_ID_id_e1e13913" ON fir_causes USING btree ("ACCID_ID_id");
 5   DROP INDEX public."fir_causes_ACCID_ID_id_e1e13913";
       public         root    false    225            5           1259    71925 $   fir_causes_ACCID_ID_id_e1e13913_like    INDEX     s   CREATE INDEX "fir_causes_ACCID_ID_id_e1e13913_like" ON fir_causes USING btree ("ACCID_ID_id" varchar_pattern_ops);
 :   DROP INDEX public."fir_causes_ACCID_ID_id_e1e13913_like";
       public         root    false    225            6           1259    71926 #   fir_causes_DRIVER_FAULT_id_bfa825b5    INDEX     b   CREATE INDEX "fir_causes_DRIVER_FAULT_id_bfa825b5" ON fir_causes USING btree ("DRIVER_FAULT_id");
 9   DROP INDEX public."fir_causes_DRIVER_FAULT_id_bfa825b5";
       public         root    false    225            7           1259    71927 (   fir_causes_DRIVER_FAULT_id_bfa825b5_like    INDEX     {   CREATE INDEX "fir_causes_DRIVER_FAULT_id_bfa825b5_like" ON fir_causes USING btree ("DRIVER_FAULT_id" varchar_pattern_ops);
 >   DROP INDEX public."fir_causes_DRIVER_FAULT_id_bfa825b5_like";
       public         root    false    225            8           1259    71928    fir_causes_REMEDIES_id_34859c22    INDEX     Z   CREATE INDEX "fir_causes_REMEDIES_id_34859c22" ON fir_causes USING btree ("REMEDIES_id");
 5   DROP INDEX public."fir_causes_REMEDIES_id_34859c22";
       public         root    false    225            9           1259    71929 $   fir_causes_REMEDIES_id_34859c22_like    INDEX     s   CREATE INDEX "fir_causes_REMEDIES_id_34859c22_like" ON fir_causes USING btree ("REMEDIES_id" varchar_pattern_ops);
 :   DROP INDEX public."fir_causes_REMEDIES_id_34859c22_like";
       public         root    false    225            :           1259    71930 &   fir_causes_ROAD_ENGG_FAULT_id_3950e7d1    INDEX     h   CREATE INDEX "fir_causes_ROAD_ENGG_FAULT_id_3950e7d1" ON fir_causes USING btree ("ROAD_ENGG_FAULT_id");
 <   DROP INDEX public."fir_causes_ROAD_ENGG_FAULT_id_3950e7d1";
       public         root    false    225            ;           1259    71931 +   fir_causes_ROAD_ENGG_FAULT_id_3950e7d1_like    INDEX     ?   CREATE INDEX "fir_causes_ROAD_ENGG_FAULT_id_3950e7d1_like" ON fir_causes USING btree ("ROAD_ENGG_FAULT_id" varchar_pattern_ops);
 A   DROP INDEX public."fir_causes_ROAD_ENGG_FAULT_id_3950e7d1_like";
       public         root    false    225            <           1259    71932 %   fir_causes_ROAD_ENV_FAULT_id_2f6c14df    INDEX     f   CREATE INDEX "fir_causes_ROAD_ENV_FAULT_id_2f6c14df" ON fir_causes USING btree ("ROAD_ENV_FAULT_id");
 ;   DROP INDEX public."fir_causes_ROAD_ENV_FAULT_id_2f6c14df";
       public         root    false    225            =           1259    71933 *   fir_causes_ROAD_ENV_FAULT_id_2f6c14df_like    INDEX        CREATE INDEX "fir_causes_ROAD_ENV_FAULT_id_2f6c14df_like" ON fir_causes USING btree ("ROAD_ENV_FAULT_id" varchar_pattern_ops);
 @   DROP INDEX public."fir_causes_ROAD_ENV_FAULT_id_2f6c14df_like";
       public         root    false    225            >           1259    71934 %   fir_causes_VEH_MECH_FAULT_id_26a714f3    INDEX     f   CREATE INDEX "fir_causes_VEH_MECH_FAULT_id_26a714f3" ON fir_causes USING btree ("VEH_MECH_FAULT_id");
 ;   DROP INDEX public."fir_causes_VEH_MECH_FAULT_id_26a714f3";
       public         root    false    225            ?           1259    71935 *   fir_causes_VEH_MECH_FAULT_id_26a714f3_like    INDEX        CREATE INDEX "fir_causes_VEH_MECH_FAULT_id_26a714f3_like" ON fir_causes USING btree ("VEH_MECH_FAULT_id" varchar_pattern_ops);
 @   DROP INDEX public."fir_causes_VEH_MECH_FAULT_id_26a714f3_like";
       public         root    false    225            @           1259    71936 #   fir_causes_VICTIM_FAULT_id_05a93c95    INDEX     b   CREATE INDEX "fir_causes_VICTIM_FAULT_id_05a93c95" ON fir_causes USING btree ("VICTIM_FAULT_id");
 9   DROP INDEX public."fir_causes_VICTIM_FAULT_id_05a93c95";
       public         root    false    225            A           1259    71937 (   fir_causes_VICTIM_FAULT_id_05a93c95_like    INDEX     {   CREATE INDEX "fir_causes_VICTIM_FAULT_id_05a93c95_like" ON fir_causes USING btree ("VICTIM_FAULT_id" varchar_pattern_ops);
 >   DROP INDEX public."fir_causes_VICTIM_FAULT_id_05a93c95_like";
       public         root    false    225            B           1259    71938 #   fir_causes_WEATHER_COND_id_f88175aa    INDEX     b   CREATE INDEX "fir_causes_WEATHER_COND_id_f88175aa" ON fir_causes USING btree ("WEATHER_COND_id");
 9   DROP INDEX public."fir_causes_WEATHER_COND_id_f88175aa";
       public         root    false    225            C           1259    71939 (   fir_causes_WEATHER_COND_id_f88175aa_like    INDEX     {   CREATE INDEX "fir_causes_WEATHER_COND_id_f88175aa_like" ON fir_causes USING btree ("WEATHER_COND_id" varchar_pattern_ops);
 >   DROP INDEX public."fir_causes_WEATHER_COND_id_f88175aa_like";
       public         root    false    225            F           1259    71940     fir_circles_CIRCLE_2d898636_like    INDEX     k   CREATE INDEX "fir_circles_CIRCLE_2d898636_like" ON fir_circles USING btree ("CIRCLE" varchar_pattern_ops);
 6   DROP INDEX public."fir_circles_CIRCLE_2d898636_like";
       public         root    false    227            I           1259    71941 "   fir_collision_ACCID_ID_id_e5a32b91    INDEX     `   CREATE INDEX "fir_collision_ACCID_ID_id_e5a32b91" ON fir_collision USING btree ("ACCID_ID_id");
 8   DROP INDEX public."fir_collision_ACCID_ID_id_e5a32b91";
       public         root    false    228            J           1259    71942 '   fir_collision_ACCID_ID_id_e5a32b91_like    INDEX     y   CREATE INDEX "fir_collision_ACCID_ID_id_e5a32b91_like" ON fir_collision USING btree ("ACCID_ID_id" varchar_pattern_ops);
 =   DROP INDEX public."fir_collision_ACCID_ID_id_e5a32b91_like";
       public         root    false    228            K           1259    71943 "   fir_collision_COL_TYPE_id_023026a6    INDEX     `   CREATE INDEX "fir_collision_COL_TYPE_id_023026a6" ON fir_collision USING btree ("COL_TYPE_id");
 8   DROP INDEX public."fir_collision_COL_TYPE_id_023026a6";
       public         root    false    228            N           1259    71944     fir_details_ACC_ID_89c435b5_like    INDEX     k   CREATE INDEX "fir_details_ACC_ID_89c435b5_like" ON fir_details USING btree ("ACC_ID" varchar_pattern_ops);
 6   DROP INDEX public."fir_details_ACC_ID_89c435b5_like";
       public         root    false    230            O           1259    71945 !   fir_details_AREA_TYPE_id_f95ef727    INDEX     ^   CREATE INDEX "fir_details_AREA_TYPE_id_f95ef727" ON fir_details USING btree ("AREA_TYPE_id");
 7   DROP INDEX public."fir_details_AREA_TYPE_id_f95ef727";
       public         root    false    230            P           1259    71946 &   fir_details_AREA_TYPE_id_f95ef727_like    INDEX     w   CREATE INDEX "fir_details_AREA_TYPE_id_f95ef727_like" ON fir_details USING btree ("AREA_TYPE_id" varchar_pattern_ops);
 <   DROP INDEX public."fir_details_AREA_TYPE_id_f95ef727_like";
       public         root    false    230            Q           1259    71947    fir_details_CIRCLE_id_3040535b    INDEX     X   CREATE INDEX "fir_details_CIRCLE_id_3040535b" ON fir_details USING btree ("CIRCLE_id");
 4   DROP INDEX public."fir_details_CIRCLE_id_3040535b";
       public         root    false    230            R           1259    71948 #   fir_details_CIRCLE_id_3040535b_like    INDEX     q   CREATE INDEX "fir_details_CIRCLE_id_3040535b_like" ON fir_details USING btree ("CIRCLE_id" varchar_pattern_ops);
 9   DROP INDEX public."fir_details_CIRCLE_id_3040535b_like";
       public         root    false    230            S           1259    71949     fir_details_LOCATION_id_21a22dd3    INDEX     ^   CREATE INDEX "fir_details_LOCATION_id_21a22dd3" ON fir_details USING btree ("AREA_TYPE2_id");
 6   DROP INDEX public."fir_details_LOCATION_id_21a22dd3";
       public         root    false    230            T           1259    71950     fir_details_MVA_NAME_id_5ecc2653    INDEX     \   CREATE INDEX "fir_details_MVA_NAME_id_5ecc2653" ON fir_details USING btree ("MVA_NAME_id");
 6   DROP INDEX public."fir_details_MVA_NAME_id_5ecc2653";
       public         root    false    230            U           1259    71951 %   fir_details_MVA_NAME_id_5ecc2653_like    INDEX     u   CREATE INDEX "fir_details_MVA_NAME_id_5ecc2653_like" ON fir_details USING btree ("MVA_NAME_id" varchar_pattern_ops);
 ;   DROP INDEX public."fir_details_MVA_NAME_id_5ecc2653_like";
       public         root    false    230            V           1259    71952    fir_details_PS_id_ad7ef1c4    INDEX     P   CREATE INDEX "fir_details_PS_id_ad7ef1c4" ON fir_details USING btree ("PS_id");
 0   DROP INDEX public."fir_details_PS_id_ad7ef1c4";
       public         root    false    230            W           1259    71953    fir_details_PS_id_ad7ef1c4_like    INDEX     i   CREATE INDEX "fir_details_PS_id_ad7ef1c4_like" ON fir_details USING btree ("PS_id" varchar_pattern_ops);
 5   DROP INDEX public."fir_details_PS_id_ad7ef1c4_like";
       public         root    false    230            X           1259    71954 &   fir_details_ROAD_CHARACTER_id_f5b0f459    INDEX     h   CREATE INDEX "fir_details_ROAD_CHARACTER_id_f5b0f459" ON fir_details USING btree ("ROAD_CHARACTER_id");
 <   DROP INDEX public."fir_details_ROAD_CHARACTER_id_f5b0f459";
       public         root    false    230            Y           1259    71955 +   fir_details_ROAD_CHARACTER_id_f5b0f459_like    INDEX     ?   CREATE INDEX "fir_details_ROAD_CHARACTER_id_f5b0f459_like" ON fir_details USING btree ("ROAD_CHARACTER_id" varchar_pattern_ops);
 A   DROP INDEX public."fir_details_ROAD_CHARACTER_id_f5b0f459_like";
       public         root    false    230            Z           1259    71956 &   fir_details_ROAD_CONDITION_id_ec138df2    INDEX     h   CREATE INDEX "fir_details_ROAD_CONDITION_id_ec138df2" ON fir_details USING btree ("ROAD_CONDITION_id");
 <   DROP INDEX public."fir_details_ROAD_CONDITION_id_ec138df2";
       public         root    false    230            [           1259    71957 +   fir_details_ROAD_CONDITION_id_ec138df2_like    INDEX     ?   CREATE INDEX "fir_details_ROAD_CONDITION_id_ec138df2_like" ON fir_details USING btree ("ROAD_CONDITION_id" varchar_pattern_ops);
 A   DROP INDEX public."fir_details_ROAD_CONDITION_id_ec138df2_like";
       public         root    false    230            \           1259    71958 !   fir_details_ROAD_TYPE_id_9dcccab5    INDEX     ^   CREATE INDEX "fir_details_ROAD_TYPE_id_9dcccab5" ON fir_details USING btree ("ROAD_TYPE_id");
 7   DROP INDEX public."fir_details_ROAD_TYPE_id_9dcccab5";
       public         root    false    230            ]           1259    71959 &   fir_details_ROAD_TYPE_id_9dcccab5_like    INDEX     w   CREATE INDEX "fir_details_ROAD_TYPE_id_9dcccab5_like" ON fir_details USING btree ("ROAD_TYPE_id" varchar_pattern_ops);
 <   DROP INDEX public."fir_details_ROAD_TYPE_id_9dcccab5_like";
       public         root    false    230            ^           1259    71960    fir_details_ROAD_id_cfb73d85    INDEX     T   CREATE INDEX "fir_details_ROAD_id_cfb73d85" ON fir_details USING btree ("ROAD_id");
 2   DROP INDEX public."fir_details_ROAD_id_cfb73d85";
       public         root    false    230            _           1259    71961    fir_details_SECTION_id_8e90b8a2    INDEX     ]   CREATE INDEX "fir_details_SECTION_id_8e90b8a2" ON fir_details USING btree ("OF_SECTION_id");
 5   DROP INDEX public."fir_details_SECTION_id_8e90b8a2";
       public         root    false    230            `           1259    71962 "   fir_details_SEPERATION_id_8665062d    INDEX     `   CREATE INDEX "fir_details_SEPERATION_id_8665062d" ON fir_details USING btree ("SEPERATION_id");
 8   DROP INDEX public."fir_details_SEPERATION_id_8665062d";
       public         root    false    230            a           1259    71963 '   fir_details_SEPERATION_id_8665062d_like    INDEX     y   CREATE INDEX "fir_details_SEPERATION_id_8665062d_like" ON fir_details USING btree ("SEPERATION_id" varchar_pattern_ops);
 =   DROP INDEX public."fir_details_SEPERATION_id_8665062d_like";
       public         root    false    230            b           1259    71964 )   fir_details_SURFACE_CONDITION_id_48585de1    INDEX     n   CREATE INDEX "fir_details_SURFACE_CONDITION_id_48585de1" ON fir_details USING btree ("SURFACE_CONDITION_id");
 ?   DROP INDEX public."fir_details_SURFACE_CONDITION_id_48585de1";
       public         root    false    230            c           1259    71965 .   fir_details_SURFACE_CONDITION_id_48585de1_like    INDEX     ?   CREATE INDEX "fir_details_SURFACE_CONDITION_id_48585de1_like" ON fir_details USING btree ("SURFACE_CONDITION_id" varchar_pattern_ops);
 D   DROP INDEX public."fir_details_SURFACE_CONDITION_id_48585de1_like";
       public         root    false    230            d           1259    71966 $   fir_details_SURFACE_TYPE_id_b78f836e    INDEX     d   CREATE INDEX "fir_details_SURFACE_TYPE_id_b78f836e" ON fir_details USING btree ("SURFACE_TYPE_id");
 :   DROP INDEX public."fir_details_SURFACE_TYPE_id_b78f836e";
       public         root    false    230            e           1259    71967 )   fir_details_SURFACE_TYPE_id_b78f836e_like    INDEX     }   CREATE INDEX "fir_details_SURFACE_TYPE_id_b78f836e_like" ON fir_details USING btree ("SURFACE_TYPE_id" varchar_pattern_ops);
 ?   DROP INDEX public."fir_details_SURFACE_TYPE_id_b78f836e_like";
       public         root    false    230            f           1259    71968    fir_details_map_loc_id    INDEX     I   CREATE INDEX fir_details_map_loc_id ON fir_details USING gist (map_loc);
 *   DROP INDEX public.fir_details_map_loc_id;
       public         root    false    3    3    3    5    3    5    3    5    3    5    3    5    3    5    3    5    5    5    3    3    5    3    5    5    3    5    230            i           1259    71969 &   fir_driver_fault_DF_Code_7bced64c_like    INDEX     w   CREATE INDEX "fir_driver_fault_DF_Code_7bced64c_like" ON fir_driver_fault USING btree ("DF_Code" varchar_pattern_ops);
 <   DROP INDEX public."fir_driver_fault_DF_Code_7bced64c_like";
       public         root    false    231            l           1259    71970 $   fir_edu_qual_EDQF_Code_fea67dfc_like    INDEX     s   CREATE INDEX "fir_edu_qual_EDQF_Code_fea67dfc_like" ON fir_edu_qual USING btree ("EDQF_Code" varchar_pattern_ops);
 :   DROP INDEX public."fir_edu_qual_EDQF_Code_fea67dfc_like";
       public         root    false    232            o           1259    71971     fir_injured_ACCID_ID_id_0a33e27d    INDEX     \   CREATE INDEX "fir_injured_ACCID_ID_id_0a33e27d" ON fir_injured USING btree ("ACCID_ID_id");
 6   DROP INDEX public."fir_injured_ACCID_ID_id_0a33e27d";
       public         root    false    233            p           1259    71972 %   fir_injured_ACCID_ID_id_0a33e27d_like    INDEX     u   CREATE INDEX "fir_injured_ACCID_ID_id_0a33e27d_like" ON fir_injured USING btree ("ACCID_ID_id" varchar_pattern_ops);
 ;   DROP INDEX public."fir_injured_ACCID_ID_id_0a33e27d_like";
       public         root    false    233            s           1259    71973    fir_killed_ACCID_ID_id_42714456    INDEX     Z   CREATE INDEX "fir_killed_ACCID_ID_id_42714456" ON fir_killed USING btree ("ACCID_ID_id");
 5   DROP INDEX public."fir_killed_ACCID_ID_id_42714456";
       public         root    false    235            t           1259    71974 $   fir_killed_ACCID_ID_id_42714456_like    INDEX     s   CREATE INDEX "fir_killed_ACCID_ID_id_42714456_like" ON fir_killed USING btree ("ACCID_ID_id" varchar_pattern_ops);
 :   DROP INDEX public."fir_killed_ACCID_ID_id_42714456_like";
       public         root    false    235            y           1259    71975 %   fir_mva_act_MVA_Section_ab670633_like    INDEX     u   CREATE INDEX "fir_mva_act_MVA_Section_ab670633_like" ON fir_mva_act USING btree ("MVA_Section" varchar_pattern_ops);
 ;   DROP INDEX public."fir_mva_act_MVA_Section_ab670633_like";
       public         root    false    238            |           1259    71976 !   fir_offender_ACCID_ID_id_bc49559e    INDEX     ^   CREATE INDEX "fir_offender_ACCID_ID_id_bc49559e" ON fir_offender USING btree ("ACCID_ID_id");
 7   DROP INDEX public."fir_offender_ACCID_ID_id_bc49559e";
       public         root    false    239            }           1259    71977 &   fir_offender_ACCID_ID_id_bc49559e_like    INDEX     w   CREATE INDEX "fir_offender_ACCID_ID_id_bc49559e_like" ON fir_offender USING btree ("ACCID_ID_id" varchar_pattern_ops);
 <   DROP INDEX public."fir_offender_ACCID_ID_id_bc49559e_like";
       public         root    false    239            ~           1259    71978 !   fir_offender_EDU_QUAL_id_493a0c9c    INDEX     ^   CREATE INDEX "fir_offender_EDU_QUAL_id_493a0c9c" ON fir_offender USING btree ("EDU_QUAL_id");
 7   DROP INDEX public."fir_offender_EDU_QUAL_id_493a0c9c";
       public         root    false    239                       1259    71979 &   fir_offender_EDU_QUAL_id_493a0c9c_like    INDEX     w   CREATE INDEX "fir_offender_EDU_QUAL_id_493a0c9c_like" ON fir_offender USING btree ("EDU_QUAL_id" varchar_pattern_ops);
 <   DROP INDEX public."fir_offender_EDU_QUAL_id_493a0c9c_like";
       public         root    false    239            ?           1259    71982 2   fir_offender_VEHICLE_LOADED_CONDITION1_id_922f551e    INDEX     ?   CREATE INDEX "fir_offender_VEHICLE_LOADED_CONDITION1_id_922f551e" ON fir_offender USING btree ("VEHICLE_LOADED_CONDITION1_id");
 H   DROP INDEX public."fir_offender_VEHICLE_LOADED_CONDITION1_id_922f551e";
       public         root    false    239            ?           1259    71983 7   fir_offender_VEHICLE_LOADED_CONDITION1_id_922f551e_like    INDEX     ?   CREATE INDEX "fir_offender_VEHICLE_LOADED_CONDITION1_id_922f551e_like" ON fir_offender USING btree ("VEHICLE_LOADED_CONDITION1_id" varchar_pattern_ops);
 M   DROP INDEX public."fir_offender_VEHICLE_LOADED_CONDITION1_id_922f551e_like";
       public         root    false    239            ?           1259    71984 !   fir_offender_VEHTYPE1_id_7678a717    INDEX     ^   CREATE INDEX "fir_offender_VEHTYPE1_id_7678a717" ON fir_offender USING btree ("VEHTYPE1_id");
 7   DROP INDEX public."fir_offender_VEHTYPE1_id_7678a717";
       public         root    false    239            ?           1259    71985 &   fir_offender_VEHTYPE1_id_7678a717_like    INDEX     w   CREATE INDEX "fir_offender_VEHTYPE1_id_7678a717_like" ON fir_offender USING btree ("VEHTYPE1_id" varchar_pattern_ops);
 <   DROP INDEX public."fir_offender_VEHTYPE1_id_7678a717_like";
       public         root    false    239            ?           1259    71986 $   fir_offender_WORK_STATUS_id_7798f814    INDEX     d   CREATE INDEX "fir_offender_WORK_STATUS_id_7798f814" ON fir_offender USING btree ("WORK_STATUS_id");
 :   DROP INDEX public."fir_offender_WORK_STATUS_id_7798f814";
       public         root    false    239            ?           1259    71987 )   fir_offender_WORK_STATUS_id_7798f814_like    INDEX     }   CREATE INDEX "fir_offender_WORK_STATUS_id_7798f814_like" ON fir_offender USING btree ("WORK_STATUS_id" varchar_pattern_ops);
 ?   DROP INDEX public."fir_offender_WORK_STATUS_id_7798f814_like";
       public         root    false    239            ?           1259    71988 )   fir_policestation_CIRCLE_PS_bc657bf0_like    INDEX     }   CREATE INDEX "fir_policestation_CIRCLE_PS_bc657bf0_like" ON fir_policestation USING btree ("CIRCLE_PS" varchar_pattern_ops);
 ?   DROP INDEX public."fir_policestation_CIRCLE_PS_bc657bf0_like";
       public         root    false    241            ?           1259    71989 $   fir_policestation_CIRCLE_id_85da1e16    INDEX     d   CREATE INDEX "fir_policestation_CIRCLE_id_85da1e16" ON fir_policestation USING btree ("CIRCLE_id");
 :   DROP INDEX public."fir_policestation_CIRCLE_id_85da1e16";
       public         root    false    241            ?           1259    71990 )   fir_policestation_CIRCLE_id_85da1e16_like    INDEX     }   CREATE INDEX "fir_policestation_CIRCLE_id_85da1e16_like" ON fir_policestation USING btree ("CIRCLE_id" varchar_pattern_ops);
 ?   DROP INDEX public."fir_policestation_CIRCLE_id_85da1e16_like";
       public         root    false    241            ?           1259    71991 #   fir_remedies_Rem_Code_8b963855_like    INDEX     q   CREATE INDEX "fir_remedies_Rem_Code_8b963855_like" ON fir_remedies USING btree ("Rem_Code" varchar_pattern_ops);
 9   DROP INDEX public."fir_remedies_Rem_Code_8b963855_like";
       public         root    false    244            ?           1259    71992 (   fir_road_character_RC_Code_cdfe9f14_like    INDEX     {   CREATE INDEX "fir_road_character_RC_Code_cdfe9f14_like" ON fir_road_character USING btree ("RC_Code" varchar_pattern_ops);
 >   DROP INDEX public."fir_road_character_RC_Code_cdfe9f14_like";
       public         root    false    245            ?           1259    71993 )   fir_road_condition_RCN_Code_badad710_like    INDEX     }   CREATE INDEX "fir_road_condition_RCN_Code_badad710_like" ON fir_road_condition USING btree ("RCN_Code" varchar_pattern_ops);
 ?   DROP INDEX public."fir_road_condition_RCN_Code_badad710_like";
       public         root    false    246            ?           1259    71994 +   fir_road_engg_fault_RENF_Code_f0739765_like    INDEX     ?   CREATE INDEX "fir_road_engg_fault_RENF_Code_f0739765_like" ON fir_road_engg_fault USING btree ("RENF_Code" varchar_pattern_ops);
 A   DROP INDEX public."fir_road_engg_fault_RENF_Code_f0739765_like";
       public         root    false    247            ?           1259    71995 )   fir_road_env_fault_REF_Code_d42e8146_like    INDEX     }   CREATE INDEX "fir_road_env_fault_REF_Code_d42e8146_like" ON fir_road_env_fault USING btree ("REF_Code" varchar_pattern_ops);
 ?   DROP INDEX public."fir_road_env_fault_REF_Code_d42e8146_like";
       public         root    false    248            ?           1259    71996 %   fir_road_type1_SRT_Code_2be36baa_like    INDEX     u   CREATE INDEX "fir_road_type1_SRT_Code_2be36baa_like" ON fir_road_type1 USING btree ("SRT_Code" varchar_pattern_ops);
 ;   DROP INDEX public."fir_road_type1_SRT_Code_2be36baa_like";
       public         root    false    250            ?           1259    71997 #   fir_road_type_RT_Code_97f97d4f_like    INDEX     q   CREATE INDEX "fir_road_type_RT_Code_97f97d4f_like" ON fir_road_type USING btree ("RT_Code" varchar_pattern_ops);
 9   DROP INDEX public."fir_road_type_RT_Code_97f97d4f_like";
       public         root    false    249            ?           1259    71998    fir_roads_CIRCLE_id_fd7f620e    INDEX     T   CREATE INDEX "fir_roads_CIRCLE_id_fd7f620e" ON fir_roads USING btree ("CIRCLE_id");
 2   DROP INDEX public."fir_roads_CIRCLE_id_fd7f620e";
       public         root    false    251            ?           1259    71999 !   fir_roads_CIRCLE_id_fd7f620e_like    INDEX     m   CREATE INDEX "fir_roads_CIRCLE_id_fd7f620e_like" ON fir_roads USING btree ("CIRCLE_id" varchar_pattern_ops);
 7   DROP INDEX public."fir_roads_CIRCLE_id_fd7f620e_like";
       public         root    false    251            ?           1259    72000    fir_roads_NEW_226dfa92_like    INDEX     a   CREATE INDEX "fir_roads_NEW_226dfa92_like" ON fir_roads USING btree ("NEW" varchar_pattern_ops);
 1   DROP INDEX public."fir_roads_NEW_226dfa92_like";
       public         root    false    251            ?           1259    72001    fir_self_type_SNO_4b299614_like    INDEX     i   CREATE INDEX "fir_self_type_SNO_4b299614_like" ON fir_self_type USING btree ("SNO" varchar_pattern_ops);
 5   DROP INDEX public."fir_self_type_SNO_4b299614_like";
       public         root    false    253            ?           1259    72002 #   fir_seperation_S_Code_43579e08_like    INDEX     q   CREATE INDEX "fir_seperation_S_Code_43579e08_like" ON fir_seperation USING btree ("S_Code" varchar_pattern_ops);
 9   DROP INDEX public."fir_seperation_S_Code_43579e08_like";
       public         root    false    254            ?           1259    72003 *   fir_study_parameter_SPM_Code_604eba8e_like    INDEX        CREATE INDEX "fir_study_parameter_SPM_Code_604eba8e_like" ON fir_study_parameter USING btree ("SPM_Code" varchar_pattern_ops);
 @   DROP INDEX public."fir_study_parameter_SPM_Code_604eba8e_like";
       public         root    false    255            ?           1259    72004 +   fir_surface_condition_SC_Code_ae0522e0_like    INDEX     ?   CREATE INDEX "fir_surface_condition_SC_Code_ae0522e0_like" ON fir_surface_condition USING btree ("SC_Code" varchar_pattern_ops);
 A   DROP INDEX public."fir_surface_condition_SC_Code_ae0522e0_like";
       public         root    false    256            ?           1259    72005 '   fir_surface_type_SFT_Code_63910dca_like    INDEX     y   CREATE INDEX "fir_surface_type_SFT_Code_63910dca_like" ON fir_surface_type USING btree ("SFT_Code" varchar_pattern_ops);
 =   DROP INDEX public."fir_surface_type_SFT_Code_63910dca_like";
       public         root    false    257            ?           1259    72006 )   fir_veh_mech_fault_VMF_Code_c68739f4_like    INDEX     }   CREATE INDEX "fir_veh_mech_fault_VMF_Code_c68739f4_like" ON fir_veh_mech_fault USING btree ("VMF_Code" varchar_pattern_ops);
 ?   DROP INDEX public."fir_veh_mech_fault_VMF_Code_c68739f4_like";
       public         root    false    258            ?           1259    72007 3   fir_vehicle_loaded_condition_VLC_Code_3808eeff_like    INDEX     ?   CREATE INDEX "fir_vehicle_loaded_condition_VLC_Code_3808eeff_like" ON fir_vehicle_loaded_condition USING btree ("VLC_Code" varchar_pattern_ops);
 I   DROP INDEX public."fir_vehicle_loaded_condition_VLC_Code_3808eeff_like";
       public         root    false    259            ?           1259    72008 "   fir_vehtype1_VEHTYPE_3b51b3a3_like    INDEX     o   CREATE INDEX "fir_vehtype1_VEHTYPE_3b51b3a3_like" ON fir_vehtype1 USING btree ("VEHTYPE" varchar_pattern_ops);
 8   DROP INDEX public."fir_vehtype1_VEHTYPE_3b51b3a3_like";
       public         root    false    260            ?           1259    72009 "   fir_vehtype2_VEHTYPE_d6246cc0_like    INDEX     o   CREATE INDEX "fir_vehtype2_VEHTYPE_d6246cc0_like" ON fir_vehtype2 USING btree ("VEHTYPE" varchar_pattern_ops);
 8   DROP INDEX public."fir_vehtype2_VEHTYPE_d6246cc0_like";
       public         root    false    261            ?           1259    72010 &   fir_victim_fault_VF_Code_8749a777_like    INDEX     w   CREATE INDEX "fir_victim_fault_VF_Code_8749a777_like" ON fir_victim_fault USING btree ("VF_Code" varchar_pattern_ops);
 <   DROP INDEX public."fir_victim_fault_VF_Code_8749a777_like";
       public         root    false    262            ?           1259    72011 &   fir_victim_person_ACCID_ID_id_0facf936    INDEX     h   CREATE INDEX "fir_victim_person_ACCID_ID_id_0facf936" ON fir_victim_person USING btree ("ACCID_ID_id");
 <   DROP INDEX public."fir_victim_person_ACCID_ID_id_0facf936";
       public         root    false    263            ?           1259    72012 +   fir_victim_person_ACCID_ID_id_0facf936_like    INDEX     ?   CREATE INDEX "fir_victim_person_ACCID_ID_id_0facf936_like" ON fir_victim_person USING btree ("ACCID_ID_id" varchar_pattern_ops);
 A   DROP INDEX public."fir_victim_person_ACCID_ID_id_0facf936_like";
       public         root    false    263            ?           1259    72013 ,   fir_victim_person_PER_STAT_TYPE2_id_ddf6c8f3    INDEX     t   CREATE INDEX "fir_victim_person_PER_STAT_TYPE2_id_ddf6c8f3" ON fir_victim_person USING btree ("PER_STAT_TYPE2_id");
 B   DROP INDEX public."fir_victim_person_PER_STAT_TYPE2_id_ddf6c8f3";
       public         root    false    263            ?           1259    72014 1   fir_victim_person_PER_STAT_TYPE2_id_ddf6c8f3_like    INDEX     ?   CREATE INDEX "fir_victim_person_PER_STAT_TYPE2_id_ddf6c8f3_like" ON fir_victim_person USING btree ("PER_STAT_TYPE2_id" varchar_pattern_ops);
 G   DROP INDEX public."fir_victim_person_PER_STAT_TYPE2_id_ddf6c8f3_like";
       public         root    false    263            ?           1259    72015 *   fir_victim_person_VIC_EDU_QUAL_id_3a079772    INDEX     p   CREATE INDEX "fir_victim_person_VIC_EDU_QUAL_id_3a079772" ON fir_victim_person USING btree ("VIC_EDU_QUAL_id");
 @   DROP INDEX public."fir_victim_person_VIC_EDU_QUAL_id_3a079772";
       public         root    false    263            ?           1259    72016 /   fir_victim_person_VIC_EDU_QUAL_id_3a079772_like    INDEX     ?   CREATE INDEX "fir_victim_person_VIC_EDU_QUAL_id_3a079772_like" ON fir_victim_person USING btree ("VIC_EDU_QUAL_id" varchar_pattern_ops);
 E   DROP INDEX public."fir_victim_person_VIC_EDU_QUAL_id_3a079772_like";
       public         root    false    263            ?           1259    72017 -   fir_victim_person_VIC_WORK_STATUS_id_d3c255b4    INDEX     v   CREATE INDEX "fir_victim_person_VIC_WORK_STATUS_id_d3c255b4" ON fir_victim_person USING btree ("VIC_WORK_STATUS_id");
 C   DROP INDEX public."fir_victim_person_VIC_WORK_STATUS_id_d3c255b4";
       public         root    false    263            ?           1259    72018 2   fir_victim_person_VIC_WORK_STATUS_id_d3c255b4_like    INDEX     ?   CREATE INDEX "fir_victim_person_VIC_WORK_STATUS_id_d3c255b4_like" ON fir_victim_person USING btree ("VIC_WORK_STATUS_id" varchar_pattern_ops);
 H   DROP INDEX public."fir_victim_person_VIC_WORK_STATUS_id_d3c255b4_like";
       public         root    false    263            ?           1259    72019 =   fir_victim_person_status1_Victim_Person_Status1_00da20eb_like    INDEX     ?   CREATE INDEX "fir_victim_person_status1_Victim_Person_Status1_00da20eb_like" ON fir_victim_person_status1 USING btree ("Victim_Person_Status1" varchar_pattern_ops);
 S   DROP INDEX public."fir_victim_person_status1_Victim_Person_Status1_00da20eb_like";
       public         root    false    266            ?           1259    72020 ;   fir_victim_person_status_Victim_Person_Status_12d47b93_like    INDEX     ?   CREATE INDEX "fir_victim_person_status_Victim_Person_Status_12d47b93_like" ON fir_victim_person_status USING btree ("Victim_Person_Status" varchar_pattern_ops);
 Q   DROP INDEX public."fir_victim_person_status_Victim_Person_Status_12d47b93_like";
       public         root    false    265            ?           1259    72021 '   fir_victim_vehicle_ACCID_ID_id_bf7ee74c    INDEX     j   CREATE INDEX "fir_victim_vehicle_ACCID_ID_id_bf7ee74c" ON fir_victim_vehicle USING btree ("ACCID_ID_id");
 =   DROP INDEX public."fir_victim_vehicle_ACCID_ID_id_bf7ee74c";
       public         root    false    267            ?           1259    72022 ,   fir_victim_vehicle_ACCID_ID_id_bf7ee74c_like    INDEX     ?   CREATE INDEX "fir_victim_vehicle_ACCID_ID_id_bf7ee74c_like" ON fir_victim_vehicle USING btree ("ACCID_ID_id" varchar_pattern_ops);
 B   DROP INDEX public."fir_victim_vehicle_ACCID_ID_id_bf7ee74c_like";
       public         root    false    267            ?           1259    72025 8   fir_victim_vehicle_VEHICLE_LOADED_CONDITION2_id_351057eb    INDEX     ?   CREATE INDEX "fir_victim_vehicle_VEHICLE_LOADED_CONDITION2_id_351057eb" ON fir_victim_vehicle USING btree ("VEHICLE_LOADED_CONDITION2_id");
 N   DROP INDEX public."fir_victim_vehicle_VEHICLE_LOADED_CONDITION2_id_351057eb";
       public         root    false    267            ?           1259    72026 =   fir_victim_vehicle_VEHICLE_LOADED_CONDITION2_id_351057eb_like    INDEX     ?   CREATE INDEX "fir_victim_vehicle_VEHICLE_LOADED_CONDITION2_id_351057eb_like" ON fir_victim_vehicle USING btree ("VEHICLE_LOADED_CONDITION2_id" varchar_pattern_ops);
 S   DROP INDEX public."fir_victim_vehicle_VEHICLE_LOADED_CONDITION2_id_351057eb_like";
       public         root    false    267            ?           1259    72027 '   fir_victim_vehicle_VEHTYPE2_id_41f5d40d    INDEX     j   CREATE INDEX "fir_victim_vehicle_VEHTYPE2_id_41f5d40d" ON fir_victim_vehicle USING btree ("VEHTYPE2_id");
 =   DROP INDEX public."fir_victim_vehicle_VEHTYPE2_id_41f5d40d";
       public         root    false    267            ?           1259    72028 ,   fir_victim_vehicle_VEHTYPE2_id_41f5d40d_like    INDEX     ?   CREATE INDEX "fir_victim_vehicle_VEHTYPE2_id_41f5d40d_like" ON fir_victim_vehicle USING btree ("VEHTYPE2_id" varchar_pattern_ops);
 B   DROP INDEX public."fir_victim_vehicle_VEHTYPE2_id_41f5d40d_like";
       public         root    false    267            ?           1259    72029 &   fir_weather_cond_WC_Code_93d01a4d_like    INDEX     w   CREATE INDEX "fir_weather_cond_WC_Code_93d01a4d_like" ON fir_weather_cond USING btree ("WC_Code" varchar_pattern_ops);
 <   DROP INDEX public."fir_weather_cond_WC_Code_93d01a4d_like";
       public         root    false    269            ?           1259    72030 %   fir_work_status_WS_Code_aef63e0e_like    INDEX     u   CREATE INDEX "fir_work_status_WS_Code_aef63e0e_like" ON fir_work_status USING btree ("WS_Code" varchar_pattern_ops);
 ;   DROP INDEX public."fir_work_status_WS_Code_aef63e0e_like";
       public         root    false    270            ?           1259    72031 6   report_builder_displayfield_display_format_id_c649f0ea    INDEX     ?   CREATE INDEX report_builder_displayfield_display_format_id_c649f0ea ON report_builder_displayfield USING btree (display_format_id);
 J   DROP INDEX public.report_builder_displayfield_display_format_id_c649f0ea;
       public         root    false    271            ?           1259    72032 .   report_builder_displayfield_report_id_642d3d44    INDEX     t   CREATE INDEX report_builder_displayfield_report_id_642d3d44 ON report_builder_displayfield USING btree (report_id);
 B   DROP INDEX public.report_builder_displayfield_report_id_642d3d44;
       public         root    false    271            ?           1259    72033 -   report_builder_filterfield_report_id_a5498074    INDEX     r   CREATE INDEX report_builder_filterfield_report_id_a5498074 ON report_builder_filterfield USING btree (report_id);
 A   DROP INDEX public.report_builder_filterfield_report_id_a5498074;
       public         root    false    273            ?           1259    72034 ,   report_builder_report_root_model_id_3bae34b3    INDEX     p   CREATE INDEX report_builder_report_root_model_id_3bae34b3 ON report_builder_report USING btree (root_model_id);
 @   DROP INDEX public.report_builder_report_root_model_id_3bae34b3;
       public         root    false    277            ?           1259    72035 #   report_builder_report_slug_559601ba    INDEX     ^   CREATE INDEX report_builder_report_slug_559601ba ON report_builder_report USING btree (slug);
 7   DROP INDEX public.report_builder_report_slug_559601ba;
       public         root    false    277            ?           1259    72036 (   report_builder_report_slug_559601ba_like    INDEX     w   CREATE INDEX report_builder_report_slug_559601ba_like ON report_builder_report USING btree (slug varchar_pattern_ops);
 <   DROP INDEX public.report_builder_report_slug_559601ba_like;
       public         root    false    277                       1259    72037 0   report_builder_report_starred_report_id_0a54a683    INDEX     x   CREATE INDEX report_builder_report_starred_report_id_0a54a683 ON report_builder_report_starred USING btree (report_id);
 D   DROP INDEX public.report_builder_report_starred_report_id_0a54a683;
       public         root    false    279                       1259    72038 .   report_builder_report_starred_user_id_70388cb5    INDEX     t   CREATE INDEX report_builder_report_starred_user_id_70388cb5 ON report_builder_report_starred USING btree (user_id);
 B   DROP INDEX public.report_builder_report_starred_user_id_70388cb5;
       public         root    false    279            ?           1259    72039 .   report_builder_report_user_created_id_e8133ae8    INDEX     t   CREATE INDEX report_builder_report_user_created_id_e8133ae8 ON report_builder_report USING btree (user_created_id);
 B   DROP INDEX public.report_builder_report_user_created_id_e8133ae8;
       public         root    false    277            ?           1259    72040 /   report_builder_report_user_modified_id_04e38ffb    INDEX     v   CREATE INDEX report_builder_report_user_modified_id_04e38ffb ON report_builder_report USING btree (user_modified_id);
 C   DROP INDEX public.report_builder_report_user_modified_id_04e38ffb;
       public         root    false    277                       2606    72041 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       root    false    206    3849    204                       2606    72046 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       root    false    204    3838    202                       2606    72051 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       root    false    216    3874    206                       2606    72056 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       root    false    209    202    3838            	           2606    72061 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       root    false    3851    208    209            
           2606    72066 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       root    false    3849    206    212                       2606    72071 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       root    false    3851    208    212                       2606    72076 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       root    false    216    214    3874                       2606    72081 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       root    false    3851    214    208                       2606    72086 @   fir_causes fir_causes_ACCID_ID_id_e1e13913_fk_fir_details_ACC_ID    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_causes
    ADD CONSTRAINT "fir_causes_ACCID_ID_id_e1e13913_fk_fir_details_ACC_ID" FOREIGN KEY ("ACCID_ID_id") REFERENCES fir_details("ACC_ID") DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.fir_causes DROP CONSTRAINT "fir_causes_ACCID_ID_id_e1e13913_fk_fir_details_ACC_ID";
       public       root    false    230    225    3944                       2606    72091 J   fir_causes fir_causes_DRIVER_FAULT_id_bfa825b5_fk_fir_driver_fault_DF_Code    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_causes
    ADD CONSTRAINT "fir_causes_DRIVER_FAULT_id_bfa825b5_fk_fir_driver_fault_DF_Code" FOREIGN KEY ("DRIVER_FAULT_id") REFERENCES fir_driver_fault("DF_Code") DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.fir_causes DROP CONSTRAINT "fir_causes_DRIVER_FAULT_id_bfa825b5_fk_fir_driver_fault_DF_Code";
       public       root    false    3947    225    231                       2606    72096 C   fir_causes fir_causes_REMEDIES_id_34859c22_fk_fir_remedies_Rem_Code    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_causes
    ADD CONSTRAINT "fir_causes_REMEDIES_id_34859c22_fk_fir_remedies_Rem_Code" FOREIGN KEY ("REMEDIES_id") REFERENCES fir_remedies("Rem_Code") DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.fir_causes DROP CONSTRAINT "fir_causes_REMEDIES_id_34859c22_fk_fir_remedies_Rem_Code";
       public       root    false    3987    225    244                       2606    72101 >   fir_causes fir_causes_ROAD_ENGG_FAULT_id_3950e7d1_fk_fir_road_    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_causes
    ADD CONSTRAINT "fir_causes_ROAD_ENGG_FAULT_id_3950e7d1_fk_fir_road_" FOREIGN KEY ("ROAD_ENGG_FAULT_id") REFERENCES fir_road_engg_fault("RENF_Code") DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.fir_causes DROP CONSTRAINT "fir_causes_ROAD_ENGG_FAULT_id_3950e7d1_fk_fir_road_";
       public       root    false    225    3996    247                       2606    72106 =   fir_causes fir_causes_ROAD_ENV_FAULT_id_2f6c14df_fk_fir_road_    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_causes
    ADD CONSTRAINT "fir_causes_ROAD_ENV_FAULT_id_2f6c14df_fk_fir_road_" FOREIGN KEY ("ROAD_ENV_FAULT_id") REFERENCES fir_road_env_fault("REF_Code") DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.fir_causes DROP CONSTRAINT "fir_causes_ROAD_ENV_FAULT_id_2f6c14df_fk_fir_road_";
       public       root    false    3999    225    248                       2606    72111 =   fir_causes fir_causes_VEH_MECH_FAULT_id_26a714f3_fk_fir_veh_m    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_causes
    ADD CONSTRAINT "fir_causes_VEH_MECH_FAULT_id_26a714f3_fk_fir_veh_m" FOREIGN KEY ("VEH_MECH_FAULT_id") REFERENCES fir_veh_mech_fault("VMF_Code") DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.fir_causes DROP CONSTRAINT "fir_causes_VEH_MECH_FAULT_id_26a714f3_fk_fir_veh_m";
       public       root    false    4034    225    258                       2606    72116 J   fir_causes fir_causes_VICTIM_FAULT_id_05a93c95_fk_fir_victim_fault_VF_Code    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_causes
    ADD CONSTRAINT "fir_causes_VICTIM_FAULT_id_05a93c95_fk_fir_victim_fault_VF_Code" FOREIGN KEY ("VICTIM_FAULT_id") REFERENCES fir_victim_fault("VF_Code") DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.fir_causes DROP CONSTRAINT "fir_causes_VICTIM_FAULT_id_05a93c95_fk_fir_victim_fault_VF_Code";
       public       root    false    4048    225    262                       2606    72121 J   fir_causes fir_causes_WEATHER_COND_id_f88175aa_fk_fir_weather_cond_WC_Code    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_causes
    ADD CONSTRAINT "fir_causes_WEATHER_COND_id_f88175aa_fk_fir_weather_cond_WC_Code" FOREIGN KEY ("WEATHER_COND_id") REFERENCES fir_weather_cond("WC_Code") DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.fir_causes DROP CONSTRAINT "fir_causes_WEATHER_COND_id_f88175aa_fk_fir_weather_cond_WC_Code";
       public       root    false    225    269    4075                       2606    72126 F   fir_collision fir_collision_ACCID_ID_id_e5a32b91_fk_fir_details_ACC_ID    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_collision
    ADD CONSTRAINT "fir_collision_ACCID_ID_id_e5a32b91_fk_fir_details_ACC_ID" FOREIGN KEY ("ACCID_ID_id") REFERENCES fir_details("ACC_ID") DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.fir_collision DROP CONSTRAINT "fir_collision_ACCID_ID_id_e5a32b91_fk_fir_details_ACC_ID";
       public       root    false    3944    228    230                       2606    72131 F   fir_collision fir_collision_COL_TYPE_id_023026a6_fk_fir_accid_type_SNO    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_collision
    ADD CONSTRAINT "fir_collision_COL_TYPE_id_023026a6_fk_fir_accid_type_SNO" FOREIGN KEY ("COL_TYPE_id") REFERENCES fir_accid_type("SNO") DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.fir_collision DROP CONSTRAINT "fir_collision_COL_TYPE_id_023026a6_fk_fir_accid_type_SNO";
       public       root    false    3882    228    221                       2606    72136 B   fir_details fir_details_AREA_TYPE2_id_f1fa2f42_fk_fir_location_SNO    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_AREA_TYPE2_id_f1fa2f42_fk_fir_location_SNO" FOREIGN KEY ("AREA_TYPE2_id") REFERENCES fir_location("SNO") DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_AREA_TYPE2_id_f1fa2f42_fk_fir_location_SNO";
       public       root    false    230    3960    237                       2606    72141 I   fir_details fir_details_AREA_TYPE_id_f95ef727_fk_fir_area_type_Atype_Code    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_AREA_TYPE_id_f95ef727_fk_fir_area_type_Atype_Code" FOREIGN KEY ("AREA_TYPE_id") REFERENCES fir_area_type("Atype_Code") DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_AREA_TYPE_id_f95ef727_fk_fir_area_type_Atype_Code";
       public       root    false    3885    222    230                       2606    72146 @   fir_details fir_details_CIRCLE_id_3040535b_fk_fir_circles_CIRCLE    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_CIRCLE_id_3040535b_fk_fir_circles_CIRCLE" FOREIGN KEY ("CIRCLE_id") REFERENCES fir_circles("CIRCLE") DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_CIRCLE_id_3040535b_fk_fir_circles_CIRCLE";
       public       root    false    3912    227    230                       2606    72151 G   fir_details fir_details_MVA_NAME_id_5ecc2653_fk_fir_mva_act_MVA_Section    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_MVA_NAME_id_5ecc2653_fk_fir_mva_act_MVA_Section" FOREIGN KEY ("MVA_NAME_id") REFERENCES fir_mva_act("MVA_Section") DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_MVA_NAME_id_5ecc2653_fk_fir_mva_act_MVA_Section";
       public       root    false    3963    238    230                       2606    72156 F   fir_details fir_details_OF_SECTION_id_f4e5fda5_fk_fir_sections_SECTION    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_OF_SECTION_id_f4e5fda5_fk_fir_sections_SECTION" FOREIGN KEY ("OF_SECTION_id") REFERENCES fir_sections("SECTION") DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_OF_SECTION_id_f4e5fda5_fk_fir_sections_SECTION";
       public       root    false    4014    252    230                       2606    72161 E   fir_details fir_details_PS_id_ad7ef1c4_fk_fir_policestation_CIRCLE_PS    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_PS_id_ad7ef1c4_fk_fir_policestation_CIRCLE_PS" FOREIGN KEY ("PS_id") REFERENCES fir_policestation("CIRCLE_PS") DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_PS_id_ad7ef1c4_fk_fir_policestation_CIRCLE_PS";
       public       root    false    230    241    3980                       2606    72166 ?   fir_details fir_details_ROAD_CHARACTER_id_f5b0f459_fk_fir_road_    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_ROAD_CHARACTER_id_f5b0f459_fk_fir_road_" FOREIGN KEY ("ROAD_CHARACTER_id") REFERENCES fir_road_character("RC_Code") DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_ROAD_CHARACTER_id_f5b0f459_fk_fir_road_";
       public       root    false    230    245    3990                       2606    72171 ?   fir_details fir_details_ROAD_CONDITION_id_ec138df2_fk_fir_road_    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_ROAD_CONDITION_id_ec138df2_fk_fir_road_" FOREIGN KEY ("ROAD_CONDITION_id") REFERENCES fir_road_condition("RCN_Code") DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_ROAD_CONDITION_id_ec138df2_fk_fir_road_";
       public       root    false    230    3993    246                        2606    72176 F   fir_details fir_details_ROAD_TYPE_id_9dcccab5_fk_fir_road_type_RT_Code    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_ROAD_TYPE_id_9dcccab5_fk_fir_road_type_RT_Code" FOREIGN KEY ("ROAD_TYPE_id") REFERENCES fir_road_type("RT_Code") DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_ROAD_TYPE_id_9dcccab5_fk_fir_road_type_RT_Code";
       public       root    false    230    249    4002            !           2606    72181 G   fir_details fir_details_SEPERATION_id_8665062d_fk_fir_seperation_S_Code    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_SEPERATION_id_8665062d_fk_fir_seperation_S_Code" FOREIGN KEY ("SEPERATION_id") REFERENCES fir_seperation("S_Code") DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_SEPERATION_id_8665062d_fk_fir_seperation_S_Code";
       public       root    false    230    254    4022            "           2606    72186 B   fir_details fir_details_SURFACE_CONDITION_id_48585de1_fk_fir_surfa    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_SURFACE_CONDITION_id_48585de1_fk_fir_surfa" FOREIGN KEY ("SURFACE_CONDITION_id") REFERENCES fir_surface_condition("SC_Code") DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_SURFACE_CONDITION_id_48585de1_fk_fir_surfa";
       public       root    false    230    256    4028            #           2606    72191 =   fir_details fir_details_SURFACE_TYPE_id_b78f836e_fk_fir_surfa    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_SURFACE_TYPE_id_b78f836e_fk_fir_surfa" FOREIGN KEY ("SURFACE_TYPE_id") REFERENCES fir_surface_type("SFT_Code") DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_SURFACE_TYPE_id_b78f836e_fk_fir_surfa";
       public       root    false    230    257    4031            $           2606    72196 B   fir_injured fir_injured_ACCID_ID_id_0a33e27d_fk_fir_details_ACC_ID    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_injured
    ADD CONSTRAINT "fir_injured_ACCID_ID_id_0a33e27d_fk_fir_details_ACC_ID" FOREIGN KEY ("ACCID_ID_id") REFERENCES fir_details("ACC_ID") DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.fir_injured DROP CONSTRAINT "fir_injured_ACCID_ID_id_0a33e27d_fk_fir_details_ACC_ID";
       public       root    false    233    230    3944            %           2606    72201 @   fir_killed fir_killed_ACCID_ID_id_42714456_fk_fir_details_ACC_ID    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_killed
    ADD CONSTRAINT "fir_killed_ACCID_ID_id_42714456_fk_fir_details_ACC_ID" FOREIGN KEY ("ACCID_ID_id") REFERENCES fir_details("ACC_ID") DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.fir_killed DROP CONSTRAINT "fir_killed_ACCID_ID_id_42714456_fk_fir_details_ACC_ID";
       public       root    false    235    230    3944            &           2606    72206 D   fir_offender fir_offender_ACCID_ID_id_bc49559e_fk_fir_details_ACC_ID    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_offender
    ADD CONSTRAINT "fir_offender_ACCID_ID_id_bc49559e_fk_fir_details_ACC_ID" FOREIGN KEY ("ACCID_ID_id") REFERENCES fir_details("ACC_ID") DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.fir_offender DROP CONSTRAINT "fir_offender_ACCID_ID_id_bc49559e_fk_fir_details_ACC_ID";
       public       root    false    239    230    3944            '           2606    72211 H   fir_offender fir_offender_EDU_QUAL_id_493a0c9c_fk_fir_edu_qual_EDQF_Code    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_offender
    ADD CONSTRAINT "fir_offender_EDU_QUAL_id_493a0c9c_fk_fir_edu_qual_EDQF_Code" FOREIGN KEY ("EDU_QUAL_id") REFERENCES fir_edu_qual("EDQF_Code") DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.fir_offender DROP CONSTRAINT "fir_offender_EDU_QUAL_id_493a0c9c_fk_fir_edu_qual_EDQF_Code";
       public       root    false    239    232    3950            (           2606    72221 D   fir_offender fir_offender_VEHICLE_LOADED_CONDI_922f551e_fk_fir_vehic    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_offender
    ADD CONSTRAINT "fir_offender_VEHICLE_LOADED_CONDI_922f551e_fk_fir_vehic" FOREIGN KEY ("VEHICLE_LOADED_CONDITION1_id") REFERENCES fir_vehicle_loaded_condition("VLC_Code") DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.fir_offender DROP CONSTRAINT "fir_offender_VEHICLE_LOADED_CONDI_922f551e_fk_fir_vehic";
       public       root    false    239    4037    259            )           2606    72226 F   fir_offender fir_offender_VEHTYPE1_id_7678a717_fk_fir_vehtype1_VEHTYPE    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_offender
    ADD CONSTRAINT "fir_offender_VEHTYPE1_id_7678a717_fk_fir_vehtype1_VEHTYPE" FOREIGN KEY ("VEHTYPE1_id") REFERENCES fir_vehtype1("VEHTYPE") DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.fir_offender DROP CONSTRAINT "fir_offender_VEHTYPE1_id_7678a717_fk_fir_vehtype1_VEHTYPE";
       public       root    false    4040    260    239            *           2606    72231 L   fir_offender fir_offender_WORK_STATUS_id_7798f814_fk_fir_work_status_WS_Code    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_offender
    ADD CONSTRAINT "fir_offender_WORK_STATUS_id_7798f814_fk_fir_work_status_WS_Code" FOREIGN KEY ("WORK_STATUS_id") REFERENCES fir_work_status("WS_Code") DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.fir_offender DROP CONSTRAINT "fir_offender_WORK_STATUS_id_7798f814_fk_fir_work_status_WS_Code";
       public       root    false    239    270    4078            +           2606    72236 L   fir_policestation fir_policestation_CIRCLE_id_85da1e16_fk_fir_circles_CIRCLE    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_policestation
    ADD CONSTRAINT "fir_policestation_CIRCLE_id_85da1e16_fk_fir_circles_CIRCLE" FOREIGN KEY ("CIRCLE_id") REFERENCES fir_circles("CIRCLE") DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.fir_policestation DROP CONSTRAINT "fir_policestation_CIRCLE_id_85da1e16_fk_fir_circles_CIRCLE";
       public       root    false    3912    241    227            ,           2606    72241 8   fir_profile fir_profile_user_id_f33eed55_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_profile
    ADD CONSTRAINT fir_profile_user_id_f33eed55_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.fir_profile DROP CONSTRAINT fir_profile_user_id_f33eed55_fk_auth_user_id;
       public       root    false    242    208    3851            -           2606    72246 <   fir_roads fir_roads_CIRCLE_id_fd7f620e_fk_fir_circles_CIRCLE    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_roads
    ADD CONSTRAINT "fir_roads_CIRCLE_id_fd7f620e_fk_fir_circles_CIRCLE" FOREIGN KEY ("CIRCLE_id") REFERENCES fir_circles("CIRCLE") DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.fir_roads DROP CONSTRAINT "fir_roads_CIRCLE_id_fd7f620e_fk_fir_circles_CIRCLE";
       public       root    false    3912    251    227            .           2606    72251 N   fir_victim_person fir_victim_person_ACCID_ID_id_0facf936_fk_fir_details_ACC_ID    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_victim_person
    ADD CONSTRAINT "fir_victim_person_ACCID_ID_id_0facf936_fk_fir_details_ACC_ID" FOREIGN KEY ("ACCID_ID_id") REFERENCES fir_details("ACC_ID") DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.fir_victim_person DROP CONSTRAINT "fir_victim_person_ACCID_ID_id_0facf936_fk_fir_details_ACC_ID";
       public       root    false    230    263    3944            /           2606    72256 K   fir_victim_person fir_victim_person_PER_STAT_TYPE2_id_ddf6c8f3_fk_fir_victi    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_victim_person
    ADD CONSTRAINT "fir_victim_person_PER_STAT_TYPE2_id_ddf6c8f3_fk_fir_victi" FOREIGN KEY ("PER_STAT_TYPE2_id") REFERENCES fir_victim_person_status1("Victim_Person_Status1") DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.fir_victim_person DROP CONSTRAINT "fir_victim_person_PER_STAT_TYPE2_id_ddf6c8f3_fk_fir_victi";
       public       root    false    4064    263    266            0           2606    72261 I   fir_victim_person fir_victim_person_VIC_EDU_QUAL_id_3a079772_fk_fir_edu_q    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_victim_person
    ADD CONSTRAINT "fir_victim_person_VIC_EDU_QUAL_id_3a079772_fk_fir_edu_q" FOREIGN KEY ("VIC_EDU_QUAL_id") REFERENCES fir_edu_qual("EDQF_Code") DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.fir_victim_person DROP CONSTRAINT "fir_victim_person_VIC_EDU_QUAL_id_3a079772_fk_fir_edu_q";
       public       root    false    263    3950    232            1           2606    72266 L   fir_victim_person fir_victim_person_VIC_WORK_STATUS_id_d3c255b4_fk_fir_work_    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_victim_person
    ADD CONSTRAINT "fir_victim_person_VIC_WORK_STATUS_id_d3c255b4_fk_fir_work_" FOREIGN KEY ("VIC_WORK_STATUS_id") REFERENCES fir_work_status("WS_Code") DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.fir_victim_person DROP CONSTRAINT "fir_victim_person_VIC_WORK_STATUS_id_d3c255b4_fk_fir_work_";
       public       root    false    4078    270    263            2           2606    72271 P   fir_victim_vehicle fir_victim_vehicle_ACCID_ID_id_bf7ee74c_fk_fir_details_ACC_ID    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_victim_vehicle
    ADD CONSTRAINT "fir_victim_vehicle_ACCID_ID_id_bf7ee74c_fk_fir_details_ACC_ID" FOREIGN KEY ("ACCID_ID_id") REFERENCES fir_details("ACC_ID") DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.fir_victim_vehicle DROP CONSTRAINT "fir_victim_vehicle_ACCID_ID_id_bf7ee74c_fk_fir_details_ACC_ID";
       public       root    false    267    3944    230            3           2606    72281 P   fir_victim_vehicle fir_victim_vehicle_VEHICLE_LOADED_CONDI_351057eb_fk_fir_vehic    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_victim_vehicle
    ADD CONSTRAINT "fir_victim_vehicle_VEHICLE_LOADED_CONDI_351057eb_fk_fir_vehic" FOREIGN KEY ("VEHICLE_LOADED_CONDITION2_id") REFERENCES fir_vehicle_loaded_condition("VLC_Code") DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.fir_victim_vehicle DROP CONSTRAINT "fir_victim_vehicle_VEHICLE_LOADED_CONDI_351057eb_fk_fir_vehic";
       public       root    false    259    267    4037            4           2606    72286 R   fir_victim_vehicle fir_victim_vehicle_VEHTYPE2_id_41f5d40d_fk_fir_vehtype2_VEHTYPE    FK CONSTRAINT     ?   ALTER TABLE ONLY fir_victim_vehicle
    ADD CONSTRAINT "fir_victim_vehicle_VEHTYPE2_id_41f5d40d_fk_fir_vehtype2_VEHTYPE" FOREIGN KEY ("VEHTYPE2_id") REFERENCES fir_vehtype2("VEHTYPE") DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.fir_victim_vehicle DROP CONSTRAINT "fir_victim_vehicle_VEHTYPE2_id_41f5d40d_fk_fir_vehtype2_VEHTYPE";
       public       root    false    4045    267    261            5           2606    72291 X   report_builder_displayfield report_builder_displ_display_format_id_c649f0ea_fk_report_bu    FK CONSTRAINT     ?   ALTER TABLE ONLY report_builder_displayfield
    ADD CONSTRAINT report_builder_displ_display_format_id_c649f0ea_fk_report_bu FOREIGN KEY (display_format_id) REFERENCES report_builder_format(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.report_builder_displayfield DROP CONSTRAINT report_builder_displ_display_format_id_c649f0ea_fk_report_bu;
       public       root    false    271    275    4087            6           2606    72296 P   report_builder_displayfield report_builder_displ_report_id_642d3d44_fk_report_bu    FK CONSTRAINT     ?   ALTER TABLE ONLY report_builder_displayfield
    ADD CONSTRAINT report_builder_displ_report_id_642d3d44_fk_report_bu FOREIGN KEY (report_id) REFERENCES report_builder_report(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.report_builder_displayfield DROP CONSTRAINT report_builder_displ_report_id_642d3d44_fk_report_bu;
       public       root    false    4089    271    277            7           2606    72301 O   report_builder_filterfield report_builder_filte_report_id_a5498074_fk_report_bu    FK CONSTRAINT     ?   ALTER TABLE ONLY report_builder_filterfield
    ADD CONSTRAINT report_builder_filte_report_id_a5498074_fk_report_bu FOREIGN KEY (report_id) REFERENCES report_builder_report(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.report_builder_filterfield DROP CONSTRAINT report_builder_filte_report_id_a5498074_fk_report_bu;
       public       root    false    277    273    4089            ;           2606    72306 R   report_builder_report_starred report_builder_repor_report_id_0a54a683_fk_report_bu    FK CONSTRAINT     ?   ALTER TABLE ONLY report_builder_report_starred
    ADD CONSTRAINT report_builder_repor_report_id_0a54a683_fk_report_bu FOREIGN KEY (report_id) REFERENCES report_builder_report(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.report_builder_report_starred DROP CONSTRAINT report_builder_repor_report_id_0a54a683_fk_report_bu;
       public       root    false    277    4089    279            8           2606    72311 N   report_builder_report report_builder_repor_root_model_id_3bae34b3_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY report_builder_report
    ADD CONSTRAINT report_builder_repor_root_model_id_3bae34b3_fk_django_co FOREIGN KEY (root_model_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.report_builder_report DROP CONSTRAINT report_builder_repor_root_model_id_3bae34b3_fk_django_co;
       public       root    false    216    277    3874            <           2606    72316 \   report_builder_report_starred report_builder_report_starred_user_id_70388cb5_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY report_builder_report_starred
    ADD CONSTRAINT report_builder_report_starred_user_id_70388cb5_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.report_builder_report_starred DROP CONSTRAINT report_builder_report_starred_user_id_70388cb5_fk_auth_user_id;
       public       root    false    3851    208    279            9           2606    72321 T   report_builder_report report_builder_report_user_created_id_e8133ae8_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY report_builder_report
    ADD CONSTRAINT report_builder_report_user_created_id_e8133ae8_fk_auth_user_id FOREIGN KEY (user_created_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.report_builder_report DROP CONSTRAINT report_builder_report_user_created_id_e8133ae8_fk_auth_user_id;
       public       root    false    3851    208    277            :           2606    72326 U   report_builder_report report_builder_report_user_modified_id_04e38ffb_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY report_builder_report
    ADD CONSTRAINT report_builder_report_user_modified_id_04e38ffb_fk_auth_user_id FOREIGN KEY (user_modified_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.report_builder_report DROP CONSTRAINT report_builder_report_user_modified_id_04e38ffb_fk_auth_user_id;
       public       root    false    277    3851    208            ?   #   x?3?L,J?2?LL.?2?L?&??y?\1z\\\ jB?      ?   ?  x?%??u?0?sPL????_G???e>m??Q?M??t??@?L??B?l????\??oU?*????:????&????6????.??	?????2=s==K=+=k==[8=8=W8=?7|??pzpz?pz^pz?pz>pz?z!z?zazq??}?@ЋDЋBЋFЋAЋE?KA?KE?KC?KG?˻?w??????????????W??W??W??W??W??Ww??bE?E?E?M?M?M?M?M?M?M?/)/*??׃?׋?7??7??7??7??7??7??7??7????Л??[??[??[??[???????????????K??3???-/?r??j?Tˋ?\??[.???-?my??K??x??[^??./?r;?Ҽ?|??_q؜?:??W???????*?}%b??]??????c7?rގW??wz;?Q?*u?Noǵ????o%?      ?   ?  x????r?8?????l??c_?kl??9aؙ?ۯ@??>??\%j?H:?ƙ????5]?6??o????Lf???????+?~4?wT	X?`??D0?,c??i|=L?&\?????S?@u&(E ?x???n?<???k	ؓ? ?S?Y??+6;????M?\/??,?9?S??\'"?R??o????Ϸ??ÙjMB?%b?R?J`?	|?S'<M?c?????8?????j=a(w?N:?`?2bg??~j7?:?s?? ??U?2?͈?2??t?{6?0?Ӛ?F6/t:a(]?J?N0J?*??Ʀ??yM??o??NşS"Bj??JB?I?W???t6~??c??q???Fdq?U2?????q?[7???????-?m6>????h???F<???xM?3Y?!??HA4?ȁ)??FN\?g?,)?l~$?c
?H(JFT)??>?㚙,??m	^?1?($??&)??E?77Y????,w????d??w%1?'????Z?l?????l?J??<?bM??Ҿ????????4?(?`P??e?I???m??f|J"??B??ki???Ÿ???t????%??????XJ?D@ ??
h. ????14_????(H0x݆gג#??Fq??=??i?`{ad??w???'<Q?i?q?5	?F??&?z??τ??M?걦?/?39uXah??_	???V±oW??-??k????X,%jk???D?O??۪TI?*???5]?օ#???1[???8(?S?(?????R?^?Ƀ#?????&<?b??T??????&?e?ֈ=6?Q?RDg?U??^!?s???b?~5??$??Q{*6s???R??9?J?K?T??n??}3?S?Gc{??Oa?%??6P??)??t??????.?c{??????Q??WH??n???DG???c?ޘ?lР ?L?ϠϜ?????h??????<??=??????:???T'N????;?@?9????{????????H??+?[w%?????6???΋??a/??t?BSW?=[?B?u%Tm????XB]??y[ۄ?G??q	?C??f?L_=?#T?????S&?G???'uH????????5???YE ?ء+? ??IW???߮y~xX&i?Pt??PR?#J? ???(??پ?\??????^pLr??㋲:9??L?*ʤH4?kB?Q?*?:$?8?R0?Pp??>???x瞣??)?ϼ8?9?=???????\Oiz?]?盚v??2W?G???xh??P????@퇒IuYޝ޹?*??N?c?2???%??@?H%꭭H??v?????a?????lw?EM?	Y????(K?#?
\??2??d1û??(7Y???W???^<ƥ
?x??wm???i?O6?4?EP?t4?)T?=)MrGz???;??x?????????
???"??N?z?o??r? ???⏐)C???G?n(??' T????͔g?nۼ$?d??<?y]?t?yx?
??J?@???:???3h?j?????y\j?x??{?}?
??c??k?&?P?v?Rr??????T?޹??jg?*?U?w6????Y?L?T???N??,L?c?m???6;????0???5UI?@Q?c??@?_?/8??$??'?T??G<?ו?b?7?h?/ўOx?xrۼf?ͻ
NF ??cൂ????Xk?&?      ?   ?  x?u?[??J ???_1??žqi?MV??8???D??ȯ???讳lb?Ă?,??@O?[`???g!?g0 `@`???b???5???????/G?v٠?N髙??9tq???pujs??'???? }?h, ip??'??_?z?4???>?~????]ֿ?_o"v ey?QA???3nT?DRq}]ۄQ??%??ڃI????~형9???кќ.??0)?F??F?$|!䓼??vvp?l?X?????
Ȋ???q?>?\??d?'?De?Y?l??&ޠG?y?$Je)?f???=???9#??'t ?`?%??&?-???g??q/?<S-??4f??y??u?s?D_???_ȗV??????????~d??_0?C??Afg???_?D?:?QW??M???k????p???ű:?????A??%??S8??՘۶|J??:;??r?u??尙?L?mǉ?4CZ???_??1x4?RF?^?Z!բ?;k-[??1_???u???F??_?z?c?@C???????F#??r?E?Ȑ?9???Ŵɳm??:? ???Kv??B1\??ٛ?ʃ??mib? t?_+-2???_l|??;?wm??RS*???Y?̘???j??????w]?<&d?'?????g?K? ?z?Y????vq?9iC?>???F?O???QZ???7wrƸ?????z%?o|6A?&ƪ???h'??,9?????t????;?+?u??]wػ?#?1Rx?5?L?z??w?7b?F??????[?#ړ?I?8??<?F ̓~Ri?^_??!^ ?p?{??P$?ܟjf?VX?>???8????%s/ vP?J???`}???A??u?dʮ???X
?N??Sq?;???'?kTƮ????*<????"??Ky??B~?W>??!????? oM?6???Gv?-F?y?0?DbG-?}饙?V??a[? 0?â?u<?z??Q?}%?O?D??{N?v??j??~l?q???>MX?S???@??snO?6G? 1x????Yb!?qdN??9܁??3ϯʶ?bK??v?d??{?ЯJ?py??_)????/?S?<M?8C?..ڑ?s?(ᛸ8????z?L?y?bx?oQpC{?o?Q?=????????&?=?{?x_??c8???6O??fw?<?ڎ?J?@??y?o???}???*/'???,ۻW???+????^??QA?? ?K=k?$a?%?q?ǆ$ӣ?s?3WLOI??]iQ???????=??#????#T.e9?[???A??nڸn<??h????d@?a??y?ND%UiގWP=UX??z?/?R?|0]u??ZJ
???A????%??57?S?]??9?CZ2'dkcz?+G?hBOtDW?*q)S?5H???qE4??^A???ͺ??ߥ?FQ?8?n2?^:nu??}~~??g??      ?   6   x????@???0'??]?r?Rl?V?Pj???օ??qL?cJ??oI??{S      ?      x?????? ? ?      ?   t   x?u?1?  ?ټ"?Z?2????$P?Х??1??Ӂ??v??-NY&͔?Ln?x(???z̥?g??t???q9b??.C???+????v??jU0DkW?????ι?:6k      ?   ?  x?uT[?? ???5<?L??Ur?6???#{?dj?????`?i;?????s?w??.y??1????RraI??0Bߙ0?Z???#?S???????bg\4?7d1k?\?A?쭁?&???X?K??`?z??-????~:?W$???ra??#??N???Ɩ7?֝?ic??N\??K?Y?)?[??????{?Z???[???	????8?? =Ku????p??A_??T??ONҾC?T??J~~{?????TӬk??fNh]uH?h??*ڃ lt7?A6?\?]-:?	?R@?}ᮚ?|??Q?I???w?|r??i???Dz?7??$???F???p=
??3Q?qk*I???im?'׎)???$?lk??*Q??????^?|n?U?#??QO?Q???2?+?2?1???Y?"R7ݴ?@^??B???CO??0?l??ʏ?7s??(?$??]{?}???$???H?? ??q?      ?   L	  x????n;??ӧ???DR%??o??p⮝{?~????HSڋ???'???_??Oo????:ݟB0???????	?_!????x ???_??????????0򃠧?????k?$=??"8_??u????????4k???????F?G<L???/??????z?m*???????t??n????|}[??????rz???j??d?'?=?????????e+>???Ķ???2?????n????Mp???x?+~։}\?????@?V?.???7_?e???f_5ވ<???x9?߯?{???t?]o???~??<?ab?Y??w??Uf_e?????ފ/*D#?S???C?Yv`?
xw?t?-N}y ???L?'m??3$80b?R?>????8???????B6?GXzX?gBp??zB??p? i?l????l`V?b3g~:a?a?A?sC???Q???9#\6pR?8?Ն| ??0I1ޜ???L??Gz???a >+??<?e?p ?tM???@6???1N9?D?M6?O?ǉ!M?KȞ=?7?#{^}????ތ????nC???t????e???x?dށ<Jǫ?Q?)9??L=???}=???????Jf?????:??????}F??|9 O)Ú???????????j?h???>?ӿ:?R?C???7?p?OB?~*????o??`?h??6"?????M????????pCQ=??&a
뢙t8H?w<q=??5_X-d???\?????S???9???????#??!?^??s?qN?u?0<?jЉS??pFX:?t?pZn?,?l=li"???4?.?7pQ??&?=?fD#??a?M2???ZX?b?Yu<?a?=a3??u?0?u?L4J#?{8WS?kƦ? w??!:???:?c??G??Ѥ???(????1??.O?%U6?bobsDZ<Bξel???4???/??wo???5$;8Ԭ?ɗ?t??nZ:?]#Hvތ??q?y???3??V:Ԛ?=?X???2?|?̻?z?? ???u_??d?Ep??8?ys?䋹?1??A?5?z?y?/???n?Y?%@R/	???a?????TM?5?>??c?????גLO?F????$???S??>y?j\&??u>?ϟf???TKRu?D?xQ???<7EU???!B??@I?US?_??4Qm???Z?iR?ŏ?o*??? ???1?L??X?2!?c?#???????????????|9?BY??-??t?=?z(M!?????`?;???}?z?^??;??ͭ_????s,???????3?9ǹ?	???!+?q??.?t;??????|?//????[^??
2%??????P˳?Ӕ?(*o??(;MQӔԺ??~S??>??ۃ$s(??z;	z?x??M???²|F??:?Z?ڦds2??S?Su8:oR&?x?Jr??k	?yM?lR&?y????vA<i??I6)??L?Y?????4a?????=?wa??[L??Tf??M?Zc?z?D???ůl?/I??.5??Q?????Ӷ??r?3c??=?Z'??̿?v??N3d????k?#??}*朄f?=>auF/GK?4؄?????'\j?Lq??)??m?#?:XG^?{?f3Mh`wX?S?1)???n.T\?X?\?'?b?	?0?0k?2??UL3I???B?S?\?? ???4???t{???KpZNwʔ?;/???C????S?4?<OuTіMc?5??p?-?o?]ۊ??C???dN?e8?o9t?5?n *T??s?0???*l??c?Y????x?i?? ?v?F?t4?zL5p9m?却??1?i????????6?2w4?}+??K??ͼ????i?:??C?8l?ea?a?թn??-?s9?t?p???u?? &\.=M7?fc2?
?l%?p?????Vg???ʹ#]:ZK?P??E?w??=????\K??>P??????? ?:`]r3???5_???߫?2?k?fZ??????M???v?/??6???,Mk???g0j-Ջ??m?^$??<??D??&ޥA?q?(??c??Z?p?G???7????$t?ߏ??}>~?~~??/;?f?u???z??<?=k?$?}??5Bc?f?z?M??tz?=qu??"4???օ=???)??\??[ǩ^???ю???J?G3{??@#?=͵z??????:?k???;?,^o?Z??Օb4w??WzZj??>J???h????$?r?X??ؼ?	r????S?Ty?#???h??y:??9?4?6???l??D/}:|??R筮?5??l^?>i????v??`?? ?w?O:??????㩽;hP??C?	Nǟ??&dmSžbu?4(????`?j?^/p?V?K?????ӷo??Ur??      ?   P  x???ˎ?8???S?~??v??Ytwt?&?v4H ???<?-z???W?^	D??*????rp?S]??^?[U?iv?)Y)???ݩ=g?Ы?$?0c????~???{??X4a?@l??0^?|2FL2Ģ?Tn????7c?'o??j?????
d`&^NBO??dZ
???c???v?x??L?ky/z???X??u?oK??]??e?F?? ?j?geXN?J???8A?K??t/J?=?w??ܼ???5?,O3??Y^?????uƷxA?зA?~B?q4?xh?7d??pQ???????̰r?s??ZnF?K??????т??hE??,z&B?f'2?,6Yj&S̈??ɸ=e?????d?31??K???%?7??d???5??.???O|zP?(?jv???c<":B?Ȱ??6??????f?Z?k.ǵ?v?ek9{?^_w???x3?A?ur????D???/Mnh?	?T,Zܛ??*?????o??ǐ?asD????{V?u?n?ɪ??ѵ2???IW-??n*?|щf4?p?ľ?1k /J?D????"D???:??L?3?x
?[?80???f{?	?Sȹb=??A?
xD???ҙ???ap??3?(???;ݔ?ucZ?USzʚ??p67??tS?Ous?h?hhcrϽ??Nsg??mo??͙l?T?w?ڭ?@?3V?C? ׬?$"???)?`c?W`-?y/%?????u?:s?GހUU?Q%Ђ??!??u)?a??Eˣg?E>????{???f?????Q7???\?2s?:h?fu?m/????O??????U?n{3?7?BO????R?&??%'??2y??06?O??(x?TB?	?x>??7W\?,?I??W??????x&??/g?dG??ACӱ??~?[?ڡ5M???^燕ާ?Z??c?@ ???D???L??cс?W,????s/hCh}???S|z*Y?h??:!?"??5x/?َ)???ݙ)?ć??y????Ǐ??2??X?I?j8?Z???^?6n?չ?n??]]?Hm?8m?Að??(?????JD8C@??1lѸc?????ܜ?3|A????)?n??a?+?C\?*?*t?ͭ&~?+s????˟?8h8#??Ⱦ?3?K?ݪ??5?E?jGeZ?̓S[v>?^?M"??M%?R?cƀL??????/5???0??
'` ?<?E?@0?L
??0?Y???e:??s?O?G?#&#?z뎮)??MW??X??J??8?u-Ϩ>????wt?#ՙ#B???1k?*P?#;k\i????UF~?.??i?b????akhY?ήs???ܣ?-?????*Ͳ????m۬?_자???#"?WhY???????,?B      ?   ?  x??V??? ?M????ں??iK-w)? ???}?????UW[?茻??prrB??N:?:A??X?Z?L??N?? *?*?}/{???FD?Lq;?-??K%????
a??U?AL????*9???v^/??p?????u ?P??z???Ӌ?d=??_R?#I????2??-$??GK?????țu?#+r????|,??k׍???Fhu??w[4???Qӎ̧?l?#4W?¨
?z???HXg$?Yq?e???P?d?$??????E?5g?g??7??b??????@x>?vΧ6???f?????l?'f???	a??c?dŭ?,LVdN?Ɣ-5????Y??Y-?L?.??a??????Zd?z'?p2??[?gŉܓ+xU???+\|=?l???j>?;??&?P?d??g???bnB???[(`??P1?~??B????+DǼm?⛬u}?????{R?:<?_??=i?{??sRw(??D?Q99?9?:???	???T???/!???|Oz??jYsTE??0wED??X???ZU?Ȉ???S?R`%??_7??į?
?????媆?Dc?4?"YA?????@/vs????b?#?????d?V0???%%????????1?n?3??,?e???Ԇ???7̏NV	?S??OЏ?i?l<.?Sqc??M2???Y&kF??@;??s#1h??#?oI?K5JZ???D?+vh??{?'?<???<bC!?5> ???ը?ΌHr????N??Y!?R+_[p?l?:!??.uz>??7??5h?s??7J?ų??{t?~??7baE??j#?x?T?Řkss????H'?; ??^g2?e?q?7??>~4Lo????H"??v ??v???꒎1d???!>+QVG??W?!'???6?????@?????~fY??̎      ?   ;   x?s????t???M-J?L??
r?J-?LI?+?}=#8????ăӿ$#??+F??? ??D      ?   "   x??????S?OL?????/?H-?????? b??      ?   ?   x?M?A?0??+???.BBm??X??F&?C?PN?ή??k?ɱi?0Mh??\Gp^iƒ.?\???j|?1???=Z?Q?I??+????H?4a???+N?<????	???+???w?V?m?Dr??yD?	?V8??3 ???R(      ?      x?????? ? ?      ?   ?  x???Yr? @??)???- ?X?AR95???4N<??H???Tx??X?X<??T??2!Yւe0?\C??(?b?????:?_P7? ??hӇ??< :U?`I*K?쫬??;?HhnB?"??????
?8;?f;+?g?<u?`??|?<#Ӥ?<??VsG#٘j;??"???=Lx??????FUz?BYP??AY?y??:|Zޜ???Z?T????S?֖??-?<????T?x??`u?ƃ??@????G%L???ցQmӀ?A???d:?QI<f???l ??^???u?FJ?b?#?C?	?L?G??Sک?M???(`?????E??????($r?i?7<!K?/????]?Af?????S??>??<l?_??3??L?h?F?#h"?dl?2?'tnO?Px?W菇VP$??2{?gy&?odAv?}??O8C??!4????WM X??????2ó;7kI~???b?CEA?"?/]??Z?????2o?B?:???u??VprferF???'<?8c??q?_04?L?5??!?ņ????5???:?`?o???B?A9?n}???tդ?F? %=???G?͠??_????
50g??2IV?q? k7_Ӓz?\hs?Gk???U???(????A?'?M|7Ґی^???\?M^?>u@9?Ũ?H?7?r[X?ֈ?h?Sa????I?]aLMi*U?d??O?????H?      ?      x?????? ? ?      ?   ?  x???KS?0??7?BK:S?$[~,eI?Mb%?1if???дC????J6)6
?,?G?e}??PL??????T???xev.B}l?H???#>,/?m?hn?\sd&\! `T????r???j???`&?ֺ?s?crBz?ߡ??C???j?r?_???o??׶`bvP????c4f"΂??&?H?(?gi?? Cgܢ?" ȡ !]?
????G(?y??)?s??|???M?L?????em5??D=???!^hGUu?h???ì????f?6X?hJ?x??h
?,?۶?=???}}yy?j<L"?ғ???.'&e???ƋIC??'????Ĭ뗩;?V>gZ????ؕ?Q??a??1?/?7I???<?r???C?7???XߺGI???????????[???]??5?gb?Sp??|??i?ia'Z?9_?&l-׻??v??~D?v??????A?Q??H'D??,?*%,?????????????zt?????{?]?D??ͧ?{) 1?<??6h?M?9??wGw?<INH?@?????ٝ+?????:?
Q(={ ?]BҞ0?	?OH??2̚8*??k$yU?e??9?:ʴǾ?L???xu&ʒ??}ڶ3[<??f????޾Ƃ?6??@#n???P͸??f?fµ?'c???eJ?????I??pb
??b??|l???q?????H_??d??_?
2?8I??ȑs? !cQ?b????x0?%c??      ?   x   x??=? @???c????Z???
c7??
a??+֧OO??Mi??Ǉ?m!?eF#K?P?????dv??3?q?+Ӝ㈯??̴K??<?o\?x(K[???JF?J????}?R?{??ǣ'%      ?   s   x???(??M,??
vu?NM??Kr<@<?????"? H?{??{QbJibI*W?;g@~q?\?%??%????vt???/j????????,IK??q??e????q??qqq ?)K      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?   x?}?Mn? F?p
N0I??K??b%?#c?M???QQ?f?2?????AJ8癒J??L$?!VWfa?k??t?PVm?P????n??q?/?( qcX??y??gNN?,H07?G5???sWv???f??qN?$!}?n?????L?xv5i??-?|}???5??S[????{;????d??w2???Xk &s<      ?   ?   x?E?;o?@?:?+??"Ƌ?JǤ??b??*?V?2?Y?@??gYI??f4??7(??CE-?s?{xㅥS??3ܮLo?????煨??^G????_?>?ހ?=Y8?q$۰??????? c#-{6?p?t?(,OQ
-Y?p???nA?$p?$/???ዜO?Ɏ???#??$?)s?/W? UEYW?????q??8WǍ?^(?~bmT?      ?      x???K
?@????љ?V?#Z(6Q?Jp?	?????)?E6?8?J$?a?e???7o]??^`??xp4׶K?f??{k?M;?8??i\W?q[?J?Β&r??????????7??1f?B(      ?      x???k??????(2?*???`h??*:??]?&?W??MK?h6?+?/l?֮???i?]?vN?]d?Id?KKu????4?]T?]?.N?,??~n?6????*Re??8??l???U~U?%Q?}y??@?浹:Wnͩa?U?CC,??6?"???U٨!&?L??u?4?S??j>?w_??ڸTC??*{<??%?N??b???rUY?)?T[2}??R??!(冨?m??ӳ4Ҏi$?_?????K???o\L?????Z%Q??8??S?3???|??q'g?&?kkU??ݥ)U?z?Sl?E?r?V?|5M;7?9???N??\p?2/"rNtQ?g$????pU'??vWVmr??R#QG?;2???_??_?f}uy~??#߿?7?/?}??Q?ȱ? "G?????G?MM?C???J}?D?>NJ??Kq? ??Y?????{?͇6Z?????k?u??%uv?%??q?L????%;??b??hnzɽ?o8??zۧD̃??X?A??R۴??????z??q??D???8???bJ	$?!??y???d?K???ȪQ2v??숵H??i,}??A??6??k+?u???$????8.??l???tC? ??uYۯ=,^?????\H??D???ꭧR????pª???
??!Y?QY'<u??Z?ki?R?T????j??3???M?PU?$?[? $ۂ???Ш??Qz??ec??5???Nv[?,*?U)Tɢ$?-_qq?J??fB? ??g?yA??9%?????
?P?mm?/?ǽ?????]}?{?2?\??????r?(qh*%\??j"	?h%E??q^?2?h=;?U?E;?+g?6??E?eV ?:?
?,?>?J,??ٶ?ϋ??qX???S?Վ????S?=?[?3VS??_?
???L= x?l{?*?X"?C`?.?Zpie?w?&h?Q*?$CG?E옑e???3&o??ib@?????I?yI??u?B?ZRƻ?s?E1??????f'??9?QV:	?UO'I?
Xz???DΉ??Ǥ??|`外A?????19!Ft?QCQ????5??2\U???t?-N_??a?.w???HE??????AD???ܪ?!?!UW4?????????ჳ??j?'?ZÖ??>:??y??PnCU?7?{n???4???z?b@hUN|9???5???ԛ??<܇b???z\??l????M?m4(???BnhgܼN???ϋB??A?d?????i??L0?ihr4?dH?S^B@&U%.j?Q???B2k??Z?x?L?J5El???U?RQ?w?g-??5??5b!??
?ĉ??"??g?@)V4??<ƈ??p5??E??Z?*-h?5????e???4?T??ل????"sE}???0?\?=?9?"G?/Yߠ?t?'?MB??|3!#??
?H????V??,g#???&??a?{WCe?K?Q;??M?j????nuQCL?M?j??b@F?[dU?n8???@@H?f?$?a"w?%?J?????U?Ȅ6????{o]?誒?????L+?v???P??YE??Iw?Aa]3m??U?S|r?7Pj???Qӣ?u
T2?:?e޺?aB?C?u???JgX8??W??Wܶ????#h*?#??@[?	?BDF?CM??zh/! ?V???t*?L?܁????2?J????J?????????LLݡ??{????&⼾??? ?G6J?%(LP????#p?i?????zA)?qlڠ?{?ر?v?U&?5
C???kcq??
?w?( X???f??C??*??Kս????܍??8=?ֽ?;??i>?Q??R!F?]޽x??c????ZP~??x?}??9?:h;wo????y?~?D??~?F?<%?y?B???{??<?8?N?RX9A?1?|??X4??m???Q??a?69S?o?*k>?☲iC???r?D+??pd:?,?A?8?G?????_??N??ƶ\Ђ?w??????Vpn?P_?D3?Ŷ??}?ض(?#*?Ə????@^%[?\??JyX?M?}>? ?E
??gg?+?~?*?5X?C??`?9?}`۫A????6Ϫ???z??[n]tC?)???R?0???B?U?k+%?ˤ?#+R????V??`?[}?A??^??'?x7??qk]??n7????!????ѡc?`ג??K??G(?CTȭ?}{LzlE?jD?~???i?b>n+?gj?4|?7?΅????H?n??S??j??(W????j??????d[??4?????i?Uw??B?SCL?m??CP??[f??.???3?i)?n[QCL?-?{?I??sbZmH?z?}7???Co??]????C%??-?)]??????.??'mt'w??PqC?{??g?"Rl???Rk񼁖ǵ?WY?^??<?CN??]M%n?;???&<?T2?f?]<?U3D?^9ށ?d?+????2?0???}??¿????>b]??#XȤm-????8???RB???x?.?6????M??`???ެ?V??????uȃ'??Nȓ_r??ό ? ??`?0'??`?DEI]???xګQ?G?"~o`????Q??RjM??g?Bfo\A?e?j4?J?????e:????m?R????????m?`u{߶?_VDÓ?抢?/??Y1앻H?
ao<$Ƭ&?U	?,?=4H???܁c	_?q???A5????	?`?y3Z?A???M\y3*???????ē???DAJI$?? O ?VvHM:?컊?ưD???=?????2,??L????iAui9??????X?J??ЪÖ?q?Bۼ^0?g??N??8???R?n!F?????t??L?oرf?8??̑???9w}[v??<eڿc?8??%??9tw6???????}??????դ~??ܤS?????&\?ڟ?????u{9?O??^&e?????̿ط??/??(U?߆??څ?"?9?;?X??Ύ??x??.???C?????Ϡ]n??_????>G??a???Ө??C?A?C?????C???0D???|?????д???iFD? ????>G??zr??c??Uτ???yI<d??{?;Dl:h x?X?F??1c???????w?2S?]^?:??? P?b?u?>???֦_???qG???	(!&???o??DG??ۊ?H??}??<UH??r?@n;6s?t?y'J?F??????hm?v?sq??g??6L]???5ʐĞ?[J?LZD???DZ5?(??c??? 
?I"???ߎVh{?'???g?oG7???эX??W?	#??i?I??rg????????/w???5??=???f?bq??{??׫?/f?PE??o?<@??i{5??.B???,?ſ8?ٌ???s1??*?՝?@?>o?gfpȁ??MCE??R??A???N?|?'a?-?o_??ڮ??YU????W?Da?g{_$?m^?????q-?)?^<?6?R?k??r)?l?c~?uְEF?K4?˸?^??w/???=??)d??:????I??7?|8gk:??B???}?????[?1o?s?HQR\1??k`r??k?~?ҵค"???J??9?5(K?{("rJ\g( ???!͝????2C<?>?}??8??dVӟSWyDFN????^~??髭?j?$?9r'??쌺???1#?}?d??Γ???????4???/?lw?^~??Uh(
???IZJ????I??{V?D?k?ٸB?H?M??
?N	?X?ेHZ?????N???z3?p??7!godZ?D?.?K/Ǝ|??J?U)фRB??j??:??|????쇯}?ں?jB?%Զ?V?-?7/??Pd	???:' ?b??????/?Z1?(??PHI?j??c??)??P2}3Yj???C??_????[?s~6?p?-0????^?e??{??td????`???ߌz?*?ꡫD??q???????$?ܔv^?6??;a?$6???$?NJ?_?N1????
h1"??#<????y??߿???Eh??0?o???2?tVxL?w?QCD?͆H?ª?Z?w%V??f?IaUL?F5??N???F}ס??????D?F??u? ?   ?p9ߥ?>˟????Un?Bn??ɛ???.?gݷ٩??I~?_u!_=iorCrÓ?*[t![<???G?G?3?n?C???{?/?8r3l?R4?8?ܮ?????I:w?o?!???????d9?lf}RB??4??I?d9??;Z??&f?i$?|??0??????`?1??? ???%???))?z)??Z??7XÃ?????????fb      ?   ?   x?u?KO?0?ϳ?e?α8??@5>?ɲRۢR?C?{?&q?>X?3???5?G?X???}?=y8?H(???vv???Y ??_-??r?l`?ң?b-:t?AA?-h~-??k??@I1???4??q?g?M??6??O?Ʌ????<l?????v/?UP???K?~'}??#???l_?2???z_Fc???u??k?El?'+? Nת$?֪"?q?\?<!H??qD?;"?B?W
      ?   .   x?r?50?J?MM?L-6?
???|#ߟӿ$#???+F??? g??      ?   K   x?v?.)J?L?(QPSp?I,?r
?t.-*K???s???K???K???`	?J?p????IFjQ1W? ?G      ?   l   x??1?0 ??~????????%2n?ْk?_n?<??f}?K??Li`n?h?Z&X-?A?u90m	?צ?#?Z?????h??8ڝw?/-5?[???%Nq|=??~"?      ?   ?   x?e??
?0???)n????o?v?????Q/m 4?L???z "?ߏ=?z?jc????}h???Ǩ??-??&???????$(?I_)h???????WE}f?p&n	?o?A???U?V?y?j?;	٩c???e??~?c;/      ?   ?   x?M??
?0????)?	??miQ,Qq?&$iL3eL???v?????9$]?~P?2Bf????2.TH?KȂfR?nl?Ha??[$??x??N??#J[Zout?Mx??_?R0n(??Ż??????[?:??L??y??_??k??1B|??B?      ?   Q   x?????K,???K?Q??L?(O??
??.I,I?8q:??e?'?p9q:????UB??A???Ee?ɩ~? H??      ?   Q   x?????K,???K?Q??L?(O??
??.I,I?8q:??e?'?p9q:????UB??A???Ee?ɩ~? H??      ?      x??}ٖ?8????+?t??Z?.[??G?RX??????u??;.6@P???8??*X?8?  ?P?{?g??E??~ߚt???<??;x??G#4??d
/@Q?Y?wS????ځ?~_?g?????P4?|?/m?f=c???7??f?6????k
??wK ??Me????8??t%?t??ջ~gn?ݐ5?p???+??qUȐ?????s????}??W4?????v????d???go?k???+t??}?/?ߟ?+?%k\g?O???gox?(??T~?]12?p?8???e>?X?׶???I?8Wp?LU۩?@???̆??3P???6vf?]I??3????F?3??pf?ے?$7??/??F???wEQ4?{?i??'2E?5?1r???ƌ??:bv.&?
?2?0?&}??????g?c???
??{@?Ɍ?f];?????6|3&???PQ??y?Y2b3?Q8#?????d\???WSt#ƅ??r?(???
?????-?Q'??>??A????H1-???i<?ƺQ?en???m?v?\???U?sdum]?@D?H??
?϶W`????`?DW?+???UH?&?Q???KB?5???J??n?¥????I??4?8?CCҤy!?=???v??g??knm?8?$10ɮ\?r?x??????i???9-ZM?С(?6?Cx???+???]???W???h?6/SIv?Mә1?+?X?y?+*Zʂ:????Ͽ??V????@??5?B?R榾h3?1??!?I?i?
???Q??/????`????@?dMi?̝f?~?*?????(?$Ze?1t3?,?lcI??Ч???1?D2?Q,? ;x?1@$?B_$??f?g?8?H????)?)?i?UÐ?@^[bئ??????%D??)M?ԏ?9 ?:o???}?Ҝ?$??.???????4?qp??1??wڣR?ƙ~:?%?M5?>??&?4????)?(??j?GK?}??ZBBOHqȭ??? ?ZA?Q?`??E2?>?(u??81 v??QA1w?/?|?E|????SϿ??ط? ??U?5E???aw???&?4????N?~?	???M??\
ZC[?(:,^?b?1X?V???1t?????>?n??y??a??L?d7??a???m	:??b????F4a?-?????Es?̝hub??3yl?@>??_rH??aqlrmE"K{s??
XZ?As??ӂ?z(S	?+?t*??ćc?8??w??[ϓ??9?K?x???+??7?$?o??U??c??Ɋ?k?0خ?'??4?<?Bs???~?`???g???+`D?%MY?\#4?+i+{?ߒ????????&?+?Ħ?q??T?!??m??W?&?ת??,?]6??w????2?.G??7??Rs??,&?o0??5??%??`+??
zug?
?=?ibM kl?y?Pg?u?W?]???G?????9?$??ϲQ??CWp???ޔ?v?bL?c??R??k5]o????&/.
N .!gdp?l?  %Au???3w?ZA?CR?7????!?֠{??ms??ŐRbɖ?C?1<?T?5 =o'{(jRs/?k??t? ݜ??'$?.4?xRD?S?Rh?}????WjJ??a???|9hF?^??????۠?i1q????f?{n???#??ͮ?«?-+^????~?/???0W`?A,?C-??d??jJ?-???v???+\?m?-??X?~?";??,?Y?Ơ-琉????˹{?X??5?L%?q?ᥩɶ6??Iӷz??t?u;S?-C??E;?? d?f??????f7?];??$v??N[?e?]?;	????~?oؔ?v5?B;??A5% ?.??L?޻z"??Г?Ob??q?Yh?Q?⁔???׾?=E?????n);? ???i?3b?!??9?[EY????N8?B?Z:?@??d?c?iː}q%q?Ț)?Ng[?J??ZJe?i?i??&?|/0?YU?2P??z??gޙ?b?0?<?N?Q}g;?~]?F?1??3p۝?bνM?????~bs??X???Ba?	?Q?!?p*??bb@?<??'(IRÐx???kٴ?
"#?M??.?e???L0?
4?_?6?Ye눹?n?ZRWi`?n??vaN??x?v??cI?(?/??V06??F???e<j??Ne?u^A?^4"??֙??????D?nt?3w?U?v?Lw?$8???~???
? ??????? ,Z?h?0?{?ͫ?8??&??L?dSO?c??KP???L$+??????7????????K졡-ۚ??LG??rM???7????????w>??$??a:?ʅ?O!?<4 4??/?J?\?P??d;?N?u?w???x???q??3?e??jk???\?h>*sSS?r?+?j/?Z??ni??A ???ᐞ̈́?Ǟ?]?????B׆?(?JT#&?\A?1U?????2???挻??2???ѽ????F?J??CƁ 	gʻzؚSm ?:?4?in????I?3'DɢG׊??a&;?dZ??{óۿ?퐺?WX?آ???r??(?Jv?U?$??KeR?g??DkD??<?zJb?
??D??kꍎK???	?x?Y0?q? ,?q???{8m?h?o)/YC????mSҾ???????fe????nn?Ue~?tw??`?F?k?J?`?"L{d?D? 7?q??[?K5??#??m]-??d??{G?Dv1CfmB?@g?L??r??,????F???;?Y?5?>??|ڗ 	ݴҿ?a|???j?!????)C??y?Y
?Q?,???+?e????8????mծ?'Se???????E???p??????Kߦ??
????/?uj)??軂XYIr?SeQbi??41??#???Z???\?qb?????~??`?D?F#;v??	?sΰ턒??͗*?	?H??}G"?u?a时!/?aܥ9?b9f?c??n?Mz%?3?>???'??q??3???v?V???3?m?iau?
V???[OU??v ?W]=??nF^??]?q??.$???b?ZIQ?j?w??????pV?g?%/????dǨvv>h???C?7,??a?y?ٕ0?ऴ?5w?r7?Mc???A??h%)eY??3??
?y?m????.0?#???k~1	??:?V]?$bc?v>1???n??4?~??DUߩ}?+`?#????,?z?E??H{!S?d?81+#s??<?f)??@??[m?"??s3?iN?vNi??ǉD}?[ɞN>????X??hF?BC?>Y?W??r?????d?ҫo??7E<?yX9xE}?	??
$ֈ&??i?}?a?]?`╛h?UF?????ڮ5A%{???dك@????H ???k3܋Ta?A?`ߝ?j,=9F????%2?L??3y??w???Q\\?\?:?G?/??`?v?Hn?F?j???|??f?ib@??T$ ????????fG;ln?9??h~nmE@?d?????@2Whk???K|?'?и?hǟ??h;???.???????7ǶJW ?l???)&;?@?(?;_V?%9a??/?M???ȹJ?G?V??v]????@f??1c>^??4;?jϑm?+?I??u??)|$Eeh??7y???j???_c?ݾ?鸝_????	???§????pM?η??v!?{??Ot5?????E7y?F[r????=2??}[?-`י+?^]h?S????_ھ??_?U4,??V??UDsJ? ???????ym ???gTИ̓??sR??tY??z8ͭ.K??ӫ??=????
r<X?X?P?4?(?|????12?[Lj.*?????&???????zښ?zj?9u???k???????p;~6?&}>??Nh(P?[?d\???e???<???Ҧ?C???x??+3?xZ???h7.T?9???t?-???2???]q$uS?`?i???e???~?}? ???M?&??.e,:??>vQQ???U??G͉%ӂmq?5
*@?+?˃k? ֖g=)T?Ngo???F?&?3???:?mE"\L?a???L??x^O-?jِ.?N?w???׵#???? ??|?@Eɶ{r?2[?k? ah&Dx?0`>?J???8~$???6?w,:????LQ?>b?X?0(r    ????k!J??? -b?l?U<ؓ??u'?i?}̀?Z?ݨ??I_x??=?dښ??H'?ر2|?W???+p??Ũ? ??x?o?C???|??
?l?K~?ك?m???굗+;??ۮ???????š??T?0?+-; 6????at? ??? od???????i??H?????ź???OFl??3W`?Y?R?:???4?u?q2s?$2?=???????A?3?(?%?p???(`?H\KnYFcrm???Rv??s?ضl?Ju????
.??`?~??p???$?ae?P??վA'I?7??\???|o"?(F???P?? FJ(YD?a ? ??v z?募s????3?K?b?ϣ???ҌP??H??`?^?!"Pi??%? k?!8Y3֪??W?jٕO??O??+???2?D	h????ح????D??\yp?z%p?$Z?????h?o? ???A?~%?r+???O:cq`?!7?pfK?*??h.?QȀ?`=?Hŭq??-	[?{?2F??.p?NPz????A??c???,? ?i+??fpP?b?x?ɚ?????M%p?%?? ?rvC?1Z?i?w8??w?C ??m?m?P??W?????'???wW ??W?jĉ???{????mK?cI???3=Z??m?g~r?s?+دm:}$x?????@D?13?!?XJƀ??E?o?01*??W???B????M"Q???????L=d???#Xg???Mv?h?қ??????M?W??}?S(R߈Y5LĹ	אS?R??	???A??+ l7ϐESE1Ёm? ????!bf???!C???(w`?:?u????l??
??I?0?#^;?7?pd?b?J??,?bt}?#??x??h?;T9??B??:?GQ???+M@??_??=
c?|f?????n.$V}???Ȟ?uG?gy??(??`?h&æW??f?Q??mb%y???#WC}^???+?vTg?;m???ѢYe`o?U????
?M-?m?&ΖN???E,4'?ͮ 4??n0h?Ns??Ke???:Ӯ K?h?Ų?g???E??????`~ag??T??^
-??M?|???x(?y?L??B???ﮰ?4aiB?????b*???k?????1 ??2?+????iu$Q?O6? ?A?棱/<c?P?˥0r?????????E??l?؃??ȿ?>(O???2簯?oٗ?B???/ ?H
?M?????f??l?0}????~jե-??{q???򉝺??$!Y~???g>?????'?ȣ??/Uj??|5?????????H07?4??7?8?yA?n??@
?????r??k>???!???Udn?+]???????#?=/???K??? ??'X??.e?d???WWPS???????????c??s?qT?s?k????ܷ_|Mp??pj?iD?9 ?d??r?'e {jf?0??rj??-?a?ڧ?O?FMsU}????ւ?wq?)?!NJ?φQ?U?R????(ħ?hh??!(?{?Qm??1N????H8?	???d??f;(4???|/r_?#?k????n?DH?m?v9???{6??"???OH"?????^??h?i(??
??8??c*A??:.2???8泄*v?<Vw?0??W?=???=@??x?,???f??6zH?WE?vâ??ْQ??v????IW?̇%???Z??'"??1+?+(N?;Zp??1w7˟Cq?2?.?6q?A??fk??
?u,??9<y?Q??5?B??B	?????y ?F|??[Y?l???5Cj????ja?3)?L-|????F홏:?????8?C???E????ę??F+R^ck㓟5???KE??t??Ӿ?(??«#?R?p?H?h???!?Ƚ?4???Fp?}??1[=q?w_?!??%?`????A?4?)??װ'+C???؃?)??Bv?\:?}2?8in.????Q`[?
,?_?'2F?,8[Fq?I?rdc?????H??e5`?W?"?%i??
?=6?x???d?ۗ??5֖ǋ.??F??????]?U?GF?/	?Jy^?????^?.??Џm??.??(?>{??>??F?h??mnt;Z?w?4?m0EWC?3?ݥ3??*?n|???????5j?P??Q??!jtk???cd?EF??vD?L?|m?1?V_t?)V?pPR?v4??v?*	?M{?^?ҳ<v??HϺJ?}xj\.???~??yW?^ԚQ???>?{?
?l??B????44y???X??ѳ???Y??[??f??i?ā??7s??w??#.+?)-??V ??W<?ĵ?j?k?^)^??sG????J???5?6W?"e?Q3?9<0?:x???;??C ?dC??[}C?H?????ڸ?U???`??Kp?5?D??7?:5??G|8N??=_?Pg? ???v?i???H}???+0Քr ?i?<?J????,Ƕ?`}?T? L?rX,n"????ky|??????U[ʱ????WxiO}\=9??OU????ª?M???0캂??Eg??Y0>y?????NX?MlP&??#??u?p
?{?|k~??t#<^d??	?c???_|ږ??m?P?|??%qJ?5?X?pF02Y!???F???0?mBD??Bo???*??B???t?[??j?tg*g?D?vDE"?҆-3<Z??@ls??#zR?$?u?J????+?`i?wR?~pb?G?+????g?ڛJ?*???[???????9?)*?^|X??? ???׋??\5?Y3?īH?c?)??8v%L??'v|]???[AK??q[??7챱GhL?]GJ?G_dM:?fO?3?#?
ǔ5{ ?i?s???A?{?w??0?$b6d?h?<??w)/?
z^?m??⌹6?%JQ???{?????%?F&`??9??????%I?{f???#?^}?
9*??Ƣps,??AC`\?ES ??.*?M???4(?-f4?᪶??)?aG?^G?dI0ۼ?QY????J??z????e?*q?p\#?6???鵛z?k?˚B???+H?L???? y?\HL+m?piX+??kٱ??@??50?n??mS\a???Rs????O????׌AgW_>$?FcU϶Ů ? ?:???δ}?
?'?????q?8F?8T?p&&p?c??e0???Ȕ'G?????????Ξ+??<?????????+,e??wԟ??X??*??/??0L??ſT??????L???^??gop5??a?(??\ᜋ?Y?	?s0??0p?H?f???X???Q)??q~?J???NF/????NO+H,????n???8ї????iIMgP?@?h????_???7n-?Dc/??'?*??zX=???%???\0e@?@?)?6@UF8dݘ??P??$?{??m???5*-?+?A???Ֆ??G???.nM;????s-?j??~xs?}Y#?WXvĝz??G?nyA?	???
?':?6r???)???#|???1???#ǫ???(??2U)G??v7JA??W???c??m?????A\8jӆ?Z	Js^z?K?9?H=?4???p?6?????LjПQ??g$_R???ڜ1??? 9?f?^???4v3'|rX?7<j8??????"??Q??Jv0??"P??o????????o?ު?Y?J?	I?l?b??????#????Y????H?????????hx8H?z?l?\??*a??????z䌞Fg;,??$??w????p????O??WK?<??$O??6NSc[b?e??.?sHk???d??`?AOQ??v?-,?>Ŕ??_ؿ????`??8?=5w?4?????p???py??q1@??-@>3fT?F}???p?;9???Y?q+??lޢ?^E??????'Ɍ????lj??1?65?i	???E??̱??V???L?<4??c?%?L7]???W?+?>??'???b?f?%??v1?c??7?٠??????F?$Q?Y?Ľ?ލ?uײ͋?P?{N???    ????g?`??A!G?Xr??T
ңE??w? 6}??+??LsS???b7??nB?_???s??Ll$???2???9?!P???<??t?ϙ?:?A/??~?i??l?4??I	?gW??ۤ??t??> ȴ??e>@P??&?I?G]?ǋ$x???????8??eF>z?,??9#???/3??&??m??y??b@B??,??j?????ҶΆ??R??KC?Ј??+'?o-?Wl?3?Н?A?K?@	"???ccQ?"????u?K,b?Yw,?*??LsD??????????/V?k??}3?????g'????P????/ovu?w ?3???A:?l???	;???Y=w???WX??????pu???O%?GG?????C?ς???>??bmI<??y?L?+?V3???+???f3)?+?6??08/?%?E??E?~?<???{?>a??+???I??8|o?"RE?
?h$??o????^'????
???h??oQ???a?tj???q??.NI??8?~;{?y???w??>We?????~!?????????֒?j???:|?z???_?MQA?`?a`?n?6 ?Pd	4?2????J?^??ޥ5Zp?)????w y.??&-??.??
?LZb]Iܗ?E?V>???5??uW??-bf?Q?????????fz??ҩ6$?¯i}?g?#?f??P????^2????>ot?9??:W`?/?\????DgG???Z:h??6??%??iR×?o#6ܘ2v????E?#?
??n?o???U?
?,?fu??hn}?,̘u/EJ-?>uF???+@???ڃV?
?`O?h??P?6w?O'??GWx??c???p??d???0l~?-~????%???6ʹl?8??<#????'q?yA
 ?B??سV@?+8]$ ??????M?J??]??X???j??B????&??(?>9?U?,?v??cW??s??
???X??[bI? ?-2{/6Z>I?~x?kĖNߨ????2i?J{??3|ہ?c??0Zl{?e??o}b?u1`???-?MNg?????^'??n?.~j?b??_?`???'e?1,Q??p_^8 ??e???`[?????_I???lk?lkt???? ??E?jJ??'?E??KQd??/????T?4(/?/??b?J[???1???$<?	40??^;????O?i??һ?g` ?Fin???z?0?}????m?s.i48E?Aö-??1x? ???X???"??]E?²?h?|u??<?in??fM??'?{?J?Ճ?}܎Q?A?w83?????z???[?{?	]!?b?????6鶝ϝL???v|?|??w|<?? ??4x?	?kg׌??/???U??4Y?_ :P?2???@???$?'?um?i? [.10?f?%?d;+?̪??IJ??p ?3???f!??m??????я[???v?z?V??m>Al?D?"'w??x???*Jr????'?+??_H??@?????)?? O???fƞ??05y?29?y????ċo?0&xB??????????"Y??Nh+-?0>:Y<TM[U,????o?????????!???@??+?????2??}?
|????Jo???k?hL??V%B?\?R`i?????=vU??&W??2?{q??CX??&???J}?M1?????????»?`??J???? ?W???~????3?wR~?y^A?"jv?u=I2$@?k?2?ZBplҐZ?+?|?uR<?1_????????b۩?ɩ???<?3E?p??~pCu^v????"G?4?e?? ??[U6??9??nv? ⹑l??%~qA?:??W`:$????Ĵ???@?G?޻B-?>y(?ް??ɭP?3??1kID?=????a??m?{?y?r????? ??ưp??盈^>ߴ ?:? (\??Y,???-??	?.?T?9R?????c????OF?֠o??fT??!%??t??Wa|B1???[KL?̔￐J-,(_~!?i???O_H?~,?λ???=??K??o??}v]4O?z ??E	??L?>~??\??/ ??8?o??J-H?*Ker???
??%V%?i/?MKmt?Ȃ,R2???P???~ij ??/?`???>x_??BՈPݱ?-??^? i?k?y?}?Ί?8??????,?থ?V6??<?L??	{ش?v??0?|??1???8{Zc???pW??)px$7d?6?}d?????9>b??ͮ??ȷ??2Z6??2??7{\ǰ?IDZ?'??i?$Ӄ???????<,E?C????????ed;?
??~?Mó??<??
,q0?T???x*??"????=^Ҋ?I)N??%?=#6???[?j??#C???]oAk????츱?<v?okajr?
W?C/ƮA\?}?2ű?'?{?!?Ô?$??]?e????\????g?ڱM?f?6??C5H?fG??~,@????W/9	??d???s???Bl??????⋑\?;4b)8ÞO????G?????z{xD?;\??S,?e3?őЀ?)-s? ??????M|???;?a???/lDtr?????Ǌi,oT?E>l?8Ne?????c
v?͔oNh.?X4#??;?p??t)????tGĀ?W?h>???]?? Fb?p?l?咏?0?tW??>?Рi???i?M#4?g?6i?shu?\ݭf54:*?q?(Ͱ???ގ?+??Х????nl+?Es??gФ??M?????sF?ѮW`???>?N?s?7H,e=#?sG??ӥ]Ht?]A??S?+??	?c??UG؏D?}?Q?kQR?-8?nm?p4??@&928 ?rwl	??m%"N֘?????{p??F??x?[ֵ??p??7???ѼK?K$????H????{?u?<o???????$?)?ɕL?@??z_䗥??0?ǟ?v Y?w?????????%n	??bܢ<?14???A???b?`?C-??/??-Ŀ ֜????9zߎ???G??^?2d?^\#ޕ??
7???P/?ņ?#P?by???i???????'???H??=<?S?5? O?ߪ?G2?Tnb?p??d@J??GL???|B???]L|r??>??rEdG??,ACKN^@?#?+P????????????&?6???Je??b?u?Z??i?S=??co?????fY\???:???;T3=?9?p.Ϫ???x?ΫǦR????XAs??q???_??)ir??A??D<n?ϫ?}?l?3"? ^???d???? ??????q?[6?Uێm?8?˖?wk??C?XlXq?????H?Q|?-ؼ?H?M??V???޺?x??|L??o|????q?m?^&Iy????????|???? Q??LaZFC????u>????1P?u=??d???qu?:=?(?MZ?????????oz?T???+8?Մ?m????C2V????????ı???u???D?_
?.?A??W?G?G??{՞׸3ZTP?MN????+/?#????XW?V?auȍ
??3?i?w=?Sv?g?Qs?ބ-C?'?}b???6?%?`??q\?cCC|??ڻG??? ??e8???
:????9uO?wG?x?0?????ϋ?j?؞?»?қ%/?????:??ھ??վ-ۻ???ޘp?-S?g
?"?y;????+???ډ????o?c?
??~??ҭֳU?Laѓ?^nN8?/*???????]߫l??????7n%???4???v ????~Sf???#-? O??[?X?iz_R?!O!`??R?n,c4? ;+heN???L79??/;I??p{???Z?bH|Fm???f???U?!?Ȍ?@?????|ߚ?,?	ێ?:i?P{?x?۠#S?<?$/?y???a??[8ngv?qR?4???3??j?]???!??XEu?|?x?q??1?& |?'?o??dL?0?˱	?k?ʯIĒ_SP?ȭ	D4#??W?ğsj2`?????1ܼ?Ϲ4[?̷?h????͡	Ԃ???3?枧????t???3??+?x?? h  $f????ܙ:"Ϲ3?b???ܙ?????q??ʟ?f]2??7y3AtX??7y3A?̹͙9<??-?7?F5??%?X??=?F???p???????i? ??6Luć????s<26?`??d??
4?%@????"?~???'ՍO}'?_??{?Z?c(?ʪJ????M??	B?`??ǌ?6?ţ?]0с??~??c?ጡ??x????y?+?TQ?!`?n??bd??٧癩lyhZ?Xp?-?}0?u?;?~;?ﳔ??~???~???O???O-WSkok}???j???bz?Ab?^?Z?{Ll?????п?????><o?O+u?~???`????2*U??q?ň-?
8??]??????'?????va.?? ?? ?.?WA??,w??????R	2]b????\,???]֦t_???Cc??N=$??Ƹ,???cb?t?D?J?)?u?	t˭?1ߍN??LT???=x???????n??]z=???6?W?#H?p?i???+,?j3a?0?0???A??	??\??[??ʠȵg̲!g???k'1?
???y?[?fUrR9???u6???7?j#G???g?VP,~Y?~??-?#????3??5????<ed??ʍH??v??})?j?? U?5?+ǭ8??-)T팟????^?`?<??hOÐNd??D????'Q?tT?[?b?7???7??'?I?+??????W????? a8͊-?C???j?P?OÂ?u,??p<?,X?\?ʑ?-?\[Z)Mq?th?@~?8?m?~D?7#?e^???;?
??a??=?\??w???O/?_!???%?????B?4?#[I?[^ -?@?-G?Ȥ???z?
pk?p@t?qf??i???a?c϶???6\???P?\??A4_N??ѭ??????/??w-?N/???'? f?oO??ۻ?ᨔs?db?m9͌???.?R??irh?~\??????.?????ث?8C??%??%???)??*????NWs;??????i???d???*@g7??Ô??t?Ɏ?+(?7??n$3Dn??|	???>{לU^??Z???v?uVgZ?Y?uy?d~??57?C>m?????N?dz?X??̐c?D34YBT?u<??????Q?3w??4?.?QŚ?g??u2x??X|a(EJ?
???iz9?q\!uo0?TFL?,?Ɇ|v??Ɂ@?g%?&??7?]'\?	??j????????????(?[\?I?ء%?9?5/?<9?c??.????????简??=f?輠X??$?????|???????8?r??!?@??R&鷠????W????uX?c`?]??w%`y_V??32*?8Ĩ?4??X??vt/??_?$\7 ?'tR9M0شy?)??f???????a????2D??f???uN?ЁYM?	?6-}ޡi?????????¡??TY?????p?7?88 <??SroKwt?J????2.??ƫ?]?	??'?R??_л????:E.????P??<?K?%??Z?] +? ?4??e??\=?lwm;:??qe?5/jum]$2;? V????}"??W???hoI\Z>?>?c??ZD???
Lǜ;;???T?-?%8+?-????~?????      ?   o   x?3?42?T?p??????????
??2	?????9?=}|\????`awN? ?0O??`.?????#Xʍ??1?ч?f93?aX???0-? K??c?;F??? ?$,?      ?   ^  x?ePKn$!]?S??+?I???t?1Pr?jE????Tw?????M0gpާ@E14B?8??!?3f?$ɱ=?6???`???>?rnN?iO??*??eSi^S-?	\铲c?5???.IQ?o?<CT???zQ?Ȯ?ى?????e$??`?%y&?y?H??f?u?o???7??V{?^*V????ҽ¬p34;??] ??r_?1??wX??\;??N ?+qid????N?ü?&P???lfz?!?_z??]c??!?B?M??MOP?6)???I?:^/???u=Z?\??v?m?]"??ԫ8Xѻv^c???
?ޑ?j?4fz?~??\=v???7?p???|0?|/???      ?   !   x?s	s?t?,?LI-??sr??ua?=... ?3	Q      ?   P   x?v?NM,QpJ?)????H??M-Q?/??
v?G?*??C?=???b???0???????$???ļ?Ģ?=... ?!x      ?   =   x?s	??t)??
w?O-??u??-MI??r???t???OIM?
v???/?H-?????? ???      ?   L   x?s??s?t??K.J-I?r
???t?,)?M??r
??t/J,K???q???.-I?H?????M,.I??????? ??-      ?   W   x??u3?t*JMLUpK??)-J?
?u3?t?K??KUNͬ?s$?(?Tf??????L8C*?R?J??K@|SN????"?=... ?j?      ?   ^   x??????/?M?Q??OLIM?????/K-?q]}9]sJ*?||8}?????\>???N?gh^v^~y??#дǂ????Ĥ?T?=... A??      ?   _  x??Xˎ?*]_???M?g??Ċ?M?i???wL????HӝQ5?CQ-?D?R?KՔr	?E?WھM???????>?b!???B^,)J]A?k?w??]vg??(?ieE?MYi?+hJ???????????68????Þ??v-f?A]??N ?[??W????b-kȔc??<??@??8(!?qG#??s~Ifl?3Z??x,??e??ɾ?w??num?kV?7????:?V??>?Ҕ??H???xN?%?]?b?s?[???;H???Gz?z???s?:?~~`E=?Z?Z5uk??1?nmƯ????[<?m?M?U?*y.???=wu?u????H)??[\?(_?d*??3??z?Wo?Pp?:Q?d]?0?s?Ɨ??F??dQ?܀?)?.~???f??  gU;"wԵ?9???a????l?2Y
???w+???????f???????D^?s? ?????{[|? VYcM*???????o???????X??!VirW??uyS)????.?s,?,???'T?????+0??Ĵ?E\5?x???E?\-N??ӯ<$?|p??f????3?Q{?0?q??)0aBk nH??K?=??`˄L".?.?Ү͞???????gZl????d???kj#C?:??*??б??Q{ދ?kq?k?&R??UwX^???_?ܩ~<???O?????j/???????|????ʼ???rpB?k??Jۚ??d??O??????P??JeVY???*?N?r??/?E~A?&??/??I?,o(O??urp????7B??4??+2B7׶?~?fM?;f?ή?Uv-?w0??>9??2???j???۝????i"??e?=?^??ڮ???'?E~?R?Kіߠ?G<ӥ]
?ѹ?y?????6?C?u?]{??P?n6???&Y!6?ڐ???j#Oe???@?\ά>?????9/??솇??????#o.!??*??;?5$?H?]????N?????&o?dnz??x???pr??D˜v<Aw??E???, ??f?~H???{)M-?r?o;S????c?ǲLo??JH]N???Sx???x V??qXc??T???DZQrQX?;,|??)??T?,ɭJ=??>?k???c??D?      ?     x??Xɒ?8=?_??)[^9??M??"???c^J2c??tOQ????Sf*??????IU????
???E?#ێi:?
??f(M??&fŻ??"ܨۜ?p?N2Tu+?뵞??????쐏6??8f	????W?p??:????dn???4J
??????*@>)@V??PT??l?r???????+??݀?????^j?ӌ?q????.??Gl?tӘ??aAy??h?x??'ؗXW,\??X??C3?^?ˣ ?d(??l
13?0?YR?"Mp?????t??v.?$??w뒑J??????J<?,?~?9??&3?VW?i?[&t?u????ٜ??\?K_,??O?P??u?NI<X
????;?z?yP? ???~?]?XQ?L?봄?  [?g ?[uf[???ԟ??j?@??{S??{l{??k?5?? jQB??Q?"???!y???]W?JK??6omM˲nÜ????6??0??0zx젫?Ё??i?d??,?
?[??U??~??Bg,ɜ?????~o??c?u????&d ????ZD?C?7?N5ѯ?$)G)˹?h?uf??r?[N?;?A?,ଠ7[??A	sy?MeJ????+?s???+???g>3ƍs?M??lF????>?\bɓ??$<??K??jjp?6Y*?_?L????O濤?ϟ??/w{]???-ao*#?8?=????)S??????????68V=C?e?C?E?v???aM?7Cv.^??7Rp?[?"{?W8+t?kY?9? ??#,X#
J????Bp??????? ???-?+A-Z????w??]u??p??T?^??ƾ	???[Ȝ0"W鍔M?;??u???;"?y?j??vUb=X???%???]6P??;0͑?;_#r??_*K?5S>u?(????]?!??p??vOS???Gvfި?ِ^?R{n?v?L???-???W???Կ@}?? q???o??]??????*?td~O~Me?x-?ѕ0???????r?gAG?????1?"?A??T^O??U@??/<?z?d,?????Ɓ?tS?s?_1V>?]~?Y~??۹??\X/??H?Ѭ\??????vm?????1???*x|?ޙ??????U??????$?)ֶ??>??<?O[c]ѩ?"?????+jS/?y???<???)???f3?
?	.J?K5TNW}*????G
ܻP'x"m?g???};?	N?9ܲ?M}?,ڬ?y7?G?0S??{????aM@?t??.???B?Y??n\8?h??ת??kᙴ?L????? ??Ym      ?   ?   x?}??
?0?ϛ??h?????'?`!??5???H?
?}cK??933??AR?i?~?̻?v?Fc?T+d???)߮)Yܼ?Yjz??z??8Bf??~???kz?J???^/(?abu??Զ?b2?=5??Y?J?z??D?x@?=??qcI??\???xn?o??K      ?   ?   x???;?0D?z?
6 ??S&??+?*-R
֏%(??c4?=k???Y?b??ԵcK??5??j?:v?=?3&N??"?%:??e?_?q?AR?ܗ??????;???7f+??7[BӉi%?x*?<?      ?      x?????? ? ?      ?   E   x?s)?,K-?r??u???2S?d??N,.N?K??@p?K2R???B???????RSR?K?2??b???? ?&?      ?   Z   x?3?4 CW_NG_'N#C? # ?2???w???p:G:?????L?I?8??LqK?!K9?y??|}M?r?x?,P? ?????? ?'#P      ?   J   x?w6?t?w?
w6?J???K2?9?K?????3?R??&?!?y)?E@?)?sNj"?e??_?????? 6?      ?   p   x?]?A
?0@?ur???C(?+]??̀F,?D:?ano?.??3M?-L?0G????;W?$ݳf?"$1??E?յ?<?/??+??=Co?W?U???uW?i?Ƽ??S!?B'?      ?   ]  x???aK?0??_~E??du??4?,t??Q????&[&??M?H
Q?}???އ{????d?l????<y.?/u??O???ߪ????|76ňX?x4??.???????}???????Ѱ?QC+y?(?3ˠlu?O????x?̈X"2???????NG??ʗ??z]luE#??G}??z?B?ݙּ0??UB+ͭ?|?K?|??7{uy?? lm$i*?M?x(?SQ???Q??P??U?2?z?vQ?~(_
g2?9?\6Y*
^I?)??ۣ?p???P??7??K6??	?(?ÉDo?q?c?F??	?ů ?PJ???Qz͋?#????;#????[ё???e??????}??!????          ?   x?}??
?0E?????`IR?]%Q??@?Xx??;???єv+???s%?????]?????c?PBV??i??????UE%\??Fw?]?G?0????;?QC?sk?[?B???U??֚??ى??ZRlY??,??8?X3?            x?????? ? ?         _   x?3?LLJN???ŜF??? ??L???????44?\F?E??E%0*/?????	?gd ?g?????Ep?@i$&?&???"JS? ??,T            x?????? ? ?      H      x?????? ? ?     