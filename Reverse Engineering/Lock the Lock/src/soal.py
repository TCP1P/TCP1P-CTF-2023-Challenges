#!/usr/bin/python3

import tkinter as tk
from tkinter import *
from Crypto.Util.number import *
from tkinter.messagebox import *
import random

# <============= Operational ==================>
turn = 0
random.seed(199)
def main():
	class Node:
		def __init__(self, data):
			self.data = data
			self.l = None
			self.r = None
			self.height = 1

	class lendis():
		def insert(self, root, key):
			if not root:
				return Node(key)
			elif key < root.data:
				root.l = self.insert(root.l, key)
			else:
				root.r = self.insert(root.r, key)
			root.height = 1 + max(self.getHeight(root.l), self.getHeight(root.r))
			b = self.getBal(root)
			if b > 1 and key < root.l.data:
				return self.rRotate(root)
			if b < -1 and key > root.r.data:
				return self.lRotate(root)
			if b > 1 and key > root.l.data:
				root.l = self.lRotate(root.l)
				return self.rRotate(root)
			if b < -1 and key < root.r.data:
				root.r = self.rRotate(root.r)
				return self.lRotate(root)
			return root

		def lRotate(self, z):
			y = z.r
			T2 = y.l
			y.l = z
			z.r = T2
			z.height = 1 + max(self.getHeight(z.l),self.getHeight(z.r))
			y.height = 1 + max(self.getHeight(y.l),self.getHeight(y.r))
			return y

		def rRotate(self, z):
			y = z.l
			T3 = y.r
			y.r = z
			z.l = T3
			z.height = 1 + max(self.getHeight(z.l),self.getHeight(z.r))
			y.height = 1 + max(self.getHeight(y.l),self.getHeight(y.r))
			return y

		def getHeight(self, root):
			if not root:
				return 0
			return root.height

		def getBal(self, root):
			if not root:
				return 0
			return self.getHeight(root.l) - self.getHeight(root.r)

		def check(self, state, root, n, x):
			state = root
			for i in n:
				if i == '0':
					state = state.l
				elif i == '1':
					state = state.r
				if state == None:
					showwarning(title="sike", message='Error invalid node!\nResetting level...')
					return False
			if state.data == x:
				return True
			else:
				showwarning(title="wuat de hell", message='Wrong answer! \nResetting level...')
				return False

	def decrypt(key, plain):
		dec = ""
		key = long_to_bytes(int("".join(key), 2))
		for i in range(len(key)):
			dec += chr(key[i] ^ plain[i])
		return dec

	def initialization():
		tr = lendis()
		root = None
		for i in init:
			root = tr.insert(root, i)
		return tr, root

	def submit(root):
		global turn
		try:
			u = inp.get()
			if not tr.check(0, root, u, target[turn]):
				turn = 0
				validatedkey.clear()
			else:
				showinfo(title="W rizz", message="Correct!")
				validatedkey.append(u)
				inp.delete(0,"end")
				turn += 1
			if turn == len(target):
				showinfo(title="dayummm", message=decrypt(validatedkey, FLAG))
		except SyntaxError:
			showerror(title="Error", message="Invalid input!")
		text.set(999 - turn)

	num = [i for i in range(1, 1001)]
	init = num.copy()
	random.shuffle(init)
	random.shuffle(init)
	random.shuffle(init)
	FLAG = [90, 19, 95, 37, 58, 144, 131, 222, 253, 162, 107, 96, 98, 128, 30, 113, 192, 236, 135, 239, 80, 106, 215, 100, 110, 197, 64, 210, 9, 74, 180, 240, 70, 87, 127, 17, 53, 115, 106, 178, 9, 250, 235, 99, 89, 195, 146, 89, 217, 74, 10, 133, 14, 82, 27, 70, 77, 111, 232, 144, 201, 98, 178, 88, 201, 190, 34, 135, 62, 24, 236, 102, 197, 158, 19, 0, 228, 252, 32, 128, 109, 157, 209, 104, 65, 104, 70, 49, 255, 14, 79, 133, 95, 195, 233, 45, 122, 200, 56, 207, 207, 225, 98, 23, 130, 91, 77, 37, 31, 242, 114, 187, 142, 40, 217, 238, 94, 83, 44, 191, 121, 249, 30, 241, 94, 121, 55, 243, 197, 136, 254, 1, 65, 103, 71, 140, 94, 71, 91, 17, 254, 150, 102, 138, 195, 144, 134, 196, 35, 233, 36, 158, 72, 5, 145, 132, 116, 214, 129, 14, 199, 129, 137, 113, 12, 41, 25, 187, 211, 144, 58, 244, 230, 132, 226, 4, 10, 62, 251, 107, 222, 243, 39, 137, 77, 210, 195, 23, 223, 215, 106, 219, 143, 44, 8, 122, 137, 138, 91, 245, 75, 73, 93, 91, 197, 27, 82, 14, 106, 198, 245, 48, 185, 245, 147, 74, 98, 150, 70, 132, 186, 32, 10, 237, 21, 185, 32, 142, 64, 107, 126, 89, 128, 237, 24, 44, 6, 6, 40, 171, 20, 228, 138, 5, 217, 231, 18, 248, 171, 182, 51, 255, 234, 255, 43, 181, 214, 78, 184, 158, 232, 248, 128, 165, 40, 104, 14, 87, 111, 250, 71, 93, 41, 57, 21, 120, 32, 107, 242, 97, 20, 196, 25, 243, 77, 125, 77, 92, 120, 66, 36, 61, 34, 47, 37, 74, 71, 198, 173, 108, 117, 189, 48, 1, 204, 10, 244, 162, 221, 93, 170, 245, 23, 157, 143, 93, 35, 162, 32, 9, 116, 165, 242, 19, 197, 86, 29, 16, 234, 84, 88, 77, 36, 157, 43, 174, 122, 216, 102, 0, 206, 166, 183, 192, 215, 190, 123, 11, 128, 113, 223, 55, 10, 116, 92, 64, 184, 192, 76, 68, 54, 51, 45, 73, 189, 227, 67, 124, 80, 63, 173, 187, 214, 134, 110, 47, 96, 210, 88, 158, 194, 50, 9, 188, 233, 248, 56, 2, 9, 4, 86, 216, 129, 123, 221, 89, 12, 230, 129, 187, 179, 205, 100, 56, 247, 229, 135, 162, 162, 151, 56, 248, 42, 44, 195, 144, 77, 230, 156, 184, 126, 141, 20, 129, 251, 117, 186, 125, 151, 113, 252, 15, 77, 228, 15, 75, 55, 144, 240, 118, 214, 79, 49, 128, 234, 105, 226, 138, 119, 72, 47, 134, 2, 222, 178, 107, 8, 152, 132, 166, 128, 133, 16, 215, 90, 154, 142, 1, 95, 161, 128, 62, 172, 94, 133, 253, 255, 242, 231, 99, 103, 203, 95, 14, 40, 217, 1, 34, 128, 40, 145, 186, 104, 124, 225, 141, 56, 192, 228, 180, 199, 44, 73, 254, 75, 38, 139, 8, 120, 7, 140, 141, 219, 21, 7, 226, 90, 144, 144, 240, 40, 247, 10, 88, 129, 106, 24, 100, 217, 18, 66, 125, 236, 22, 102, 197, 234, 175, 13, 170, 70, 57, 74, 200, 126, 103, 156, 127, 248, 30, 97, 181, 179, 85, 154, 80, 106, 154, 238, 194, 104, 235, 205, 161, 141, 231, 6, 144, 202, 189, 228, 215, 167, 197, 7, 109, 161, 31, 230, 238, 132, 180, 59, 63, 18, 210, 124, 20, 185, 232, 54, 96, 109, 75, 64, 143, 239, 85, 29, 90, 192, 112, 243, 105, 134, 243, 254, 149, 46, 43, 190, 244, 166, 23, 4, 214, 224, 26, 47, 232, 25, 173, 118, 62, 164, 172, 65, 36, 25, 175, 103, 83, 181, 127, 105, 243, 168, 89, 215, 13, 150, 78, 216, 147, 125, 43, 223, 193, 31, 104, 195, 107, 222, 106, 119, 168, 39, 178, 47, 231, 212, 29, 50, 233, 124, 216, 116, 248, 114, 215, 109, 3, 163, 48, 74, 161, 80, 170, 60, 10, 206, 213, 90, 249, 79, 36, 165, 138, 38, 191, 58, 56, 128, 144, 203, 226, 168, 138, 79, 104, 171, 70, 40, 99, 166, 218, 163, 201, 124, 245, 85, 68, 28, 86, 217, 225, 199, 171, 240, 214, 254, 98, 175, 252, 30, 122, 220, 33, 52, 135, 129, 115, 0, 214, 124, 236, 241, 41, 68, 179, 102, 77, 64, 35, 232, 180, 37, 194, 226, 236, 42, 7, 209, 183, 107, 122, 223, 100, 253, 207, 63, 242, 27, 230, 181, 69, 102, 60, 77, 175, 192, 196, 171, 80, 61, 0, 153, 82, 114, 213, 106, 179, 38, 225, 213, 5, 106, 88, 195, 241, 241, 13, 32, 192, 231, 107, 38, 19, 1, 62, 133, 124, 61, 155, 16, 217, 246, 230, 117, 68, 207, 172, 21, 64, 254, 82, 170, 25, 41, 249, 167, 160, 74, 188, 245, 26, 158, 40, 33, 95, 210, 25, 105, 165, 155, 88, 144, 252, 74, 184, 182, 44, 70, 94, 231, 51, 153, 160, 132, 144, 110, 27, 66, 174, 34, 54, 133, 16, 188, 239, 197, 250, 84, 189, 241, 181, 169, 244, 14, 250, 83, 245, 135, 25, 174, 188, 166, 142, 145, 141, 253, 166, 234, 238, 222, 49, 10, 56, 42, 115, 80, 12, 133, 157, 133, 203, 91, 129, 159, 173, 121, 17, 124, 241, 158, 79, 128, 73, 156, 209, 230, 77, 94, 116, 174, 167, 228, 50, 245, 111, 139, 30, 120, 191, 112, 217, 169, 109, 246, 12, 207, 116, 250, 32, 230, 223, 50, 25, 52, 160, 234, 99, 153, 141, 30, 127, 170, 19, 101, 138, 132, 65, 128, 45, 78, 189, 139, 85, 50, 248, 190, 119, 94, 45, 250, 221, 248, 20, 151, 246, 6, 112, 242, 3, 231, 200, 50, 196, 118, 86, 255, 116, 112, 115, 46, 17, 19, 213, 83, 138, 237, 193, 99, 34, 225, 183, 194, 164, 74, 96, 186, 110, 152, 82, 208, 130, 34, 235, 129, 12, 52, 237, 38, 244, 208, 89, 234, 86, 215, 209, 188, 67, 12, 56, 197, 208, 232, 7]
	validatedkey = []
	
	tr, troot = initialization()
	target = init.copy()
	target.remove(troot.data)
	random.shuffle(target)
	
# <==============  Button Design Code ==============>

	def on_focus_in(entry):
		if entry.cget('state') == 'disabled':
			entry.configure(state='normal')
			entry.delete(0, 'end')


	def on_focus_out(entry, placeholder):
		if entry.get() == "":
			entry.insert(0, placeholder)
			entry.configure(state='disabled')

	root = tk.Tk()
	root.geometry("300x150")
	root.title("Locky Lock")
	root.maxsize(300,150)
	root.minsize(300,150)

	inp = Entry(root,width=33,borderwidth=3,relief=RIDGE)
	inp.grid(pady=5,row=0,sticky="w",padx=15)
	inp.insert(0, "Input Secret Key")
	inp.configure(state='disabled')
	x_focus_in = inp.bind('<Button-1>', lambda x: on_focus_in(inp))

	submitbutton = Button(root,text="submit",width=30,command=lambda :submit(troot),bg="red",fg="white",borderwidth=3,relief=RIDGE)
	submitbutton.grid(row=1,sticky="w",padx=15,pady=5)

	text = StringVar()
	text.set(999 - turn)
	textbox = Label(root, textvariable=text, justify='center', width=13)
	textbox.config(font=("Courier", 30))
	textbox.grid(pady=5,row=2,sticky="w")


	root.mainloop()

# <============ end code ==============>

if __name__ == "__main__":
	main()