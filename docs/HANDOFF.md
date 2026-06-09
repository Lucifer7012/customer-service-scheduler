# Handoff

本文件用于在不同电脑、不同 Codex 会话之间交接客服排班器项目进度。这里不记录 API Key、密码、Token、Cookie 或任何真实密钥。

## 新会话先读

在新电脑或新聊天里，先让 Codex 读取这些文件：

- `docs/HANDOFF.md`
- `docs/PROJECT_STATUS.md`
- `docs/CHANGELOG.md`
- `FEATURE_LOG.md`
- `agent.md`

可直接复制这句话作为开场：

```text
请先读取 docs/HANDOFF.md、docs/PROJECT_STATUS.md、docs/CHANGELOG.md、FEATURE_LOG.md 和 agent.md，然后继续这个项目的最新进度。不要记录任何 API Key、密码、Token。
```

## 固定口令

以后可以直接使用：

- `开始前帮我同步最新代码`
- `改完了，帮我检查并同步到 GitHub`

对应脚本：

```powershell
.\tools\sync-start.ps1
.\tools\sync-finish.ps1 -Message "简短说明这次改动"
```

也可以双击：

- `start-dev.cmd`
- `finish-dev.cmd`

## 当前项目快照

- 项目：客服排班器。
- GitHub：`https://github.com/Lucifer7012/customer-service-scheduler`。
- 在线页面：`https://lucifer7012.github.io/customer-service-scheduler/`。
- 入口：`index.html`。
- 类型：静态 HTML 单页工具。
- 当前主要需求：给客服和产品运维一起排班，并导出企业微信模板。
- 当前已完成：
  - 自然月排班和自定义日期范围。
  - 客服四人轮休规则。
  - 每 4 周休周末人员轮换。
  - 产品运维专员固定周排班。
  - 页面内展示并编辑企微导出信息。
  - 企业微信模板导出包含产品运维与客服。
  - 职务可选 `选填 / 产品运维专员 / 海外游戏客服`。

## 下一步建议

- 如果用户继续反馈 UI 不像“器”，优先改交互而不是只改静态表格。
- 如果用户继续反馈企业微信模板，优先用原模板文件核对行列、标题、说明、数据验证和班次名。
- 每轮改完后运行 `node tools/check-html.js`，再提交并同步 GitHub。
- 如果继续调整月份逻辑，注意：周轮换按日历周推进，详细排班只显示开始日期到结束日期之间的天数。
