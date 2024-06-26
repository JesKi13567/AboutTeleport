## 第一次加载
# 计分板-清除
scoreboard objectives remove jkat.id
scoreboard objectives remove jkat.wait
scoreboard objectives remove jkat.mode
scoreboard objectives remove jkat.facing
scoreboard objectives remove jkat.leavegame
scoreboard objectives remove jkat.death.temp
scoreboard objectives remove jkat.check.walk
scoreboard objectives remove jkat.check.run
scoreboard objectives remove jkat.check.crouch
scoreboard objectives remove jkat.check.jump
scoreboard objectives remove jkat.check.swim
scoreboard objectives remove jkat.check.damage.get
scoreboard objectives remove jkat.check.damage.resist
scoreboard objectives remove jkat.check.sneak

scoreboard objectives remove jkat.last.d
scoreboard objectives remove jkat.last.x
scoreboard objectives remove jkat.last.y
scoreboard objectives remove jkat.last.z
scoreboard objectives remove jkat.last.d1
scoreboard objectives remove jkat.last.x1
scoreboard objectives remove jkat.last.y1
scoreboard objectives remove jkat.last.z1

scoreboard objectives remove jkat.home.d.1
scoreboard objectives remove jkat.home.x.1
scoreboard objectives remove jkat.home.y.1
scoreboard objectives remove jkat.home.z.1
scoreboard objectives remove jkat.home.d.2
scoreboard objectives remove jkat.home.x.2
scoreboard objectives remove jkat.home.y.2
scoreboard objectives remove jkat.home.z.2
scoreboard objectives remove jkat.home.d.3
scoreboard objectives remove jkat.home.x.3
scoreboard objectives remove jkat.home.y.3
scoreboard objectives remove jkat.home.z.3
scoreboard objectives remove jkat.home.d.4
scoreboard objectives remove jkat.home.x.4
scoreboard objectives remove jkat.home.y.4
scoreboard objectives remove jkat.home.z.4
scoreboard objectives remove jkat.home.d.5
scoreboard objectives remove jkat.home.x.5
scoreboard objectives remove jkat.home.y.5
scoreboard objectives remove jkat.home.z.5

scoreboard objectives remove jkat.warp.d.1
scoreboard objectives remove jkat.warp.x.1
scoreboard objectives remove jkat.warp.y.1
scoreboard objectives remove jkat.warp.z.1
scoreboard objectives remove jkat.warp.d.2
scoreboard objectives remove jkat.warp.x.2
scoreboard objectives remove jkat.warp.y.2
scoreboard objectives remove jkat.warp.z.2
scoreboard objectives remove jkat.warp.d.3
scoreboard objectives remove jkat.warp.x.3
scoreboard objectives remove jkat.warp.y.3
scoreboard objectives remove jkat.warp.z.3
scoreboard objectives remove jkat.warp.d.4
scoreboard objectives remove jkat.warp.x.4
scoreboard objectives remove jkat.warp.y.4
scoreboard objectives remove jkat.warp.z.4
scoreboard objectives remove jkat.warp.d.5
scoreboard objectives remove jkat.warp.x.5
scoreboard objectives remove jkat.warp.y.5
scoreboard objectives remove jkat.warp.z.5
scoreboard objectives remove jkat.warp.d.6
scoreboard objectives remove jkat.warp.x.6
scoreboard objectives remove jkat.warp.y.6
scoreboard objectives remove jkat.warp.z.6
scoreboard objectives remove jkat.warp.d.7
scoreboard objectives remove jkat.warp.x.7
scoreboard objectives remove jkat.warp.y.7
scoreboard objectives remove jkat.warp.z.7
scoreboard objectives remove jkat.warp.d.8
scoreboard objectives remove jkat.warp.x.8
scoreboard objectives remove jkat.warp.y.8
scoreboard objectives remove jkat.warp.z.8
scoreboard objectives remove jkat.warp.d.9
scoreboard objectives remove jkat.warp.x.9
scoreboard objectives remove jkat.warp.y.9
scoreboard objectives remove jkat.warp.z.9
scoreboard objectives remove jkat.warp.d.10
scoreboard objectives remove jkat.warp.x.10
scoreboard objectives remove jkat.warp.y.10
scoreboard objectives remove jkat.warp.z.10

scoreboard objectives remove jkat.guide
scoreboard objectives remove jkat.show
scoreboard objectives remove jkat.spawn
scoreboard objectives remove jkat.tpr
scoreboard objectives remove jkat.back
scoreboard objectives remove jkat.tpa
scoreboard objectives remove jkat.tpahere
scoreboard objectives remove jkat.tpa.ok
scoreboard objectives remove jkat.tpa.flag.ok
scoreboard objectives remove jkat.tpa.flag.tp
scoreboard objectives remove jkat.tpa.id
scoreboard objectives remove jkat.tpa.id.receive
scoreboard objectives remove jkat.sethome
scoreboard objectives remove jkat.home
scoreboard objectives remove jkat.home.num
scoreboard objectives remove jkat.home.flag
scoreboard objectives remove jkat.warp
scoreboard objectives remove jkat.warp.num
scoreboard objectives remove jkat.wait.pearl
scoreboard objectives remove jkat.meow

# 计分板-添加
scoreboard objectives add jkat.id dummy "玩家id"
scoreboard objectives add jkat.wait dummy "等待时间"
scoreboard objectives add jkat.mode dummy "传送模式"
scoreboard objectives add jkat.facing dummy "玩家朝向-水平"
scoreboard objectives add jkat.leavegame custom:leave_game "离开服务器"
scoreboard objectives add jkat.death.temp deathCount "死亡接口"
scoreboard objectives add jkat.check.walk custom:walk_one_cm "移动检查-走"
scoreboard objectives add jkat.check.run custom:sprint_one_cm "移动检查-跑"
scoreboard objectives add jkat.check.crouch custom:crouch_one_cm "移动检查-潜"
scoreboard objectives add jkat.check.jump custom:jump "移动检查-跳"
scoreboard objectives add jkat.check.swim custom:swim_one_cm "移动检查-游"
scoreboard objectives add jkat.check.damage.get custom:damage_taken "移动检查-受伤"
scoreboard objectives add jkat.check.damage.resist custom:damage_resisted "移动检查-受伤抵挡"
scoreboard objectives add jkat.check.sneak custom:sneak_time "潜行时间"

scoreboard objectives add jkat.last.d dummy "上次d"
scoreboard objectives add jkat.last.x dummy "上次x"
scoreboard objectives add jkat.last.y dummy "上次y"
scoreboard objectives add jkat.last.z dummy "上次z"
scoreboard objectives add jkat.last.d1 dummy "上次d1"
scoreboard objectives add jkat.last.x1 dummy "上次x1"
scoreboard objectives add jkat.last.y1 dummy "上次y1"
scoreboard objectives add jkat.last.z1 dummy "上次z1"

scoreboard objectives add jkat.home.d.1 dummy "家d1"
scoreboard objectives add jkat.home.x.1 dummy "家x1"
scoreboard objectives add jkat.home.y.1 dummy "家y1"
scoreboard objectives add jkat.home.z.1 dummy "家z1"
scoreboard objectives add jkat.home.d.2 dummy "家d2"
scoreboard objectives add jkat.home.x.2 dummy "家x2"
scoreboard objectives add jkat.home.y.2 dummy "家y2"
scoreboard objectives add jkat.home.z.2 dummy "家z2"
scoreboard objectives add jkat.home.d.3 dummy "家d3"
scoreboard objectives add jkat.home.x.3 dummy "家x3"
scoreboard objectives add jkat.home.y.3 dummy "家y3"
scoreboard objectives add jkat.home.z.3 dummy "家z3"
scoreboard objectives add jkat.home.d.4 dummy "家d4"
scoreboard objectives add jkat.home.x.4 dummy "家x4"
scoreboard objectives add jkat.home.y.4 dummy "家y4"
scoreboard objectives add jkat.home.z.4 dummy "家z4"
scoreboard objectives add jkat.home.d.5 dummy "家d5"
scoreboard objectives add jkat.home.x.5 dummy "家x5"
scoreboard objectives add jkat.home.y.5 dummy "家y5"
scoreboard objectives add jkat.home.z.5 dummy "家z5"

scoreboard objectives add jkat.warp.d.1 dummy "地标d1"
scoreboard objectives add jkat.warp.x.1 dummy "地标x1"
scoreboard objectives add jkat.warp.y.1 dummy "地标y1"
scoreboard objectives add jkat.warp.z.1 dummy "地标z1"
scoreboard objectives add jkat.warp.d.2 dummy "地标d2"
scoreboard objectives add jkat.warp.x.2 dummy "地标x2"
scoreboard objectives add jkat.warp.y.2 dummy "地标y2"
scoreboard objectives add jkat.warp.z.2 dummy "地标z2"
scoreboard objectives add jkat.warp.d.3 dummy "地标d3"
scoreboard objectives add jkat.warp.x.3 dummy "地标x3"
scoreboard objectives add jkat.warp.y.3 dummy "地标y3"
scoreboard objectives add jkat.warp.z.3 dummy "地标z3"
scoreboard objectives add jkat.warp.d.4 dummy "地标d4"
scoreboard objectives add jkat.warp.x.4 dummy "地标x4"
scoreboard objectives add jkat.warp.y.4 dummy "地标y4"
scoreboard objectives add jkat.warp.z.4 dummy "地标z4"
scoreboard objectives add jkat.warp.d.5 dummy "地标d5"
scoreboard objectives add jkat.warp.x.5 dummy "地标x5"
scoreboard objectives add jkat.warp.y.5 dummy "地标y5"
scoreboard objectives add jkat.warp.z.5 dummy "地标z5"
scoreboard objectives add jkat.warp.d.6 dummy "地标d6"
scoreboard objectives add jkat.warp.x.6 dummy "地标x6"
scoreboard objectives add jkat.warp.y.6 dummy "地标y6"
scoreboard objectives add jkat.warp.z.6 dummy "地标z6"
scoreboard objectives add jkat.warp.d.7 dummy "地标d7"
scoreboard objectives add jkat.warp.x.7 dummy "地标x7"
scoreboard objectives add jkat.warp.y.7 dummy "地标y7"
scoreboard objectives add jkat.warp.z.7 dummy "地标z7"
scoreboard objectives add jkat.warp.d.8 dummy "地标d8"
scoreboard objectives add jkat.warp.x.8 dummy "地标x8"
scoreboard objectives add jkat.warp.y.8 dummy "地标y8"
scoreboard objectives add jkat.warp.z.8 dummy "地标z8"
scoreboard objectives add jkat.warp.d.9 dummy "地标d9"
scoreboard objectives add jkat.warp.x.9 dummy "地标x9"
scoreboard objectives add jkat.warp.y.9 dummy "地标y9"
scoreboard objectives add jkat.warp.z.9 dummy "地标z9"
scoreboard objectives add jkat.warp.d.10 dummy "地标d10"
scoreboard objectives add jkat.warp.x.10 dummy "地标x10"
scoreboard objectives add jkat.warp.y.10 dummy "地标y10"
scoreboard objectives add jkat.warp.z.10 dummy "地标z10"

scoreboard objectives add jkat.guide trigger "获取传送指南"
scoreboard objectives add jkat.show trigger "显示玩家ID列表"
scoreboard objectives add jkat.spawn trigger "返回主城"
scoreboard objectives add jkat.tpr trigger "随机传送"
scoreboard objectives add jkat.back trigger "返回上个地点"
scoreboard objectives add jkat.tpa trigger "请求传送过去"
scoreboard objectives add jkat.tpahere trigger "请求传送过来"
scoreboard objectives add jkat.tpa.ok trigger "请求传送表态"
scoreboard objectives add jkat.tpa.flag.ok dummy "请求传送表态标记"
scoreboard objectives add jkat.tpa.flag.tp dummy "请求传送成功标记"
scoreboard objectives add jkat.tpa.id dummy "请求传送ID"
scoreboard objectives add jkat.tpa.id.receive dummy "认定请求传送ID"
scoreboard objectives add jkat.sethome trigger "设置家"
scoreboard objectives add jkat.home trigger "回家"
scoreboard objectives add jkat.home.num dummy "家编号"
scoreboard objectives add jkat.home.flag dummy "家是否存在"
scoreboard objectives add jkat.warp trigger "地标"
scoreboard objectives add jkat.warp.num dummy "地标编号"
scoreboard objectives add jkat.wait.pearl dummy "珍珠冷却"
scoreboard objectives add jkat.meow trigger "神秘触发器"

# 其他
scoreboard players set #state jkat.mem 1
gamerule doImmediateRespawn false

# 默认设置等见 jkat:tick

# 可恶的ojng使其不起作用↓
#scoreboard objectives add jkat.check.climb custom:climb_one_cm "移动检查-爬"