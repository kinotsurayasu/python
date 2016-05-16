face_num=6
def shoot():
	return face_num

>>>shoot()
#エラーにならない

#-------------------------------------
class Dice:
	face_num=6
	def shoot():
		return face_num

>>>import dice
>>>dice.Dice().shoot()
#エラーになる。関数の外の変数は読めないから。
#-------------------------------------
class Dice:
	face_num=6
	def shoot(self):
		return face_num
		
>>>import dice
>>>dice.Dice().shoot()
#エラーになる。selfでface_numは引き継いだものの、face_numというものはにから。
#-------------------------------------
class Dice:
	face_num=6
	def shoot(self):
		return self.face_num

>>>import dice
>>>dice.Dice().shoot()
#これが正解。エラーにならない。
------------------------------------------------
import random

class Dice:
	def __init__(self,val_1=6,val_2=6):
		self.face_num=val_1+val_2
	
	def shoot(self):
		return random.randint(1,self.face_num)

#正しい書き方。
#val_1とval_2に値を渡したい場合は、クラス名に丸括弧で値を渡す。Dice(10,12)という風に書く。selfのことは考えなくていい。
------------------------------------------------
class Dice():
	def __init__(self,val=6):
		self.face_num=val
	
	def shoot(self):
		return random.randint(1,self.face_num)

#class名のあとに丸括弧をつけても、エラーにならない。けど、いらないよね…。
------------------------------------------------



