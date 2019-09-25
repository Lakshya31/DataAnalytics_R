average = function(){

  students = c("Lakshya","Sidrocks","gaurav")
  
  cie1 = array(c(25:30,25:30,25:30),dim = c(6,3))
  cie2 = array(c(22:27,21:26,20:25),dim = c(6,3))
  
  avg = (cie1+cie2)/2
  avg <- round(avg)
  
  colnames(avg) <- students
  
  avg
}

average()
