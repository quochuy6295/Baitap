/*cau 1:Tạo view có chứa danh sách nhân viên thuộc phòng ban sale*/
CREATE VIEW danhsachphongsale as 
SELECT ac.fullname, ac.username 
FROM `account` as ac
WHERE ac.department_id = (SELECT department_id from department WHERE department_name = 'sale');

/* cau 2: Tạo view có chứa thông tin các account tham gia vào nhiều group nhất */
CREATE VIEW danhsachnhanvien AS
    SELECT 
        ac.email, ac.username, ac.fullname
    FROM
        `account` AS ac
    WHERE
        COUNT(ac.account_id) = ALL (SELECT 
                COUNT(ga.account_id)
            FROM 
                groupaccount AS ga
            GROUP BY ga.group_id
            HAVING COUNT(ga.account_id) >= 2);
            
/* cau 3:Tạo view có chứa câu hỏi có những content quá dài (content quá 300 từ
được coi là quá dài) và xóa nó đi*/
CREATE VIEW cauhoidai as
SELECT qu.content FROM question as qu 
WHERE char_length(qu.content) > 300;

DROP VIEW cauhoidai;

/* cau 4: Tạo view có chứa danh sách các phòng ban có nhiều nhân viên nhất*/
WITH bangsonguoi as
(SELECT ac.department_id as idphong,count(ac.account_id) as songuoi
from `account` as ac
GROup by department_Id)
SELECT idphong, MAX(songuoi) from bangsonguoi;
USE test;

/* cau 5: Tạo view có chứa tất các các câu hỏi do user họ Nguyễn tạo*/
CREATE VIEW cauhoidonguoihonguyen as
(SELECT qu.content as tencauhoi
FROM `account` as ac JOIN question as qu 
ON qu.creator_id = ac.account_id
WHERE ac.fullname LIKE ('NGUYEN%'))

