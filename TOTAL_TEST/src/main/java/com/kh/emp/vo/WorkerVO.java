package com.kh.emp.vo;

import java.util.List;

public class WorkerVO extends DepartmentVO  {

	public String workerNum;
	public String workerName;
	public String workerClass;
	public int workerAge;
	public String workerGender;
	public String workerPhoneNum;
	public String deptNum;
	public DepartmentVO deptList;
	private String[] workerPhoneNums;
	
	
	
	
	public DepartmentVO getDeptList() {
		return deptList;
	}
	public void setDeptList(DepartmentVO deptList) {
		this.deptList = deptList;
	}
	public String[] getWorkerPhoneNums() {
		return workerPhoneNums;
	}
	public void setWorkerPhoneNums(String[] workerPhoneNums) {
		this.workerPhoneNum = workerPhoneNums[0] + workerPhoneNums[1] +workerPhoneNums[2];
	}
	

	
	public String getWorkerNum() {
		return workerNum;
	}
	public void setWorkerNum(String workerNum) {
		this.workerNum = workerNum;
	}
	public String getWorkerName() {
		return workerName;
	}
	public void setWorkerName(String workerName) {
		this.workerName = workerName;
	}
	public String getWorkerClass() {
		return workerClass;
	}
	public void setWorkerClass(String workerClass) {
		this.workerClass = workerClass;
	}
	public int getWorkerAge() {
		return workerAge;
	}
	public void setWorkerAge(int workerAge) {
		this.workerAge = workerAge;
	}
	public String getWorkerGender() {
		return workerGender;
	}
	public void setWorkerGender(String workerGender) {
		this.workerGender = workerGender;
	}
	public String getWorkerPhoneNum() {
		return workerPhoneNum;
	}
	public void setWorkerPhoneNum(String workerPhoneNum) {
		this.workerPhoneNum = workerPhoneNum;
	}
	public String getDeptNum() {
		return deptNum;
	}
	public void setDeptNum(String deptNum) {
		this.deptNum = deptNum;
	}
	
	
	
}
