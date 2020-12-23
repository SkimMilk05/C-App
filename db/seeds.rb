# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

preTest = Test.create(user_id: 1, pre_test: true, questions_correct: 0)
##########################################################################################################
#making test questions and options

#Question 1
Q1 = TestQuestion.create(active: true, question: "Which of the following statements is false:", correct_ans: 'C', test: preTest)
Q1A = TestOption.create(test_question: Q1, letter: 'A', text: 'Normal squamous epithelium becomes dark brown with Lugol’s due to staining of the intracellular glycogen in superficial layers', img_url: nil)
Q1B = TestOption.create(test_question: Q1, letter: 'B', text: 'Normal columnar epithelium may temporarily become white with application of acetic acid', img_url: nil)
Q1C = TestOption.create(test_question: Q1, letter: 'C', text: 'The presence of columnar epithelium on the ectocervix is abnormal', img_url: nil)
Q1D = TestOption.create(test_question: Q1, letter: 'D', text: 'Prominent, branching blood vessels can be normal', img_url: nil)
Q1E = TestOption.create(test_question: Q1, letter: 'E', text: 'The cervix increases in size under the influence of estrogen', img_url: nil)

#Question 2
Q2 = TestQuestion.create(active: true, question: "What is the most common error in colposcopy?", correct_ans: 'A')
Q2A = TestOption.create(test_question: Q2, letter: 'A', text: 'Failure to identify the SCJ', img_url: nil)
Q2B = TestOption.create(test_question: Q2, letter: 'B', text: 'Choosing incorrect biopsy sites', img_url: nil)
Q2C = TestOption.create(test_question: Q2, letter: 'C', text: 'Insufficient tissue sampling', img_url: nil)
Q2D = TestOption.create(test_question: Q2, letter: 'D', text: 'Failure to identify satellite or vaginal lesions', img_url: nil)

#Question 3
Q3 = TestQuestion.create(active: true, question: 'Cervical cancer most commonly originates from cells in the:', correct_ans: 'B')
Q3A = TestOption.create(test_question: Q3, letter: 'A', text: 'Endocervix', img_url: nil)
Q3B = TestOption.create(test_question: Q3, letter: 'B', text: 'Ectocervix', img_url: nil)
Q3C = TestOption.create(test_question: Q3, letter: 'C', text: 'Endometrium', img_url: nil)
Q3D = TestOption.create(test_question: Q3, letter: 'D', text: 'Vagina', img_url: nil)

#Question 4
Q4 = TestQuestion.create(active: true, question: 'Which of the following is not a risk factor for persistent HPV infection?', correct_ans: 'C')
Q4A = TestOption.create(test_question: Q4, letter: 'A', text: 'Smoking', img_url: nil)
Q4B = TestOption.create(test_question: Q4, letter: 'B', text: 'HIV', img_url: nil)
Q4C = TestOption.create(test_question: Q4, letter: 'C', text: 'Recent diagnosis of HPV infection', img_url: nil)
Q4D = TestOption.create(test_question: Q4, letter: 'D', text: 'Older age', img_url: nil)
Q4E = TestOption.create(test_question: Q4, letter: 'E', text: 'Immunocompromised state', img_url: nil)
Q4F = TestOption.create(test_question: Q4, letter: 'F', text: 'High oncogenic HPV subtype', img_url: nil)

#######Q 5-25 ARE OF THE SAME GROUP //MAYBE USE A FOR LOOP?
   #Question 5
   Q5 = TestQuestion.create(active: true, question: 'Rapid appearance of acetowhite changes', correct_ans: 'C')

   #Question 6
   Q6 = TestQuestion.create(active: true, question: 'Thin acetowhite epithelium', correct_ans: 'B')

   #Question 7
   Q7 = TestQuestion.create(active: true, question: 'Coarse mosaic', correct_ans: 'C')

   #Question 8
   Q8 = TestQuestion.create(active: true, question: 'Condyloma', correct_ans: 'A')

   #Question 9
   Q9 = TestQuestion.create(active: true, question: 'Necrosis or ulceration', correct_ans: 'D')

   #Question 10
   Q10 = TestQuestion.create(active: true, question: 'Dense acetowhite epithelium', correct_ans: 'C')

   #Question 11
   Q11 = TestQuestion.create(active: true, question: 'Irregular surface (molehill-like appearance)', correct_ans: 'D')

   #Question 12
   Q12 = TestQuestion.create(active: true, question: 'Cuffed crypt (gland) opening', correct_ans: 'C')

   #Question 13
   Q13 = TestQuestion.create(active: true, question: 'Polyp', correct_ans: 'A')

   #Question 14
   Q14 = TestQuestion.create(active: true, question: 'Coarse punctuation', correct_ans: 'C')

   #Question 15
   Q15 = TestQuestion.create(active: true, question: 'Fine punctuations', correct_ans: 'B')

   #Question 16
   Q16 = TestQuestion.create(active: true, question: 'Congenital transformation zone', correct_ans: 'A')

   #Question 17
   Q17 = TestQuestion.create(active: true, question: 'Sharp border', correct_ans: 'C')

   #Question 18
   Q18 = TestQuestion.create(active: true, question: 'Inner border sign', correct_ans: 'C')

   #Question 19
   Q19 = TestQuestion.create(active: true, question: 'Fine mosaic', correct_ans: 'B')

   #Question 20
   Q20 = TestQuestion.create(active: true, question: 'Exophytic lesions', correct_ans: 'D')

   #Question 21
   Q21 = TestQuestion.create(active: true, question: 'Irregular, geographic border', correct_ans: 'B')

   #Question 22
   Q22 = TestQuestion.create(active: true, question: 'Rag sign (peeling epithelium)', correct_ans: 'C')

   #Question 23
   Q23 = TestQuestion.create(active: true, question: 'Abnormal vessels', correct_ans: 'D')

   #Question 24
   Q24 = TestQuestion.create(active: true, question: 'Tumor or gross neoplasm', correct_ans: 'D')

   #Question 25
   Q25 = TestQuestion.create(active: true, question: 'Cervical stenosis', correct_ans: 'A')

   [Q5, Q6, Q7, Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25].each do |n|
      TestOption.create(test_question: n, letter: 'A', text: 'benign', img_url: nil)
      TestOption.create(test_question: n, letter: 'B', text: 'low grade', img_url: nil)
      TestOption.create(test_question: n, letter: 'C', text: 'high grade', img_url: nil)
      TestOption.create(test_question: n, letter: 'D', text: 'suspicious for invasion', img_url: nil)
   end
   ####options

##########end


#Question 26
Q26 = TestQuestion.create(active: true, question: 'Choose the photo with ABNORMAL findings (all photos taken after application of acetic acid):', correct_ans: 'C')
Q26A = TestOption.create(test_question: Q26, letter: 'A', img_url: '26A')
Q26B = TestOption.create(test_question: Q26, letter: 'B', img_url: '26B')
Q26C = TestOption.create(test_question: Q26, letter: 'C', img_url: '26C')
Q26D = TestOption.create(test_question: Q26, letter: 'D', img_url: '26D')

#Question 27
Q27 = TestQuestion.create(active: true, question: 'Which of the following photos has normal blood vessels?', correct_ans: 'B')
Q27A = TestOption.create(test_question: Q26, letter: 'A', img_url: '27A')
Q27B = TestOption.create(test_question: Q26, letter: 'B', img_url: '27B')
Q27C = TestOption.create(test_question: Q26, letter: 'C', img_url: '27C')
Q27D = TestOption.create(test_question: Q26, letter: 'D', img_url: '27D')

#Question 28
Q28 = TestQuestion.create(active: true, question: 'Which of the following photos has findings consistent with HIGH GRADE dysplasia?', correct_ans: 'A')
Q28A = TestOption.create(test_question: Q26, letter: 'A', img_url: '28A')
Q28B = TestOption.create(test_question: Q26, letter: 'B', img_url: '28B')
Q28C = TestOption.create(test_question: Q26, letter: 'C', img_url: '28C')
Q28D = TestOption.create(test_question: Q26, letter: 'D', img_url: '28D')

#Question 29
Q29 = TestQuestion.create(active: true, question: 'Which of the following photos has findings consistent with LOW GRADE dysplasia?', correct_ans: 'B')
Q29A = TestOption.create(test_question: Q26, letter: 'A', img_url: '29A')
Q29B = TestOption.create(test_question: Q26, letter: 'B', img_url: '29B')
Q29C = TestOption.create(test_question: Q26, letter: 'C', img_url: '29C')
Q29D = TestOption.create(test_question: Q26, letter: 'D', img_url: '29D')

#######Q 30-39 ARE OF THE SAME GROUP //MAYBE USE A FOR LOOP?
   #Question 30
   Q30 = TestQuestion.create(active: true, question: 'Please identify the following findings in the photo:', correct_ans: 'D', img_url: '30')

   #Question 31
   Q31 = TestQuestion.create(active: true, question: 'Label the photo as suggestive of low or high grade findings:', correct_ans: 'B', img_url: '30')

   #Question 32
   Q32 = TestQuestion.create(active: true, question: 'Please identify the following findings in the photo:', correct_ans: 'C', img_url: '32')

   #Question 33
   Q33 = TestQuestion.create(active: true, question: 'Label the photo as suggestive of low or high grade findings:', correct_ans: 'A', img_url: '32')

   #Question 34
   Q34 = TestQuestion.create(active: true, question: 'Please identify the following findings in the photo:', correct_ans: 'A', img_url: '34')

   #Question 35
   Q35 = TestQuestion.create(active: true, question: 'Label the photo as suggestive of low or high grade findings:', correct_ans: 'A', img_url: '34')

   #Question 36
   Q36 = TestQuestion.create(active: true, question: 'Please identify the following findings in the photo:', correct_ans: 'E', img_url: '36')

   #Question 37
   Q37 = TestQuestion.create(active: true, question: 'Label the photo as suggestive of low or high grade findings:', correct_ans: 'B', img_url: '36')

   #Question 38
   Q38 = TestQuestion.create(active: true, question: 'Please identify the following findings in the photo:', correct_ans: 'B', img_url: '38')

   #Question 39
   Q39 = TestQuestion.create(active: true, question: 'Label the photo as suggestive of low or high grade findings:', correct_ans: 'B', img_url: '38')



   ####options
   [Q30,Q32,Q34,Q36,Q38].each do |n|
      TestOption.create(test_question: n, letter: 'A', text: 'fine punctuation', img_url: nil)
      TestOption.create(test_question: n, letter: 'B', text: 'coarse punctuation', img_url: nil)
      TestOption.create(test_question: n, letter: 'C', text: 'fine mosaic', img_url: nil)
      TestOption.create(test_question: n, letter: 'D', text: 'coarse mosaic', img_url: nil)
      TestOption.create(test_question: n, letter: 'E', text: 'cuffed crypt opening', img_url: nil)
   end

   [Q31,Q33,Q35,Q37,Q39].each do |n|
      TestOption.create(test_question: n, letter: 'A', text: 'low grade', img_url: nil)
      TestOption.create(test_question: n, letter: 'B', text: 'high grade', img_url: nil)
   end

####END


###########################################################################################################

testsession = ImageSession.create()


################imageset A
C107 = ImageSet.create(cervical_biopsies: '5:00 - CIN 1, 12:00 - CIN 1', ECC: 'not done')

C107_Pre = Image.create(img_url: 'C107_Pre.JPG', image_set: C107)
C107_Green = Image.create(img_url: 'C107_Green.JPG', image_set: C107)
C107_Post = Image.create(img_url: 'C107_Post.JPG', image_set: C107)

GreenArea.create(coordinates: '719,491,68', image: C107_Pre)
GreenArea.create(coordinates: '853,835,83', image: C107_Pre)
BlueArea.create(coordinates: '706,679,62', image: C107_Pre)

GreenArea.create(coordinates: '719,491,68', image: C107_Green)
GreenArea.create(coordinates: '853,835,83', image: C107_Green)
BlueArea.create(coordinates: '706,679,62', image: C107_Green)

GreenArea.create(coordinates: '719,491,68', image: C107_Post)
GreenArea.create(coordinates: '853,835,83', image: C107_Post)
BlueArea.create(coordinates: '706,679,62', image: C107_Post)

################imageset B
C109 = ImageSet.create(cervical_biopsies: '1:00 - CIN 1, 11:00 CIN 1', ECC: 'not done')

C109_Pre = Image.create(img_url: 'C109_Pre.JPG', image_set: C109)
C109_Green = Image.create(img_url: 'C109_Green.JPG', image_set: C109)
C109_Post = Image.create(img_url: 'C109_Post.JPG', image_set: C109)

GreenArea.create(coordinates: '1002,527,112', image: C109_Pre)
GreenArea.create(coordinates: '763,592,69', image: C109_Pre)

GreenArea.create(coordinates: '1002,527,112', image: C109_Green)
GreenArea.create(coordinates: '763,592,69', image: C109_Green)

GreenArea.create(coordinates: '1002,527,112', image: C109_Post)
GreenArea.create(coordinates: '763,592,69', image: C109_Post)
