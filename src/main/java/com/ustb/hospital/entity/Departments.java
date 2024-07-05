package com.ustb.hospital.entity;

public class Departments {
private int departmentId;
private String departmentName;
private int departmentPid;
private int departmentLevel;
private String departmentPath;
private String  departmentDescription;

    public int getDepartmentId() {
        return departmentId;
    }

    public String  getDepartmentName() {
        return departmentName;
    }

    public int getDepartmentPid() {
        return departmentPid;
    }

    public int getDepartmentLevel() {
        return departmentLevel;
    }

    public String  getDepartmentPath() {
        return departmentPath;
    }

    public String  getDepartmentDescription() {
        return departmentDescription;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    public void setDepartmentName(String  departmentName) {
        this.departmentName = departmentName;
    }

    public void setDepartmentPid(int departmentPid) {
        this.departmentPid = departmentPid;
    }

    public void setDepartmentLevel(int departmentLevel) {
        this.departmentLevel = departmentLevel;
    }

    public void setDepartmentPath(String  departmentPath) {
        this.departmentPath = departmentPath;
    }

    public void setDepartmentDescription(String  departmentDescription) {
        this.departmentDescription = departmentDescription;
    }

    @Override
    public String toString() {
        return "Departments{" +
                "departmentId=" + departmentId +
                ", departmentName=" + departmentName +
                ", departmentPid=" + departmentPid +
                ", departmentLevel=" + departmentLevel +
                ", departmentPath=" + departmentPath +
                ", departmentDescription=" + departmentDescription +
                '}';
    }
}
