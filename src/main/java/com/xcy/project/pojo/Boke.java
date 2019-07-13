package com.xcy.project.pojo;

/**
 * @Auther: http://www/qfedu.com
 * @Date: 2019/7/10
 * @Description:
 * @version: 1.0
 */
public class Boke {
    private int id;
    private String bokeTitle;
    private int skillId;
    private String skillType;
    private int speakerId;
    private String speakerName;
    private String bokeInfo;
    private int readNum;
    private String createTime;
    private String bokeSummary;
    private String keyWord;

    public String getKeyWord() {
        return keyWord;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }

    public String getBokeSummary() {
        return bokeSummary;
    }

    public void setBokeSummary(String bokeSummary) {
        this.bokeSummary = bokeSummary;
    }

    public int getReadNum() {
        return readNum;
    }

    public int getSkillId() {
        return skillId;
    }

    public void setSkillId(int skillId) {
        this.skillId = skillId;
    }

    public void setReadNum(int readNum) {
        this.readNum = readNum;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSpeakerName() {
        return speakerName;
    }

    public void setSpeakerName(String speakerName) {
        this.speakerName = speakerName;
    }

    public String getSkillType() {
        return skillType;
    }

    public void setSkillType(String skillType) {
        this.skillType = skillType;
    }

    public String getBokeTitle() {
        return bokeTitle;
    }

    public void setBokeTitle(String bokeTitle) {
        this.bokeTitle = bokeTitle;
    }

    public int getSpeakerId() {
        return speakerId;
    }

    public void setSpeakerId(int speakerId) {
        this.speakerId = speakerId;
    }

    public String getBokeInfo() {
        return bokeInfo;
    }

    public void setBokeInfo(String bokeInfo) {
        this.bokeInfo = bokeInfo;
    }

    @Override
    public String toString() {
        return "Boke{" +
                "id=" + id +
                ", bokeTitle='" + bokeTitle + '\'' +
                ", skillId=" + skillId +
                ", skillType='" + skillType + '\'' +
                ", speakerId=" + speakerId +
                ", speakerName='" + speakerName + '\'' +
                ", bokeSummary='" + bokeSummary + '\'' +
                ", readNum=" + readNum +
                ", createTime='" + createTime + '\'' +
                ", keyword='" + keyWord + '\'' +
                '}';
    }
}
