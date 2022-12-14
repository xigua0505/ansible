local config = {}

-- config.file = debug.getinfo(1).source
-- config.dsn = "sqlite://xui"
--- config.dsn = "odbc://xui:xui:xui"
config.dsn = os.getenv("DSN") --xswitch 1.8 up
--config.dsn = "pgsql://host=xswitch-pg dbname=xui user=xui password='xui' "
--config.dsn = "pgsql://postgresql://xui:xui@xswitch-pg/xui" --pgsql 9 up
-- config.check_permissions = true
config.redis_host = "xswitch-redis"
config.redis_port = 6379
-- config.redis_pass = nil
config.db_auto_connect = true
config.auto_record = false
config.auto_log = false
config.base_dir = "/usr/local/freeswitch"
config.sounds_dir = config.base_dir .. "/sounds"
config.storage_dir = config.base_dir .. "/storage"
config.recording_path = config.base_dir .. "/storage/recordings"
config.fiforecord_path = config.base_dir .. "/recordings"
config.callcenterrecord_path = config.base_dir .. "/recordings"
config.upload_path = config.base_dir .. "/storage/upload"
config.upload_script_path = config.base_dir .. "/storage/upload/scripts"
config.block_path = config.base_dir .. "/storage/blocks"
config.xui_path = config.base_dir .. "/xui"
config.audio_extension = "wav"
config.video_extension = "mp4"
config.ivr_greeting = "ivr/ivr-generic_greeting.wav"
config.ivr_invalid = "ivr/ivr-that_was_an_invalid_entry.wav"
config.audio_codec = "G722,PCMU,PCMA,GSM,G729,iLBC"
config.video_codec = "VP8,H264,G722,PCMU,PCMA,GSM,G729,iLBC"
config.openvpn_path =  "/root/keys"
config.switch_domain = "111.11.28.39"
config.switch_port = "8000"
config.abnormal_instant_conference_timeout = "120"
config.auth = "hash" -- or true | file | hash | redis | db
config.force_domain = os.getenv("FREESWITCH_DOMAIN")
config.record_answer = false
-- config.password_use_a1_hash = true
config.session_path = "/tmp"
config.view_path = config.base_dir .. "/xui/lua/xui/view"
config.leg_timeout = "30"
-- config.prefix_table = "gw"
-- config.httpFifoNotificationURL="http://localhost:9999"
config.tz = 8
-- config.cross_domain="http://192.168.3.119:8081"
-- config.cross_domain="*"
-- config.conferenceForceMatchCID = true
config.wechat_base_url = "http://example.com"
config.wechat_realm = "xyt"
config.template_id = "Mu6mySnQiCRdCa5QmJSCBOSIkAxjgm3CuUpp6FqTCnA"
-- config.wechat = {}
-- config.wechat.xyt = {APPID = 'wx', APPSEC = ''}
-- config.ticket_type_wechat_default = 'TICKET_TYPE_0' -- default ticket type from wechat
config.allow_change_ip = false
-- config.qywechat = {}
-- config.qywechat.CorpID = ''
-- config.qywechat.CorpSecret = ''
-- config.qywechat.AgentID = 10001
-- config.callcenter_bridge_failed_to_break = true
-- config.conference_use_pin = true
config.upload_max_size = os.getenv("UPLAOD_MAX_SIZE") or "100M"
config.node_subject_prefix = os.getenv("NODE_SUBJECT_PREFIX") or "cn.xswitch.node"
-- config.cc_track_on = true -- track callcenter
-- config.cc_track_hangup_unavail_agent = true
-- config.cc_fire_agent_state = true
-- config.cluster = true  -- Kamailio <-> FS cluster
-- config.cluster_ik_gateway = "internal_kamailio"  -- the gateway name to internal Kamailio
-- config.cluster_gk_gateway = "gateway_kamailio"  -- the gateway name to gateway Kamailio
-- config.cc_record_template = "$${base_dir}/storage/recordings/${strftime(%Y%m%d)}/cc-${strftime(%H%M%S)}-${create_uuid()}.mp3"
-- config.enable_stereo = true
-- config.record_file_replace_prefix = "http://yd.xswitch.cn"  -- url or directory
-- config.custom_about = "xyt"
-- config.forget_password = true
-- config.free_register = true
-- config.register_audit = true
-- config.callback_gateway = "callback"
-- config.xui_url = "https://xswitch.cn"
-- config.qywechat_webhookkey = 'f588ba02xxxxxxxxx'
return config
