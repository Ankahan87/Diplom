PGDMP  5    3                |            diplom_khan_anna    16.2    16.2 �    _           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            `           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            a           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            b           1262    16866    diplom_khan_anna    DATABASE     �   CREATE DATABASE diplom_khan_anna WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
     DROP DATABASE diplom_khan_anna;
                postgres    false            �            1259    16893 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16892    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    222            c           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    221            �            1259    16902    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16901    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    224            d           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    223            �            1259    16886    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16885    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    220            e           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    219            �            1259    16909 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16918    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16917    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    228            f           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    227            �            1259    16908    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    226            g           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    225            �            1259    16925    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16924 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    230            h           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    229            �            1259    17013    authtoken_token    TABLE     �   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public         heap    postgres    false            �            1259    16984    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    16983    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    232            i           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    231            �            1259    16877    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16876    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    218            j           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    217            �            1259    16868    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16867    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    216            k           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    215            �            1259    17026    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    17052    posts_comment    TABLE     �   CREATE TABLE public.posts_comment (
    id bigint NOT NULL,
    text character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    author_id integer NOT NULL,
    post_id bigint NOT NULL
);
 !   DROP TABLE public.posts_comment;
       public         heap    postgres    false            �            1259    17051    posts_comment_id_seq    SEQUENCE     }   CREATE SEQUENCE public.posts_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.posts_comment_id_seq;
       public          postgres    false    240            l           0    0    posts_comment_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.posts_comment_id_seq OWNED BY public.posts_comment.id;
          public          postgres    false    239            �            1259    17045 
   posts_like    TABLE     �   CREATE TABLE public.posts_like (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    author_id integer NOT NULL,
    post_id bigint NOT NULL
);
    DROP TABLE public.posts_like;
       public         heap    postgres    false            �            1259    17044    posts_like_id_seq    SEQUENCE     z   CREATE SEQUENCE public.posts_like_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.posts_like_id_seq;
       public          postgres    false    238            m           0    0    posts_like_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.posts_like_id_seq OWNED BY public.posts_like.id;
          public          postgres    false    237            �            1259    17036 
   posts_post    TABLE     �   CREATE TABLE public.posts_post (
    id bigint NOT NULL,
    title character varying(100) NOT NULL,
    text character varying(5000) NOT NULL,
    image character varying(500) NOT NULL,
    created_at date NOT NULL,
    author_id integer NOT NULL
);
    DROP TABLE public.posts_post;
       public         heap    postgres    false            �            1259    17035    posts_post_id_seq    SEQUENCE     z   CREATE SEQUENCE public.posts_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.posts_post_id_seq;
       public          postgres    false    236            n           0    0    posts_post_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.posts_post_id_seq OWNED BY public.posts_post.id;
          public          postgres    false    235            \           2604    16896    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            ]           2604    16905    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            [           2604    16889    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            ^           2604    16912    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            _           2604    16921    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            `           2604    16928    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            a           2604    16987    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            Z           2604    16880    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            Y           2604    16871    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            d           2604    17055    posts_comment id    DEFAULT     t   ALTER TABLE ONLY public.posts_comment ALTER COLUMN id SET DEFAULT nextval('public.posts_comment_id_seq'::regclass);
 ?   ALTER TABLE public.posts_comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            c           2604    17048    posts_like id    DEFAULT     n   ALTER TABLE ONLY public.posts_like ALTER COLUMN id SET DEFAULT nextval('public.posts_like_id_seq'::regclass);
 <   ALTER TABLE public.posts_like ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            b           2604    17039    posts_post id    DEFAULT     n   ALTER TABLE ONLY public.posts_post ALTER COLUMN id SET DEFAULT nextval('public.posts_post_id_seq'::regclass);
 <   ALTER TABLE public.posts_post ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            J          0    16893 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    222   ��       L          0    16902    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    224   ��       H          0    16886    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    220   ܲ       N          0    16909 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    226   ��       P          0    16918    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    228   [�       R          0    16925    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    230   x�       U          0    17013    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          postgres    false    233   ��       T          0    16984    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    232   �       F          0    16877    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    218   ^�       D          0    16868    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    216   �       V          0    17026    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    234   �       \          0    17052    posts_comment 
   TABLE DATA           Q   COPY public.posts_comment (id, text, created_at, author_id, post_id) FROM stdin;
    public          postgres    false    240   �       Z          0    17045 
   posts_like 
   TABLE DATA           H   COPY public.posts_like (id, created_at, author_id, post_id) FROM stdin;
    public          postgres    false    238   ��       X          0    17036 
   posts_post 
   TABLE DATA           S   COPY public.posts_post (id, title, text, image, created_at, author_id) FROM stdin;
    public          postgres    false    236   ��       o           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    221            p           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    223            q           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
          public          postgres    false    219            r           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    227            s           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    225            t           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    229            u           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);
          public          postgres    false    231            v           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
          public          postgres    false    217            w           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);
          public          postgres    false    215            x           0    0    posts_comment_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.posts_comment_id_seq', 4, true);
          public          postgres    false    239            y           0    0    posts_like_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.posts_like_id_seq', 1, false);
          public          postgres    false    237            z           0    0    posts_post_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.posts_post_id_seq', 4, true);
          public          postgres    false    235            s           2606    17011    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    222            x           2606    16941 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    224    224            {           2606    16907 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    224            u           2606    16898    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    222            n           2606    16932 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    220    220            p           2606    16891 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    220            �           2606    16923 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    228            �           2606    16956 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    228    228            }           2606    16914    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    226            �           2606    16930 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    230            �           2606    16970 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    230    230            �           2606    17006     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    226            �           2606    17017 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public            postgres    false    233            �           2606    17019 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public            postgres    false    233            �           2606    16992 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    232            i           2606    16884 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    218    218            k           2606    16882 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    218            g           2606    16875 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    216            �           2606    17032 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    234            �           2606    17057     posts_comment posts_comment_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.posts_comment
    ADD CONSTRAINT posts_comment_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.posts_comment DROP CONSTRAINT posts_comment_pkey;
       public            postgres    false    240            �           2606    17050    posts_like posts_like_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.posts_like
    ADD CONSTRAINT posts_like_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.posts_like DROP CONSTRAINT posts_like_pkey;
       public            postgres    false    238            �           2606    17043    posts_post posts_post_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_post_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.posts_post DROP CONSTRAINT posts_post_pkey;
       public            postgres    false    236            q           1259    17012    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    222            v           1259    16952 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    224            y           1259    16953 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    224            l           1259    16938 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    220            �           1259    16968 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    228            �           1259    16967 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    228            �           1259    16982 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    230            �           1259    16981 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    230            ~           1259    17007     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    226            �           1259    17025 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public            postgres    false    233            �           1259    17003 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    232            �           1259    17004 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    232            �           1259    17034 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    234            �           1259    17033 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    234            �           1259    17086     posts_comment_author_id_795e4d12    INDEX     _   CREATE INDEX posts_comment_author_id_795e4d12 ON public.posts_comment USING btree (author_id);
 4   DROP INDEX public.posts_comment_author_id_795e4d12;
       public            postgres    false    240            �           1259    17087    posts_comment_post_id_e81436d7    INDEX     [   CREATE INDEX posts_comment_post_id_e81436d7 ON public.posts_comment USING btree (post_id);
 2   DROP INDEX public.posts_comment_post_id_e81436d7;
       public            postgres    false    240            �           1259    17074    posts_like_author_id_7ad7e87a    INDEX     Y   CREATE INDEX posts_like_author_id_7ad7e87a ON public.posts_like USING btree (author_id);
 1   DROP INDEX public.posts_like_author_id_7ad7e87a;
       public            postgres    false    238            �           1259    17075    posts_like_post_id_127195b7    INDEX     U   CREATE INDEX posts_like_post_id_127195b7 ON public.posts_like USING btree (post_id);
 /   DROP INDEX public.posts_like_post_id_127195b7;
       public            postgres    false    238            �           1259    17063    posts_post_author_id_fe5487bf    INDEX     Y   CREATE INDEX posts_post_author_id_fe5487bf ON public.posts_post USING btree (author_id);
 1   DROP INDEX public.posts_post_author_id_fe5487bf;
       public            postgres    false    236            �           2606    16947 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    220    224    4720            �           2606    16942 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    4725    222    224            �           2606    16933 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    218    220    4715            �           2606    16962 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    228    4725    222            �           2606    16957 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    226    228    4733            �           2606    16976 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    220    4720    230            �           2606    16971 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    230    226    4733            �           2606    17020 @   authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id;
       public          postgres    false    4733    226    233            �           2606    16993 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    218    232    4715            �           2606    16998 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    4733    226    232            �           2606    17076 >   posts_comment posts_comment_author_id_795e4d12_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts_comment
    ADD CONSTRAINT posts_comment_author_id_795e4d12_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.posts_comment DROP CONSTRAINT posts_comment_author_id_795e4d12_fk_auth_user_id;
       public          postgres    false    226    240    4733            �           2606    17081 =   posts_comment posts_comment_post_id_e81436d7_fk_posts_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts_comment
    ADD CONSTRAINT posts_comment_post_id_e81436d7_fk_posts_post_id FOREIGN KEY (post_id) REFERENCES public.posts_post(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.posts_comment DROP CONSTRAINT posts_comment_post_id_e81436d7_fk_posts_post_id;
       public          postgres    false    240    236    4764            �           2606    17064 8   posts_like posts_like_author_id_7ad7e87a_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts_like
    ADD CONSTRAINT posts_like_author_id_7ad7e87a_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.posts_like DROP CONSTRAINT posts_like_author_id_7ad7e87a_fk_auth_user_id;
       public          postgres    false    226    238    4733            �           2606    17069 7   posts_like posts_like_post_id_127195b7_fk_posts_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts_like
    ADD CONSTRAINT posts_like_post_id_127195b7_fk_posts_post_id FOREIGN KEY (post_id) REFERENCES public.posts_post(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.posts_like DROP CONSTRAINT posts_like_post_id_127195b7_fk_posts_post_id;
       public          postgres    false    238    4764    236            �           2606    17058 8   posts_post posts_post_author_id_fe5487bf_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_post_author_id_fe5487bf_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.posts_post DROP CONSTRAINT posts_post_author_id_fe5487bf_fk_auth_user_id;
       public          postgres    false    4733    226    236            J      x������ � �      L      x������ � �      H   �  x�e�An�0E��)8A���W�R�+EI i��׌����=O�'�����E{>��R�~���(��w�jK���/NP�)�%�gws��S+:�+��!C�d6����s7�ʒZ~�.'@�1���A��YQ��ȸ&Y^��1���͎��:���� �Y%d�r���TE�Q���G�����y �7��:���i��k���ړ��mj.��!$��{mx�q���&]��d=���M[����3a"��^�X�3DV	�I���WG�Yֳ�"� "������Ơ��4���޽j�B�yu��8������[wu�	k�u)��j\G�d�k� �l����bN�8̋�Lkǟu)��q�!���bV�by���X�j�\��>���]ue�<%(��R�Q������$
���7��?w�      N   �   x�e��
�@����-܅v�N)]D�� paĘ��mH}���o>JT\$/���D���aJ��ߎ���U�/R���U_(��gsi� (v��	GecS��̆w��t�	Qn�cM�2�6Й!u���h��é��Ȥ�kB����R��d^��~:ݿ�t�-W�d���i�ښ1�      P      x������ � �      R      x������ � �      U   K   x���� ��T�F�h-�D��K�nx['�z��Ϊ��S����o�}<�a�=�_��2�ŭ:�fMBo!� �      T   ^   x���@@ ��l�WQs�#<�YI(���&`d��f�Sjl�i1�	2�帝�:k�(��.x	wɪ�W����3�=�6<�{@J��R� ���      F   ~   x�]��
�0D�w>F�w�ŗR��dCv��[�
��0g�0��g�&8Z�8PW�E�s�^"��2d)	��rƙz��hV�/�B���o���&#Gj������wJ��4����}�m�K�; o%B�      D   �  x����n�0F��S�~��3�ϳ�dY��Z�S5o����D�E"�a���PC�\�ҥs}E�[���+$��	G��p z@�K�H�BwX�!}n'�D�1A+{j|�BDr��v����9/&�&|;���=��JpZ>�ozc䜱��Ck>j{6������*KsF���tᵚ��ߘ�6n�Ad؈��?4�N.������XҘ7��1�k��_�(�ԈR�Ψ���X_oR��Pz���S�G)'ti]�f�N��0�=��}����P�]s(��v��Ż��Cr�O9��mk�)ľL���i\����k���N���Ҭ)�2,`I�r���}�BXY!�W�u�a�^À�P�f�"g�~.w��'3Pq9u��3�}W>���LM��}N�ۼ,rN�y��1���A$��͸(���AM�Yd�F!+�D�1z=C7�x���"ei��ݬ|�w���tӪ}z��o�N���R���n�����      V     x���n�0  �g���/5m�
�!`UF��`��A�P�����Q�
�=�d (�����&�4k�j���t�7�� |�}>�{��	یG�U��;�� �4�����^A�cԩ��ߛ��~iv����i�'�4�Yu�~:�ݱ[ջB�G�d����[�)h���MfK�RĹ�Q3�~u~�fPX�&����=��[Y�HG��GnyZ�Ӕ�|�����l��O��`�a��SYa� 	@�#]��L�x�@M������$��^�      \   �   x�u��� ��5<�֔3�<�C�&�M�^SSMܟ/�qj�����c�&ϵ����<��tBI�-�p�t RN���-%�m��8����X����ܮezu���Q�S`�7Y}�P���D	>�NVk��0f      Z      x������ � �      X   e   x�3��T���bÅ�\�z�A�bӅ�v]l��8���K��sSS2����
ҕ8��LtLu�8�L�F�&��(��k2��d����� ��*�     