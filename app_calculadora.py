from tkinter import *
from tkinter import ttk


#Cores que iremos utilizar no projeto
cor1 = '#3b3b3b' #black/preto
cor2 = '#feffff' #white/branco
cor3 = '#38576b' #blue
cor4 = '#ECEFF1' #Cinza
cor5 = '#FFAB40' #Orange/laranja

janela = Tk() #Tk faz parte da blibioteca tkinter, então ele sempre deve ser utilizado
janela.title('Calculadora') #Aqui estamos definindo o nome da janela
janela.geometry('245x310') #Aqui atráves do atributo 'geometry', estamos definindo o tamanho e largura
janela.config(bg = cor1) #Aqui atráves do atributo 'bg', estamos definindo a cor da janela


#Utulizando o frame, estamos repartindo a tela em duas parte
#1 Frame - é destinado ao visor da calculadora
frame_tela = Frame(janela, width=245, height=50, bg = cor3)
frame_tela.grid(row=0, column=0)

#2 Frame - Será destinado ao corpo da calculadora
frame_corpo = Frame(janela, width =245, height=270)
frame_corpo.grid(row=1, column=0)

#variavel global
todos_valores = ''

#Função onde colocamos os valores no visor da calculadora
#**Importante** todos as variaveis de armazenamento de valores devem ser declaradas dentro da função como sendo 'global'
def entra_valor(event):
    global todos_valores
    todos_valores = todos_valores + str(event)
    valor_texto.set(todos_valores)

#Função onde calculamos os valor recebidos como 'String', pelo atributo 'eval' que converte 'String em valores lógicos
#**Importante** todos as variaveis de armazenamento de valores devem ser declaradas dentro da função como sendo 'global'
def calcular():
    global todos_valores
    resultado = eval(todos_valores)
    valor_texto.set(str(resultado))

#Função onde limpamos o visor da calculadora setando vazio nela
def limpar_tela():
    global todos_valores
    todos_valores = ''
    valor_texto.set('')

#String criada no escopo global
valor_texto = StringVar()

#Aqui a gente define o visor e o que vai ser impresso dentro dele atráves do 'textvarible'
app_label = Label(frame_tela, textvariable=valor_texto, width=16, height=2, padx=7, relief=FLAT, anchor='e', justify=RIGHT, font='Ivy 18', bg=cor3, fg=cor2)
app_label.place(x=0,y=0)

#Criando botões para calculadora
#1ª Coluna de botões
b_1 = Button(frame_corpo, command = limpar_tela, text='C', width='11', height='2', bg=cor4, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_1.place(x=0, y=0)
b_2 = Button(frame_corpo, command= lambda: entra_valor('%'),text='%', width='5', height='2', bg=cor4, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_2.place(x=122, y=0)
b_3 = Button(frame_corpo, command= lambda: entra_valor('/'), text='/', width='5', height='2', bg=cor5, fg=cor2, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_3.place(x=184, y=0)

#2ª Coluna de botões
b_4 = Button(frame_corpo, command= lambda: entra_valor('7'), text='7', width='5', height='2', bg=cor4, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_4.place(x=0, y=52)
b_5 = Button(frame_corpo, command= lambda: entra_valor('8'), text='8', width='5', height='2', bg=cor4, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_5.place(x=60, y=52)
b_6 = Button(frame_corpo, command= lambda: entra_valor('9'), text='9', width='5', height='2', bg=cor4, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_6.place(x=122, y=52)
b_7 = Button(frame_corpo, command= lambda: entra_valor('*'), text='*', width='5', height='2', bg=cor5, fg=cor2, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_7.place(x=184, y=52)

#3ª Coluna de botões
b_8 = Button(frame_corpo, command=lambda: entra_valor('4'), text='4', width='5', height='2', bg=cor4, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_8.place(x=0, y=104)
b_9 = Button(frame_corpo, command=lambda: entra_valor('5'), text='5', width='5', height='2', bg=cor4, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_9.place(x=60, y=104)
b_10 = Button(frame_corpo, command=lambda: entra_valor('6'), text='6', width='5', height='2', bg=cor4, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_10.place(x=122, y=104)
b_11 = Button(frame_corpo, command=lambda: entra_valor('-'), text='-', width='5', height='2', bg=cor5, fg=cor2, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_11.place(x=184, y=104)

#4ª Coluna de botões
b_12 = Button(frame_corpo, command=lambda: entra_valor('1'), text='1', width='5', height='2', bg=cor4, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_12.place(x=0, y=156)
b_13 = Button(frame_corpo, command=lambda: entra_valor('2'), text='2', width='5', height='2', bg=cor4, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_13.place(x=60, y=156)
b_14 = Button(frame_corpo, command=lambda: entra_valor('3'), text='3', width='5', height='2', bg=cor4, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_14.place(x=122, y=156)
b_15 = Button(frame_corpo, command=lambda: entra_valor('+'), text='+', width='5', height='2', bg=cor5, fg=cor2, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_15.place(x=184, y=156)

#5ª Coluna de botões
b_16 = Button(frame_corpo, command=lambda: entra_valor('0'), text='0', width='11', height='2', bg=cor4, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_16.place(x=0, y=208)
b_17 = Button(frame_corpo, command=lambda: entra_valor('.'), text='.', width='5', height='2', bg=cor4, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_17.place(x=122, y=208)
b_18 = Button(frame_corpo, command=calcular, text='=', width='5', height='2', bg=cor5, fg=cor2, font='Ivy 13 bold', relief=RAISED, overrelief=RIDGE)
b_18.place(x=184, y=208)

janela.mainloop()

