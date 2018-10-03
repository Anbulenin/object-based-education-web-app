CREATE TABLE IF NOT EXISTS `department` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `depart_code` varchar(4) collate utf8_general_ci NOT NULL,
  `depart_name` varchar(100) collate utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `batch` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `batch_code` varchar(4) collate utf8_general_ci NOT NULL,
  `batch_name` varchar(100) collate utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `programme` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `depart_code` varchar(4) collate utf8_general_ci NOT NULL,
  `programme_code` varchar(4) collate utf8_general_ci NOT NULL,
  `programme_name` varchar(100) collate utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `semester` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `sem_code` varchar(4) collate utf8_general_ci NOT NULL,
  `sem_name` varchar(100) collate utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `syllabus` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(10) collate utf8_general_ci NOT NULL,
  `course_name` varchar(100) collate utf8_general_ci NOT NULL,
  `credit` varchar(3) collate utf8_general_ci NOT NULL,
  `depart_code` varchar(4) collate utf8_general_ci NOT NULL,
  `programme_code` varchar(4) collate utf8_general_ci NOT NULL,  
  `sem_code` varchar(4) collate utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;  

CREATE TABLE IF NOT EXISTS `workload` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) collate utf8_general_ci NOT NULL,
  `depart_code` varchar(4) collate utf8_general_ci NOT NULL,
  `programme_code` varchar(4) collate utf8_general_ci NOT NULL,  
  `sem_code` varchar(4) collate utf8_general_ci NOT NULL,
  `course_code` varchar(10) collate utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;




CREATE TABLE IF NOT EXISTS `co` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) collate utf8_general_ci NOT NULL,
  `depart_code` varchar(4) collate utf8_general_ci NOT NULL,
  `programme_code` varchar(4) collate utf8_general_ci NOT NULL,  
  `course_code` varchar(10) collate utf8_general_ci NOT NULL,
  `co_range` varchar(3) collate utf8_general_ci NOT NULL,  
  `co_outcome` varchar(200) collate utf8_general_ci NOT NULL,    
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `po` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) collate utf8_general_ci NOT NULL,
  `depart_code` varchar(4) collate utf8_general_ci NOT NULL,
  `programme_code` varchar(4) collate utf8_general_ci NOT NULL,  
  `po_code` varchar(3) collate utf8_general_ci NOT NULL,  
  `po_outcome` varchar(500) collate utf8_general_ci NOT NULL,    
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `peo` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) collate utf8_general_ci NOT NULL,
  `depart_code` varchar(4) collate utf8_general_ci NOT NULL,
  `programme_code` varchar(4) collate utf8_general_ci NOT NULL,  
  `peo_code` varchar(3) collate utf8_general_ci NOT NULL,  
  `peo_desc` varchar(500) collate utf8_general_ci NOT NULL,    
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;

/* Course Delivery Plan       */
CREATE TABLE IF NOT EXISTS `cdp` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) collate utf8_general_ci NOT NULL,
  `depart_code` varchar(4) collate utf8_general_ci NOT NULL,
  `programme_code` varchar(4) collate utf8_general_ci NOT NULL,  
  `semester_code` varchar(4) collate utf8_general_ci NOT NULL,    
  `course_code` varchar(10) collate utf8_general_ci NOT NULL,
  `period` varchar(3) collate utf8_general_ci NOT NULL,  
  `topic` varchar(200) collate utf8_general_ci NOT NULL,    
  `pertaining_co` varchar(3) collate utf8_general_ci NOT NULL,      
  `pertaining_btl` varchar(3) collate utf8_general_ci NOT NULL,        
  `tlo` varchar(200) collate utf8_general_ci NOT NULL,          
  `method_activity` varchar(100) collate utf8_general_ci NOT NULL,            
  `assessment_tlo` varchar(200) collate utf8_general_ci NOT NULL,    
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;


/* QP Setting     */
CREATE TABLE IF NOT EXISTS `qp_set` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) collate utf8_general_ci NOT NULL,
  `depart_code` varchar(4) collate utf8_general_ci NOT NULL,
  `programme_code` varchar(4) collate utf8_general_ci NOT NULL,  
  `semester_code` varchar(4) collate utf8_general_ci NOT NULL,    
  `course_code` varchar(10) collate utf8_general_ci NOT NULL,
  `assesmenttype_code` varchar(3) collate utf8_general_ci NOT NULL,  
  `qes_no` varchar(3) collate utf8_general_ci NOT NULL,  
  `co_code` varchar(3) collate utf8_general_ci NOT NULL,    
  `btl_code` varchar(3) collate utf8_general_ci NOT NULL,      
  `max_mark` varchar(3) collate utf8_general_ci NOT NULL,        
   PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;

/* Mark Entry     */
CREATE TABLE IF NOT EXISTS `mark_entry` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `faculty_code` varchar(10) collate utf8_general_ci NOT NULL,
  `depart_code` varchar(4) collate utf8_general_ci NOT NULL,
  `programme_code` varchar(4) collate utf8_general_ci NOT NULL,  
  `batch_code` varchar(4) collate utf8_general_ci NOT NULL,    
  `semester_code` varchar(4) collate utf8_general_ci NOT NULL,    
  `course_code` varchar(10) collate utf8_general_ci NOT NULL,
  `assesmenttype_code` varchar(3) collate utf8_general_ci NOT NULL,  
  `student_code` varchar(15) collate utf8_general_ci NOT NULL,    
  `qes_no` varchar(3) collate utf8_general_ci NOT NULL,  
  `co_code` varchar(3) collate utf8_general_ci NOT NULL,    
  `btl_code` varchar(3) collate utf8_general_ci NOT NULL,      
  `max_alloted` varchar(3) collate utf8_general_ci NOT NULL,	
   PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT=1 ;


  