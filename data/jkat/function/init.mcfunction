## 初始化
scoreboard players reset #id jkat.int
scoreboard players set #loaded jkat.int 1
scoreboard players set #100 jkat.int 100

# 记分板-清除
scoreboard objectives remove jkat.id
scoreboard objectives remove jkat.wait
scoreboard objectives remove jkat.mode
scoreboard objectives remove jkat.facing
scoreboard objectives remove jkat.leavegame
scoreboard objectives remove jkat.death.imp
scoreboard objectives remove jkat.death.record
scoreboard objectives remove jkat.check.damage.get
scoreboard objectives remove jkat.check.damage.resist

scoreboard objectives remove jkat.last.d
scoreboard objectives remove jkat.last.x
scoreboard objectives remove jkat.last.y
scoreboard objectives remove jkat.last.z
scoreboard objectives remove jkat.last.rx
scoreboard objectives remove jkat.last.ry

scoreboard objectives remove jkat.death.d
scoreboard objectives remove jkat.death.x
scoreboard objectives remove jkat.death.y
scoreboard objectives remove jkat.death.z
scoreboard objectives remove jkat.death.rx
scoreboard objectives remove jkat.death.ry

scoreboard objectives remove jkat.home.d.1
scoreboard objectives remove jkat.home.x.1
scoreboard objectives remove jkat.home.y.1
scoreboard objectives remove jkat.home.z.1
scoreboard objectives remove jkat.home.rx.1
scoreboard objectives remove jkat.home.ry.1

scoreboard objectives remove jkat.home.d.2
scoreboard objectives remove jkat.home.x.2
scoreboard objectives remove jkat.home.y.2
scoreboard objectives remove jkat.home.z.2
scoreboard objectives remove jkat.home.rx.2
scoreboard objectives remove jkat.home.ry.2

scoreboard objectives remove jkat.home.d.3
scoreboard objectives remove jkat.home.x.3
scoreboard objectives remove jkat.home.y.3
scoreboard objectives remove jkat.home.z.3
scoreboard objectives remove jkat.home.rx.3
scoreboard objectives remove jkat.home.ry.3

scoreboard objectives remove jkat.home.d.4
scoreboard objectives remove jkat.home.x.4
scoreboard objectives remove jkat.home.y.4
scoreboard objectives remove jkat.home.z.4
scoreboard objectives remove jkat.home.rx.4
scoreboard objectives remove jkat.home.ry.4

scoreboard objectives remove jkat.home.d.5
scoreboard objectives remove jkat.home.x.5
scoreboard objectives remove jkat.home.y.5
scoreboard objectives remove jkat.home.z.5
scoreboard objectives remove jkat.home.rx.5
scoreboard objectives remove jkat.home.ry.5

scoreboard objectives remove jkat.guide
scoreboard objectives remove jkat.list
scoreboard objectives remove jkat.list.ed
scoreboard objectives remove jkat.spawn
scoreboard objectives remove jkat.tpr
scoreboard objectives remove jkat.back
scoreboard objectives remove jkat.tpa
scoreboard objectives remove jkat.tpahere
scoreboard objectives remove jkat.tpa.ok
scoreboard objectives remove jkat.tpa.flag.ok
scoreboard objectives remove jkat.tpa.flag.tp
scoreboard objectives remove jkat.tpa.receive
scoreboard objectives remove jkat.sethome
scoreboard objectives remove jkat.home
scoreboard objectives remove jkat.warp
scoreboard objectives remove jkat.num
scoreboard objectives remove jkat.wait.pearl
scoreboard objectives remove jkat.wait.tpa
scoreboard objectives remove jkat.distance
scoreboard objectives remove jkat.lift
scoreboard objectives remove jkat.admin.is
scoreboard objectives remove jkat.admin.trigger

# 记分板-添加
scoreboard objectives add jkat.id dummy "玩家id"
scoreboard objectives add jkat.wait dummy "等待时间"
scoreboard objectives add jkat.mode dummy "传送模式"
scoreboard objectives add jkat.facing dummy "玩家朝向-水平"
scoreboard objectives add jkat.leavegame custom:leave_game "离开服务器"
scoreboard objectives add jkat.death.imp deathCount "死亡接口"
scoreboard objectives add jkat.death.record dummy "死亡记录"
scoreboard objectives add jkat.check.damage.get custom:damage_taken "移动检查-受伤"
scoreboard objectives add jkat.check.damage.resist custom:damage_resisted "移动检查-受伤抵挡"

scoreboard objectives add jkat.last.d dummy ""
scoreboard objectives add jkat.last.x dummy ""
scoreboard objectives add jkat.last.y dummy ""
scoreboard objectives add jkat.last.z dummy ""
scoreboard objectives add jkat.last.rx dummy ""
scoreboard objectives add jkat.last.ry dummy ""

scoreboard objectives add jkat.death.d dummy ""
scoreboard objectives add jkat.death.x dummy ""
scoreboard objectives add jkat.death.y dummy ""
scoreboard objectives add jkat.death.z dummy ""
scoreboard objectives add jkat.death.rx dummy ""
scoreboard objectives add jkat.death.ry dummy ""

scoreboard objectives add jkat.home.d.1 dummy ""
scoreboard objectives add jkat.home.x.1 dummy ""
scoreboard objectives add jkat.home.y.1 dummy ""
scoreboard objectives add jkat.home.z.1 dummy ""
scoreboard objectives add jkat.home.rx.1 dummy ""
scoreboard objectives add jkat.home.ry.1 dummy ""

scoreboard objectives add jkat.home.d.2 dummy ""
scoreboard objectives add jkat.home.x.2 dummy ""
scoreboard objectives add jkat.home.y.2 dummy ""
scoreboard objectives add jkat.home.z.2 dummy ""
scoreboard objectives add jkat.home.rx.2 dummy ""
scoreboard objectives add jkat.home.ry.2 dummy ""

scoreboard objectives add jkat.home.d.3 dummy ""
scoreboard objectives add jkat.home.x.3 dummy ""
scoreboard objectives add jkat.home.y.3 dummy ""
scoreboard objectives add jkat.home.z.3 dummy ""
scoreboard objectives add jkat.home.rx.3 dummy ""
scoreboard objectives add jkat.home.ry.3 dummy ""

scoreboard objectives add jkat.home.d.4 dummy ""
scoreboard objectives add jkat.home.x.4 dummy ""
scoreboard objectives add jkat.home.y.4 dummy ""
scoreboard objectives add jkat.home.z.4 dummy ""
scoreboard objectives add jkat.home.rx.4 dummy ""
scoreboard objectives add jkat.home.ry.4 dummy ""

scoreboard objectives add jkat.home.d.5 dummy ""
scoreboard objectives add jkat.home.x.5 dummy ""
scoreboard objectives add jkat.home.y.5 dummy ""
scoreboard objectives add jkat.home.z.5 dummy ""
scoreboard objectives add jkat.home.rx.5 dummy ""
scoreboard objectives add jkat.home.ry.5 dummy ""

scoreboard objectives add jkat.guide trigger "获取传送指南"
scoreboard objectives add jkat.list trigger "显示玩家ID列表"
scoreboard objectives add jkat.list.ed dummy "被列表显示标记"
scoreboard objectives add jkat.spawn trigger "返回主城"
scoreboard objectives add jkat.tpr trigger "随机传送"
scoreboard objectives add jkat.back trigger "返回上个地点"
scoreboard objectives add jkat.tpa trigger "请求传送过去"
scoreboard objectives add jkat.tpahere trigger "请求传送过来"
scoreboard objectives add jkat.tpa.ok trigger "请求传送表态"
scoreboard objectives add jkat.tpa.flag.ok dummy "请求传送表态标记"
scoreboard objectives add jkat.tpa.flag.tp dummy "请求传送成功标记"
scoreboard objectives add jkat.tpa.receive dummy "认定请求传送ID"
scoreboard objectives add jkat.sethome trigger "设置家"
scoreboard objectives add jkat.home trigger "回家"
scoreboard objectives add jkat.warp trigger "地标"
scoreboard objectives add jkat.num dummy "传送点编号"
scoreboard objectives add jkat.wait.pearl dummy "珍珠冷却"
scoreboard objectives add jkat.wait.tpa dummy "玩家间传送等待"
scoreboard objectives add jkat.distance dummy "传送距离分数"
scoreboard objectives add jkat.lift dummy "电梯传送冷却"
scoreboard objectives add jkat.admin.is dummy "管理员标记"
scoreboard objectives add jkat.admin.trigger trigger "管理员用触发器"
