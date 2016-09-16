# My Elixir/Postgres/Docker Troubles

When trying to run `docker-compose up --build` am getting the following output:

```
Building web
Step 1 : FROM elixir:1.3
 ---> bc67b083fb64
Step 2 : ADD . /app
 ---> 4861fa9238ff
Removing intermediate container 65b2a22d62a7
Step 3 : WORKDIR /app
 ---> Running in 8e6c99143324
 ---> 40ab9ccb3214
Removing intermediate container 8e6c99143324
Step 4 : RUN apt-get update && apt-get install -qy nodejs postgresql-client
 ---> Running in 484053b44922
Get:1 http://security.debian.org jessie/updates InRelease [63.1 kB]
Ign http://httpredir.debian.org jessie InRelease
Get:2 http://httpredir.debian.org jessie-updates InRelease [142 kB]
Get:3 http://security.debian.org jessie/updates/main amd64 Packages [389 kB]
Get:4 http://httpredir.debian.org jessie Release.gpg [2373 B]
Get:5 http://httpredir.debian.org jessie Release [148 kB]
Get:6 http://httpredir.debian.org jessie-updates/main amd64 Packages [17.6 kB]
Get:7 http://httpredir.debian.org jessie/main amd64 Packages [9032 kB]
Fetched 9795 kB in 35s (273 kB/s)
Reading package lists...
Reading package lists...
Building dependency tree...
Reading state information...
The following extra packages will be installed:
  libc-ares2 libv8-3.14.5 lsb-release postgresql-client-9.4
  postgresql-client-common
Suggested packages:
  lsb postgresql-9.4 postgresql-doc-9.4
The following NEW packages will be installed:
  libc-ares2 libv8-3.14.5 lsb-release nodejs postgresql-client
  postgresql-client-9.4 postgresql-client-common
0 upgraded, 7 newly installed, 0 to remove and 22 not upgraded.
Need to get 3226 kB of archives.
After this operation, 12.2 MB of additional disk space will be used.
Get:1 http://security.debian.org/ jessie/updates/main postgresql-client-9.4 amd64 9.4.9-0+deb8u1 [1079 kB]
Get:2 http://httpredir.debian.org/debian/ jessie/main libc-ares2 amd64 1.10.0-2 [76.7 kB]
Get:3 http://httpredir.debian.org/debian/ jessie/main libv8-3.14.5 amd64 3.14.5.8-8.1 [1269 kB]
Get:4 http://httpredir.debian.org/debian/ jessie/main postgresql-client-common all 165+deb8u1 [73.7 kB]
Get:5 http://httpredir.debian.org/debian/ jessie/main postgresql-client all 9.4+165+deb8u1 [52.1 kB]
Get:6 http://httpredir.debian.org/debian/ jessie/main lsb-release all 4.1+Debian13+nmu1 [26.5 kB]
Get:7 http://httpredir.debian.org/debian/ jessie/main nodejs amd64 0.10.29~dfsg-2 [648 kB]
debconf: delaying package configuration, since apt-utils is not installed
Fetched 3226 kB in 13s (242 kB/s)
Selecting previously unselected package libc-ares2:amd64.
(Reading database ... 21176 files and directories currently installed.)
Preparing to unpack .../libc-ares2_1.10.0-2_amd64.deb ...
Unpacking libc-ares2:amd64 (1.10.0-2) ...
Selecting previously unselected package libv8-3.14.5.
Preparing to unpack .../libv8-3.14.5_3.14.5.8-8.1_amd64.deb ...
Unpacking libv8-3.14.5 (3.14.5.8-8.1) ...
Selecting previously unselected package lsb-release.
Preparing to unpack .../lsb-release_4.1+Debian13+nmu1_all.deb ...
Unpacking lsb-release (4.1+Debian13+nmu1) ...
Selecting previously unselected package postgresql-client-common.
Preparing to unpack .../postgresql-client-common_165+deb8u1_all.deb ...
Unpacking postgresql-client-common (165+deb8u1) ...
Selecting previously unselected package postgresql-client-9.4.
Preparing to unpack .../postgresql-client-9.4_9.4.9-0+deb8u1_amd64.deb ...
Unpacking postgresql-client-9.4 (9.4.9-0+deb8u1) ...
Selecting previously unselected package postgresql-client.
Preparing to unpack .../postgresql-client_9.4+165+deb8u1_all.deb ...
Unpacking postgresql-client (9.4+165+deb8u1) ...
Selecting previously unselected package nodejs.
Preparing to unpack .../nodejs_0.10.29~dfsg-2_amd64.deb ...
Unpacking nodejs (0.10.29~dfsg-2) ...
Setting up libc-ares2:amd64 (1.10.0-2) ...
Setting up libv8-3.14.5 (3.14.5.8-8.1) ...
Setting up lsb-release (4.1+Debian13+nmu1) ...
Setting up postgresql-client-common (165+deb8u1) ...
Setting up postgresql-client-9.4 (9.4.9-0+deb8u1) ...
update-alternatives: using /usr/share/postgresql/9.4/man/man1/psql.1.gz to provide /usr/share/man/man1/psql.1.gz (psql.1.gz) in auto mode
Setting up postgresql-client (9.4+165+deb8u1) ...
Setting up nodejs (0.10.29~dfsg-2) ...
update-alternatives: using /usr/bin/nodejs to provide /usr/bin/js (js) in auto mode
Processing triggers for libc-bin (2.19-18+deb8u4) ...
 ---> d2a598152713
Removing intermediate container 484053b44922
Step 5 : ENV MIX_ENV prod
 ---> Running in f18b1f3adf10
 ---> 06f47324dd21
Removing intermediate container f18b1f3adf10
Step 6 : ENV PORT 4000
 ---> Running in 7f4f482e28f1
 ---> af715584b879
Removing intermediate container 7f4f482e28f1
Step 7 : RUN mix local.hex --force
 ---> Running in 02e9a8783007

01:14:34.866 [error] Failed updating session:
   ProfileName: :httpc_mix
   SessionId:   {{'repo.hex.pm', 443}, #PID<0.113.0>}
   Pos:         7
   Value:       0
when
   Session (db) info: :undefined
   Session (db):      {:session, {{'repo.hex.pm', 443}, #PID<0.113.0>}, false, :https,
 {:sslsocket, {:gen_tcp, #Port<0.4202>, :tls_connection, :undefined},
  #PID<0.117.0>}, {:essl, []}, 1, :keep_alive, true}
   Session (record):  {:EXIT,
 {:badarg,
  [{:ets, :lookup,
    [:httpc_mix__session_db, {{'repo.hex.pm', 443}, #PID<0.113.0>}], []},
   {:httpc_manager, :lookup_session, 2, [file: 'httpc_manager.erl', line: 189]},
   {:httpc_handler, :update_session, 4,
    [file: 'httpc_handler.erl', line: 1909]},
   {:httpc_handler, :handle_empty_queue, 4,
    [file: 'httpc_handler.erl', line: 1368]},
   {:httpc_handler, :handle_info, 2, [file: 'httpc_handler.erl', line: 471]},
   {:gen_server, :try_dispatch, 4, [file: 'gen_server.erl', line: 601]},
   {:gen_server, :handle_msg, 5, [file: 'gen_server.erl', line: 667]},
   {:proc_lib, :init_p_do_apply, 3, [file: 'proc_lib.erl', line: 247]}]}}
   T: :error
   E: :badarg

01:14:34.867 [error] Failed updating session:
   ProfileName: :httpc_mix
   SessionId:   {{'repo.hex.pm', 443}, #PID<0.113.0>}
   Pos:         9
   Value:       true
when
   Session (db) info: :undefined
   Session (db):      {:session, {{'repo.hex.pm', 443}, #PID<0.113.0>}, false, :https,
 {:sslsocket, {:gen_tcp, #Port<0.4202>, :tls_connection, :undefined},
  #PID<0.117.0>}, {:essl, []}, 1, :keep_alive, false}
   Session (record):  {:EXIT,
 {:badarg,
  [{:ets, :lookup,
    [:httpc_mix__session_db, {{'repo.hex.pm', 443}, #PID<0.113.0>}], []},
   {:httpc_manager, :lookup_session, 2, [file: 'httpc_manager.erl', line: 189]},
   {:httpc_handler, :update_session, 4,
    [file: 'httpc_handler.erl', line: 1909]},
   {:httpc_handler, :maybe_make_session_available, 2,
    [file: 'httpc_handler.erl', line: 1516]},
   {:httpc_handler, :answer_request, 3,
    [file: 'httpc_handler.erl', line: 1507]},
   {:httpc_handler, :terminate, 2, [file: 'httpc_handler.erl', line: 759]},
   {:gen_server, :try_terminate, 3, [file: 'gen_server.erl', line: 629]},
   {:gen_server, :terminate, 7, [file: 'gen_server.erl', line: 795]}]}}
   T: :error
   E: :badarg

01:14:34.895 [error] GenServer #PID<0.113.0> terminating
** (stop) {:failed_updating_session, [profile: :httpc_mix, session_id: {{'repo.hex.pm', 443}, #PID<0.113.0>}, pos: 9, value: true, etype: :error, error: :badarg, stacktrace: [{:ets, :update_element, [:httpc_mix__session_db, {{'repo.hex.pm', 443}, #PID<0.113.0>}, {9, true}], []}, {:httpc_manager, :update_session, 4, [file: 'httpc_manager.erl', line: 210]}, {:httpc_handler, :update_session, 4, [file: 'httpc_handler.erl', line: 1887]}, {:httpc_handler, :maybe_make_session_available, 2, [file: 'httpc_handler.erl', line: 1516]}, {:httpc_handler, :answer_request, 3, [file: 'httpc_handler.erl', line: 1507]}, {:httpc_handler, :terminate, 2, [file: 'httpc_handler.erl', line: 759]}, {:gen_server, :try_terminate, 3, [file: 'gen_server.erl', line: 629]}, {:gen_server, :terminate, 7, [file: 'gen_server.erl', line: 795]}]]}
    (inets) httpc_handler.erl:1911: :httpc_handler.update_session/4
    (inets) httpc_handler.erl:1516: :httpc_handler.maybe_make_session_available/2
    (inets) httpc_handler.erl:1507: :httpc_handler.answer_request/3
    (inets) httpc_handler.erl:759: :httpc_handler.terminate/2
    (stdlib) gen_server.erl:629: :gen_server.try_terminate/3
    (stdlib) gen_server.erl:795: :gen_server.terminate/7
    (stdlib) proc_lib.erl:247: :proc_lib.init_p_do_apply/3
Last message: {:ssl, {:sslsocket, {:gen_tcp, #Port<0.4202>, :tls_connection, :undefined}, #PID<0.117.0>}, "HTTP/1.1 200 OK\r\nx-amz-id-2: kWjBx8Y+AEDczn3vjTCiIGyzMhlWClDmCFoPavvcWkKNy7BCRFXg8p9nHc39jFwlFghW7KMKB/I=\r\nx-amz-request-id: 5C48BD1E28A492D7\r\nx-amz-replication-status: PENDING\r\nLast-Modified: Sat, 30 Jul 2016 23:05:54 GMT\r\nETag: \"a0995c7c0b2c9876aa764af3469d1b95\"\r\nCache-Control: public, max-age=604800\r\nx-amz-meta-surrogate-key: installs\r\nx-amz-version-id: bZ.xUt1RYfWyROyTzVOq7IcmIOrMyEIE\r\nContent-Type: text/csv\r\nServer: AmazonS3\r\nVia: 1.1 varnish\r\nFastly-Debug-Digest: 50ab983c1e2811797c7b0b63539941107036bade35475cf35baae5d404de4590\r\nContent-Length: 568\r\nAccept-Ranges: bytes\r\nDate: Fri, 16 Sep 2016 01:14:34 GMT\r\nVia: 1.1 varnish\r\nAge: 439237\r\nConnection: keep-alive\r\nX-Served-By: cache-iad2135-IAD, cache-sjc3144-SJC\r\nX-Cache: HIT, HIT\r\nX-Cache-Hits: 4, 1\r\nX-Timer: S1473988474.682040,VS0,VE0\r\n\r\n0.13.0,96e587b349a8d1ace0aeb4871242704c712e1106d6c13959acde1fcf6d97624de250a34f94c84ee33297bd470093fa6549917add0359731f98ad6c76d6d0c3a6,1.0.0\n0.13.0,3ac4c2334964b9f90a71fbb200c2d39d30020155b20bf6076e8c220b4e46b6caae3aa6b035082ea37277d6d563ca8b6f15b825a41a45fc0fd279ed9448ee0c39,1.1.0\n0.13.0,90bc167b851b8d1c7c492dfac9c6ab3110e783991f129a41e38ae42f2f04c5b2c4f6fa53a8a8ebafed05a4a5d50255e8ca6fba88171c4f528b2825fc86a6244d,1.2.0\n0.13.0,8e350164ee2a473b5736e55deb8ace9a634ad4602b376390bae49858299d25678111c7ae2837e10ce54ce876ebad45123381f0d000e7eb40622b4e3d4891f965,1.3.0\n"}
State: {:state, {:request, #Reference<0.0.1.187>, #PID<0.71.0>, 0, :https, {'repo.hex.pm', 443}, '/installs/hex-1.x.csv', [], :get, {:http_request_h, :undefined, 'keep-alive', :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, 'repo.hex.pm', :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, [], 'Mix/1.3.2', :undefined, :undefined, :undefined, '0', :undefined, :undefined, :undefined, :undefined, :undefined, ...}, {[], []}, {:http_options, 'HTTP/1.1', :infinity, true, {:essl, []}, :undefined, true, :infinity, false}, 'https://repo.hex.pm/installs/hex-1.x.csv', [], :none, [], 1473988474464, :undefined, :undefined, false}, {:session, {{'repo.hex.pm', 443}, #PID<0.113.0>}, false, :https, {:sslsocket, {:gen_tcp, #Port<0.4202>, :tls_connection, :undefined}, #PID<0.117.0>}, {:essl, []}, 1, :keep_alive, false}, :undefined, :undefined, :undefined, {:httpc_response, :parse, [:nolimit, true]}, {[], []}, {[], []}, :new, [], :nolimit, :nolimit, {:options, {:undefined, []}, {:undefined, []}, 0, 2, 5, 120000, 2, :disabled, false, :inet, :default, :default, []}, {:timers, [], :undefined}, :httpc_mix, :inactive}

01:14:35.093 [error] Failed updating session:
   ProfileName: :httpc_mix
   SessionId:   {{'repo.hex.pm', 443}, #PID<0.120.0>}
   Pos:         7
   Value:       0
when
   Session (db) info: :undefined
   Session (db):      {:session, {{'repo.hex.pm', 443}, #PID<0.120.0>}, false, :https,
 {:sslsocket, {:gen_tcp, #Port<0.4706>, :tls_connection, :undefined},
  #PID<0.121.0>}, {:essl, []}, 1, :keep_alive, true}
   Session (record):  {:EXIT,
 {:badarg,
  [{:ets, :lookup,
    [:httpc_mix__session_db, {{'repo.hex.pm', 443}, #PID<0.120.0>}], []},
   {:httpc_manager, :lookup_session, 2, [file: 'httpc_manager.erl', line: 189]},
   {:httpc_handler, :update_session, 4,
    [file: 'httpc_handler.erl', line: 1909]},
   {:httpc_handler, :handle_empty_queue, 4,
    [file: 'httpc_handler.erl', line: 1368]},
   {:httpc_handler, :handle_info, 2, [file: 'httpc_handler.erl', line: 471]},
   {:gen_server, :try_dispatch, 4, [file: 'gen_server.erl', line: 601]},
   {:gen_server, :handle_msg, 5, [file: 'gen_server.erl', line: 667]},
   {:proc_lib, :init_p_do_apply, 3, [file: 'proc_lib.erl', line: 247]}]}}
   T: :error
   E: :badarg

01:14:35.096 [error] Failed updating session:
   ProfileName: :httpc_mix
   SessionId:   {{'repo.hex.pm', 443}, #PID<0.120.0>}
   Pos:         9
   Value:       true
when
   Session (db) info: :undefined
   Session (db):      {:session, {{'repo.hex.pm', 443}, #PID<0.120.0>}, false, :https,
 {:sslsocket, {:gen_tcp, #Port<0.4706>, :tls_connection, :undefined},
  #PID<0.121.0>}, {:essl, []}, 1, :keep_alive, false}
   Session (record):  {:EXIT,
 {:badarg,
  [{:ets, :lookup,
    [:httpc_mix__session_db, {{'repo.hex.pm', 443}, #PID<0.120.0>}], []},
   {:httpc_manager, :lookup_session, 2, [file: 'httpc_manager.erl', line: 189]},
   {:httpc_handler, :update_session, 4,
    [file: 'httpc_handler.erl', line: 1909]},
   {:httpc_handler, :maybe_make_session_available, 2,
    [file: 'httpc_handler.erl', line: 1516]},
   {:httpc_handler, :answer_request, 3,
    [file: 'httpc_handler.erl', line: 1507]},
   {:httpc_handler, :terminate, 2, [file: 'httpc_handler.erl', line: 759]},
   {:gen_server, :try_terminate, 3, [file: 'gen_server.erl', line: 629]},
   {:gen_server, :terminate, 7, [file: 'gen_server.erl', line: 795]}]}}
   T: :error
   E: :badarg

01:14:35.100 [error] GenServer #PID<0.120.0> terminating
** (stop) {:failed_updating_session, [profile: :httpc_mix, session_id: {{'repo.hex.pm', 443}, #PID<0.120.0>}, pos: 9, value: true, etype: :error, error: :badarg, stacktrace: [{:ets, :update_element, [:httpc_mix__session_db, {{'repo.hex.pm', 443}, #PID<0.120.0>}, {9, true}], []}, {:httpc_manager, :update_session, 4, [file: 'httpc_manager.erl', line: 210]}, {:httpc_handler, :update_session, 4, [file: 'httpc_handler.erl', line: 1887]}, {:httpc_handler, :maybe_make_session_available, 2, [file: 'httpc_handler.erl', line: 1516]}, {:httpc_handler, :answer_request, 3, [file: 'httpc_handler.erl', line: 1507]}, {:httpc_handler, :terminate, 2, [file: 'httpc_handler.erl', line: 759]}, {:gen_server, :try_terminate, 3, [file: 'gen_server.erl', line: 629]}, {:gen_server, :terminate, 7, [file: 'gen_server.erl', line: 795]}]]}
    (inets) httpc_handler.erl:1911: :httpc_handler.update_session/4
    (inets) httpc_handler.erl:1516: :httpc_handler.maybe_make_session_available/2
    (inets) httpc_handler.erl:1507: :httpc_handler.answer_request/3
    (inets) httpc_handler.erl:759: :httpc_handler.terminate/2
    (stdlib) gen_server.erl:629: :gen_server.try_terminate/3
    (stdlib) gen_server.erl:795: :gen_server.terminate/7
    (stdlib) proc_lib.erl:247: :proc_lib.init_p_do_apply/3
Last message: {:ssl, {:sslsocket, {:gen_tcp, #Port<0.4706>, :tls_connection, :undefined}, #PID<0.121.0>}, "HTTP/1.1 200 OK\r\nx-amz-id-2: W3k4L+p626518o5+KrFek8oBxnktqfZ769t+PP25R8pScWuA0LT+L8HisNrul1dv3TvQb8kIVvk=\r\nx-amz-request-id: 7E454BFBAF6F3DF9\r\nx-amz-replication-status: PENDING\r\nLast-Modified: Sat, 30 Jul 2016 23:05:55 GMT\r\nETag: \"d32f7de645496761b60c680291ee3525\"\r\nCache-Control: public, max-age=604800\r\nx-amz-meta-surrogate-key: installs\r\nx-amz-version-id: CrsNU9_yL8iWXbBOT.F526Di9hL43Vx9\r\nContent-Type: binary/octet-stream\r\nServer: AmazonS3\r\nVia: 1.1 varnish\r\nFastly-Debug-Digest: 3ca21dbf8bc33045027ae1a8e2627bd64cadf3e1fd1bf5312d688f1fba31a836\r\nContent-Length: 350\r\nAccept-Ranges: bytes\r\nDate: Fri, 16 Sep 2016 01:14:34 GMT\r\nVia: 1.1 varnish\r\nAge: 221335\r\nConnection: keep-alive\r\nX-Served-By: cache-iad2151-IAD, cache-ord1742-ORD\r\nX-Cache: HIT, HIT\r\nX-Cache-Hits: 1, 1\r\nX-Timer: S1473988474.908466,VS0,VE0\r\n\r\nfUkcNn473GFr0itJqMdatVfOf5zbDqGn2n0YjYsQPGSjBS/41dmW2zb6v97aOXMR\nyZzjfg2D5BPJuQ3Mu+JsZ7hgEqEFCveEqRS/kaIQddMCPWT2ZgU14iR+nzTIEvHJ\naqLJF/0+ALqtTPmNX8pAZmhqYEGusywJjZMFVp7Or+a40N4p74DTTP1waecF9YCN\nz+/Uwa7iJqIQwdivZ0b5VJhVqMhQBXGC+0TK4kn2SoYw2ygRKfl1d8yYLp1HPQIt\nzMRQUfAcoBj80jBklep538DoYv4KqJHdN98qrE7MbTb9ts/+qUF9KL5yZdzj7duv\nwZT6My1jQJxZO7SaR1wKOg==\n"}
State: {:state, {:request, #Reference<0.0.1.203>, #PID<0.71.0>, 0, :https, {'repo.hex.pm', 443}, '/installs/hex-1.x.csv.signed', [], :get, {:http_request_h, :undefined, 'keep-alive', :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, 'repo.hex.pm', :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, :undefined, [], 'Mix/1.3.2', :undefined, :undefined, :undefined, '0', :undefined, :undefined, :undefined, :undefined, :undefined, ...}, {[], []}, {:http_options, 'HTTP/1.1', :infinity, true, {:essl, []}, :undefined, true, :infinity, false}, 'https://repo.hex.pm/installs/hex-1.x.csv.signed', [], :none, [], 1473988474841, :undefined, :undefined, false}, {:session, {{'repo.hex.pm', 443}, #PID<0.120.0>}, false, :https, {:sslsocket, {:gen_tcp, #Port<0.4706>, :tls_connection, :undefined}, #PID<0.121.0>}, {:essl, []}, 1, :keep_alive, false}, :undefined, :undefined, :undefined, {:httpc_response, :parse, [:nolimit, true]}, {[], []}, {[], []}, :new, [], :nolimit, :nolimit, {:options, {:undefined, []}, {:undefined, []}, 0, 2, 5, 120000, 2, :disabled, false, :inet, :default, :default, []}, {:timers, [], :undefined}, :httpc_mix, :inactive}
* creating /root/.mix/archives/hex-0.13.0
 ---> 04efb1f04cfd
Removing intermediate container 02e9a8783007
Step 8 : RUN mix deps.get --only-prod
 ---> Running in 1d804a2df3e4
Running dependency resolution
All dependencies up to date
 ---> ae69d41ffe4b
Removing intermediate container 1d804a2df3e4
Step 9 : RUN mix compile
 ---> Running in fd33bd36d78a
==> connection
Compiling 1 file (.ex)
Generated connection app
==> gettext
Compiling 1 file (.yrl)
Compiling 1 file (.erl)
Compiling 19 files (.ex)
Generated gettext app
==> ranch (compile)
Compiled src/ranch_transport.erl
Compiled src/ranch_listener_sup.erl
Compiled src/ranch_protocol.erl
Compiled src/ranch_server.erl
Compiled src/ranch_sup.erl
Compiled src/ranch_app.erl
Compiled src/ranch_acceptor.erl
Compiled src/ranch_conns_sup.erl
Compiled src/ranch_acceptors_sup.erl
Compiled src/ranch.erl
Compiled src/ranch_tcp.erl
Compiled src/ranch_ssl.erl
==> poolboy (compile)
Compiled src/poolboy_worker.erl
Compiled src/poolboy_sup.erl
Compiled src/poolboy.erl
==> decimal
Compiling 1 file (.ex)
Generated decimal app
==> poison
Compiling 4 files (.ex)
Generated poison app
==> db_connection
Compiling 23 files (.ex)
Generated db_connection app
==> phoenix_pubsub
Compiling 12 files (.ex)
Generated phoenix_pubsub app
==> cowlib (compile)
Compiled src/cow_http_te.erl
src/cow_multipart.erl:392: Warning: crypto:rand_bytes/1 is deprecated and will be removed in a future release; use crypto:strong_rand_bytes/1
Compiled src/cow_multipart.erl
Compiled src/cow_qs.erl
Compiled src/cow_cookie.erl
Compiled src/cow_date.erl
Compiled src/cow_http_hd.erl
Compiled src/cow_spdy.erl
Compiled src/cow_http.erl
Compiled src/cow_mimetypes.erl
==> cowboy (compile)
Compiled src/cowboy_middleware.erl
Compiled src/cowboy_sub_protocol.erl
Compiled src/cowboy_app.erl
Compiled src/cowboy_bstr.erl
Compiled src/cowboy_clock.erl
Compiled src/cowboy_loop_handler.erl
Compiled src/cowboy_static.erl
Compiled src/cowboy_http_handler.erl
Compiled src/cowboy.erl
Compiled src/cowboy_spdy.erl
Compiled src/cowboy_rest.erl
Compiled src/cowboy_http.erl
Compiled src/cowboy_handler.erl
Compiled src/cowboy_websocket_handler.erl
Compiled src/cowboy_router.erl
Compiled src/cowboy_sup.erl
Compiled src/cowboy_protocol.erl
Compiled src/cowboy_websocket.erl
Compiled src/cowboy_req.erl
==> mime
Compiling 1 file (.ex)
Generated mime app
==> plug
Compiling 44 files (.ex)
Generated plug app
==> phoenix_html
Compiling 8 files (.ex)
Generated phoenix_html app
==> phoenix
Compiling 60 files (.ex)
Generated phoenix app
==> postgrex
Compiling 45 files (.ex)
Generated postgrex app
==> ecto
Compiling 68 files (.ex)
Generated ecto app
==> phoenix_ecto
Compiling 4 files (.ex)
Generated phoenix_ecto app
==> qpay
Compiling 12 files (.ex)
Generated qpay app
 ---> 5dc8b134cb28
Removing intermediate container fd33bd36d78a
Step 10 : EXPOSE 4000
 ---> Running in 03b9b1d8c750
 ---> 2d6278a62e21
Removing intermediate container 03b9b1d8c750
Step 11 : CMD mix phoenix.server
 ---> Running in e5729fcb7ead
 ---> fc7237f97f9f
Removing intermediate container e5729fcb7ead
Successfully built fc7237f97f9f
Recreating qpay_pg_1
Recreating qpay_web_1
Attaching to qpay_pg_1, qpay_web_1
pg_1   | LOG:  database system was shut down at 2016-09-16 01:06:00 UTC
pg_1   | LOG:  MultiXact member wraparound protections are now enabled
pg_1   | LOG:  database system is ready to accept connections
pg_1   | LOG:  autovacuum launcher started
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.227.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.212.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.222.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.213.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.209.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.228.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.226.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.223.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.211.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.225.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.221.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.220.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.216.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.218.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.219.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.210.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.214.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.215.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.224.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:18.966 [error] Postgrex.Protocol (#PID<0.217.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:19.025 [info] Running Qpay.Endpoint with Cowboy using http://localhost:4000
web_1  | 01:15:19.054 [error] Could not find static manifest at "/app/_build/prod/lib/qpay/priv/static/manifest.json". Run "mix phoenix.digest" after building your static files or remove the configuration from "config/prod.exs".
web_1  | 01:15:20.068 [error] Postgrex.Protocol (#PID<0.216.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
web_1  | 01:15:20.136 [error] Postgrex.Protocol (#PID<0.219.0>) failed to connect: ** (DBConnection.ConnectionError) tcp connect: connection refused - :econnrefused
```

The `connection refused` error just keeps repeating infinitely.