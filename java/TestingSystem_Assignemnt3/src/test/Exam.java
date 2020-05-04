package test;

import java.time.LocalDate;
import java.time.LocalTime;

public class Exam {
	int examId;
	String code;
	String title;
	Categoryquestion categoryId;
	LocalTime duration;
	Account createId;
	LocalDate createDate;
	Question[] questions;
}
