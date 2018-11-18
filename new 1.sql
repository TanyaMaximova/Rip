-- добавление данных и строк в таблицы
.headers on
.mode column

-- создадим таблицу
CREATE TABLE Client(
	ID_Client INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	FIO_Clienta NVARCHAR(50) NOT NULL,
	ID_Kind_Of_Activity INTEGER NOT NULL);
	
CREATE TABLE Disposal_Receipt(
	ID_Disposal_Receipt INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	ID_Type_Of_Disposal INTEGER NOT NULL,
	ID_Receipt INTEGER NOT NULL);
	
CREATE TABLE Export_Avto(
	ID_Export_Avto INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Marka nchar(10) NOT NULL,
	V_prizepa INTEGER NOT NULL,
	FIO_driver nvarchar(50) NOT NULL);
	
CREATE TABLE Kind_Of_Activity(
	ID_Kind_Of_Activity INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name nvarchar(50) NOT NULL,
	Kind_Of_Activity nvarchar(50) NOT NULL);
	
CREATE TABLE Location_Of_Disposal(
	ID_Location_Of_Disposal INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Region nvarchar(50) NOT NULL,
	City nvarchar(50) NOT NULL,
	Address nvarchar(50) NOT NULL);

CREATE TABLE Location_Of_Waste(
	ID_Location_Of_Waste INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Region nvarchar(50) NOT NULL,
	City nvarchar(50) NOT NULL,
	Address nvarchar(50) NOT NULL);

CREATE TABLE Mechanism_Transportation(
	ID_Mechanism_Transportation INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name nvarchar(50) NOT NULL,
	Description nvarchar(MAX) NOT NULL);

CREATE TABLE Position(
	ID_Position INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name nvarchar(50) NOT NULL);
	
CREATE TABLE Receipt_For_Payment(
	ID_Receipt INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	ID_Type_Of_Disposal nvarchar(50) NOT NULL,
	ID_Request INTEGER NOT NULL,
	Payment_Amount FLOAT NOT NULL);
	
CREATE TABLE Request(
	ID_Request INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	ID_Type_Of_Waste INTEGER NOT NULL,
	Quantity INTEGER NOT NULL,
	ID_Location_Of_Waste INTEGER NOT NULL,
	ID_Export_Avto INTEGER NOT NULL,
	ID_Sotrudnik INTEGER NOT NULL,
	ID_Client INTEGER NOT NULL,
	_Date data NOT NULL,
	ID_Waste_Landfill INTEGER NOT NULL,
	ID_Schedule INTEGER NOT NULL);
	
CREATE TABLE Schedule(
	ID_Schedule INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name nvarchar(50) NOT NULL,
	Periodicity INTEGER NOT NULL);
	
CREATE TABLE Sotrudnik(
	ID_Sotrudnik INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	FIO_Sotrudnik nvarchar(50) NOT NULL,
	ID_Position INTEGER NOT NULL);
	
CREATE TABLE Transportation(
	ID_Transportation INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	ID_Mechanism_Transportation INTEGER NOT NULL,
	ID_Waste_Landfill INTEGER NOT NULL,
	ID_Sotrudnik INTEGER NOT NULL,
	ID_Location_Of_Disposal INTEGER NOT NULL);
	
CREATE TABLE Type_Of_Disposal(
	ID_Type_Of_Disposal INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Type_Of_Disposal nvarchar(50) NOT NULL,
	Description nvarchar(50) NOT NULL);
	
CREATE TABLE Waste_landfill(
	ID_Waste_landfill INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Location nvarchar(50) NOT NULL,
	Capacity INTEGER NOT NULL);
	
CREATE TABLE Waste_Type(
	ID_Waste_Type INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name nvarchar(50) NOT NULL,
	Description nvarchar(50) NOT NULL);
	
	
-- добавление строк
	INSERT INTO Client (ID_Client, FIO_Clienta, ID_Kind_Of_Activity)
VALUES (1, 'Иванов Иван Иванович', 1); 
	INSERT INTO Client (ID_Client, FIO_Clienta, ID_Kind_Of_Activity)
VALUES (2, 'Иванова Екатерина Анатольевна', 2); 

	INSERT INTO Disposal_Receipt (ID_Disposal_Receipt, ID_Type_Of_Disposal, ID_Receipt)
VALUES (1, 1, 1); 
	INSERT INTO Disposal_Receipt (ID_Disposal_Receipt, ID_Type_Of_Disposal, ID_Receipt)
VALUES (2, 1, 2);

	INSERT INTO Export_Avto (ID_Export_Avto, Marka, V_prizepa, FIO_driver)
VALUES (1, 'BMW', 300, 'Ванчугов Александр Иванович');
	INSERT INTO Export_Avto (ID_Export_Avto, Marka, V_prizepa, FIO_driver)
VALUES (2, 'BMW', 500, 'Золотарев Игорь Михайлович');

	INSERT INTO Kind_Of_Activity (ID_Kind_Of_Activity, Name, Kind_Of_Activity)
VALUES (1, 'Менеджер', 'Управляющая компания');
	INSERT INTO Kind_Of_Activity (ID_Kind_Of_Activity, Name, Kind_Of_Activity)
VALUES (2, 'Частное лицо', 'Частное лицо');

	INSERT INTO Location_Of_Disposal (ID_Location_Of_Disposal, Region, City, Address)
VALUES (1, 'Тюменская область', 'Тюмень', 'ул.Сараева 5');
	INSERT INTO Location_Of_Disposal (ID_Location_Of_Disposal, Region, City, Address)
VALUES (2, 'Тюменская область', 'Тюмень', 'ул.Парминова 78');

	INSERT INTO Location_Of_Waste (ID_Location_Of_Waste, Region, City, Address)
VALUES (1, 'Тюменская область', 'Тюмень', 'ул. Вороновка 37');
	INSERT INTO Location_Of_Waste (ID_Location_Of_Waste, Region, City, Address)
VALUES (2, 'Тюменская область', 'Тюмень', 'ул. Павлова 7');

	INSERT INTO Mechanism_Transportation (ID_Mechanism_Transportation, Name, Description)
VALUES (1, 'Вакуумная транспортировка мусора', 'Вакуумную траспортировку используют в прогулочных зонах');
	INSERT INTO Mechanism_Transportation (ID_Mechanism_Transportation, Name, Description)
VALUES (2, 'Машинная транспортировка', 'Погрузка муссора в контейнеры');

	INSERT INTO Position (ID_Position, Name)
VALUES (1, 'Управляющий');
	INSERT INTO Position (ID_Position, Name)
VALUES (2, 'Менеджер');

	INSERT INTO Receipt_For_Payment (ID_Receipt, ID_Type_Of_Disposal, ID_Request, Payment_Amount)
VALUES (1, 1, 1, 2000,0000);
	INSERT INTO Receipt_For_Payment (ID_Receipt, ID_Type_Of_Disposal, ID_Request, Payment_Amount)
VALUES (2, 1, 2, 8000,0000);

	INSERT INTO Request (ID_Request, ID_Type_Of_Waste, Quantity, ID_Location_Of_Waste, ID_Export_Avto, ID_Sotrudnik, ID_Client, _Date, ID_Waste_Landfill, ID_Schedule)
VALUES (1, 1, 36, 1, 1, 1, 1, 1, 2018-06-12, 1, 1);
	INSERT INTO Request (ID_Request, ID_Type_Of_Waste, Quantity, ID_Location_Of_Waste, ID_Export_Avto, ID_Sotrudnik, ID_Client, _Date, ID_Waste_Landfill, ID_Schedule)
VALUES (2, 1, 17, 2, 2, 1, 1, 1, 2018-10-01, 1, 1);

	INSERT INTO Schedule (ID_Schedule, Name, Periodicity)
VALUES (1, 'Ежемесячно', 1);
	INSERT INTO Schedule (ID_Schedule, Name, Periodicity)
VALUES (2, 'Еженедельно', 2);

	INSERT INTO Sotrudnik (ID_Sotrudnik, FIO_Sotrudnik, ID_Position)
VALUES (1, 'Фролов Иван Александрович', 1);
	INSERT INTO Sotrudnik (ID_Sotrudnik, FIO_Sotrudnik, ID_Position)
VALUES (2, 'Малинова Юлия Викторовна', 1);

	INSERT INTO Transportation (ID_Transportation, ID_Mechanism_Transportation, ID_Waste_Landfill, ID_Sotrudnik, ID_Location_Of_Disposal)
VALUES (1, 1, 1, 1, 1);
	INSERT INTO Transportation (ID_Transportation, ID_Mechanism_Transportation, ID_Waste_Landfill, ID_Sotrudnik, ID_Location_Of_Disposal)
VALUES (2, 1, 2, 1, 2);

	INSERT INTO Type_Of_Disposal (ID_Type_Of_Disposal, Type_Of_Disposal, Description)
VALUES (1, 'Сжигание', 'Сжигание отходов');
	INSERT INTO Type_Of_Disposal (ID_Type_Of_Disposal, Type_Of_Disposal, Description)
VALUES (2, 'Компостирование', 'Естественные методы разложения');

	INSERT INTO Waste_landfill (ID_Waste_landfill, Location, Capacity)
VALUES (1, 'Полигон №4', '325');
	INSERT INTO Waste_landfill (ID_Waste_landfill, Location, Capacity)
VALUES (2, 'Полигон №6', '132');

	INSERT INTO Waste_Type (ID_Waste_Type, Name, Description)
VALUES (1, 'Промышленные отходы', 'Пластмасса');
	INSERT INTO Waste_Type (ID_Waste_Type, Name, Description)
VALUES (2, 'Опасные', 'Металлы');