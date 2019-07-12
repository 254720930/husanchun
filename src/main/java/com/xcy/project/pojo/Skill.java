package com.xcy.project.pojo;

/**
 * @Auther: http://www/qfedu.com
 * @Date: 2019/7/12
 * @Description:
 * @version: 1.0
 */
public class Skill {
    private int id;
    private String skillType;
    private int parentId;
    private int level;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSkillType() {
        return skillType;
    }

    public void setSkillType(String skillType) {
        this.skillType = skillType;
    }

    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    @Override
    public String toString() {
        return "Skill{" +
                "id=" + id +
                ", skillType='" + skillType + '\'' +
                ", parentId=" + parentId +
                ", level=" + level +
                '}';
    }
}
