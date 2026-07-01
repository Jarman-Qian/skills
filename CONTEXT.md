# Jarman 技能库

个人 AI Agent 技能集合。技能以 `/` 命令形式被工具加载，组织在 `skills/<分类>/<技能名>/SKILL.md` 路径下。

## 术语

**技能**：一个独立的 AI 指令文件，定义了一段对话协议或自动化流程，由用户通过 `/<技能名>` 手动触发。每个技能对应一个独立目录，`SKILL.md` 为唯一入口。

**分类**：技能的组织维度。按技能的作用领域划分，如 `learning`（学习与认知验证）。分类即 `skills/` 下的子目录名。

**SKILL.md**：技能的定义文件，包含 YAML frontmatter（name、description、disable-model-invocation）和 Markdown 正文。是 AI 工具加载技能的入口。

**软依赖**：本仓库技能对外部技能库的声明式引用关系。技能不内置依赖的副本，而是期望使用者自行安装。依赖关系记录在 README.md 中。

**Frontmatter**：SKILL.md 顶部的 YAML 元数据块，声明技能名、描述和调用策略。

## 关系

- 一个**分类**包含多个**技能**
- 每个**技能**由一个**SKILL.md** 定义
- **技能**可通过**软依赖**引用外部技能库中的技能

## 已消除的歧义

- "技能" vs "skill" — 正文统一用"技能"，frontmatter 字段用英文（name、description）。
- 本仓库的"安装"是指将 `skills/` 目录复制到工具的全局 skills 路径，不涉及 npm 包或 `npx skills add`（仅外部依赖使用该方式）。
