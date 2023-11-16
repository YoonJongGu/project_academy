package timetable;

//		week        VARCHAR2(10)    not null,
//		timeYear    varchar2(10)    not null,
//		timeMonth   varchar2(10)    not null,
//		room        varchar2(20)    NOT NULL,
//		lessonTime   VARCHAR2(30)    not null,
//		lesson       varchar2(50)    not null,
//		teacher     varchar2(10)    not null

public class TimeTableDTO {
	private int idx;	
	private String week;
	private String timeYear;
	private String timeMonth;
	private String room;
	private String lessonTime;
	private String lesson;
	private String teacher;

	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	public String getTimeYear() {
		return timeYear;
	}
	public void setTimeYear(String timeYear) {
		this.timeYear = timeYear;
	}
	public String getTimeMonth() {
		return timeMonth;
	}
	public void setTimeMonth(String timeMonth) {
		this.timeMonth = timeMonth;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getLessonTime() {
		return lessonTime;
	}
	public void setLessonTime(String lessonTime) {
		this.lessonTime = lessonTime;
	}
	public String getLesson() {
		return lesson;
	}
	public void setLesson(String lesson) {
		this.lesson = lesson;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
}
