INSERT INTO Suppliers (ID, Name, Address, City, PhoneNumber, Email, Representative)
VALUES
(1, 'Róża i Wiatr', 'Kwiatowa 12', 'Rzeszów', 701891234, 'biuro@zaułekkwiatów.pl', 'Anna Kowalska'),
(2, 'Świat Kwiatów', 'Leśna 24', 'Przemyśl', 516292345, 'biuro@światkwiatów.pl', 'Piotr Wiśniewski'),
(3, 'Zaułek Kwiatów', 'Słoneczna 5', 'Tarnobrzeg', 564793123, 'biuro@różaiwiatr.pl', 'Krzysztof Kamiński'),
(4, 'Kwiatex', 'Pięciomorgowa 7', 'Krosno', 578456789, 'biuro@kwiatex.pl', 'Joanna Wójcik'),
(5, 'HurtKwiat', 'Wiosenna 13', 'Stalowa Wola', 530987654, 'biuro@hurtkwiat.pl', 'Jan Kowalski'),
(6, 'KwiatMar', 'Brzozowa 2', 'Sanok', 548723456, 'biuro@kwiatmar.pl', 'Maria Zielińska');

INSERT INTO Flowers (ID, Name, Quantity, Price, SupplierID)
VALUES
(1, 'Róża czerwona', 162, 12.00, 1),
(2, 'Róża biała', 110, 12.00, 1),
(3, 'Róża różowa', 131, 12.00, 1),
(4, 'Róża żółta', 102, 12.00, 1),
(5, 'Tulipan czerwony', 51, 8.00, 6),
(6, 'Tulipan biały', 42, 8.00, 6),
(7, 'Tulipan żółty', 27, 8.00, 6),
(8, 'Tulipan fioletowy', 44, 8.00, 6),
(9, 'Goździk', 81, 7.00, 4),
(10, 'Chryzantema żółta', 42, 5.00, 3),
(11, 'Chryzantema biała', 39, 5.00, 3),
(12, 'Chryzantema czerwona', 20, 5.00, 3),
(13, 'Chryzantema fioletowa', 51, 5.00, 3),
(14, 'Hiacynt', 100, 10.00, 5),
(15, 'Słonecznik', 10, 8.00, 2);

INSERT INTO Customers (ID, Name, LastName, Address, City, PhoneNumber, Email, NIP)
VALUES
(1, 'Marek', 'Wojciechowski', 'Złota 12/24', 'Rzeszów', 601234567, 'marekwojciechowski1234@gmail.com', 3276548901),
(2, 'Anna', 'Sikorska', 'Kwiatowa 24', 'Rzeszów', 612345678, 'annasikorska5678@gmail.com', null),
(3, 'Piotr', 'Kaczmarek', 'Błękitna 36', 'Rzeszów', 623456789, 'piotrkaczmarek9101@gmail.com', null),
(4, 'Katarzyna', 'Jankowska', 'Wiosenna 48/152', 'Kielnarowa', 634567890, 'katarzynajankowska1122@gmail.com', null),
(5, 'Michał', 'Pawlak', 'Leśna 50/12', 'Krasne', 645678901, 'michalpawlak3344@gmail.com', 4567890123),
(6, 'Joanna', 'Chmielewska', 'Lipowa 62/5', 'Tyczyn', 656789012, 'joannachmielewska5566@gmail.com', null);

INSERT INTO Employees (ID, Name, LastName, PESEL, DateOfBirth, DateOfEmployment, Address, City, PhoneNumber, Email, Salary)
VALUES
(1, 'Paweł', 'Zielinski', '85061512345', '1985-06-15', '2022-03-01', 'Ulica Jaskółcza 12/5', 'Rzeszów', 601234567, 'pawelzielinski1234@gmail.com', 4500.00),
(2, 'Marta', 'Kaczmarek', '90112298765', '1990-11-22', '2020-07-10', 'Aleja Lipowa 24/140', 'Rzeszów', 612345678, 'martakaczmarek5678@gmail.com', 4200.00),
(3, 'Wojciech', 'Nycz', '02061412345', '2002-06-14', '2023-11-26', 'Rejtana 10/20', 'Rzeszów', 623456789, 'wojciechnycz1412@gmail.com', 5000.00),
(4, 'Katarzyna', 'Nowak', '88083034567', '1988-08-30', '2021-05-15', 'Łaskotna 62', 'Tyczyn', 634567890, 'katarzynamnowak1122@gmail.com', 4700.00),
(5, 'Michał', 'Pawlak', '93011845678', '1993-01-18', '2023-01-10', 'Polna 50/12', 'Krasne', 645678901, 'michalpawlak3344@gmail.com', 4900.00),
(6, 'Katarzyna', 'Jankowska', '95092556789', '1995-09-25', '2022-09-01', 'Wiosenna 48/152', 'Kielnarowa', 656789012, 'katarzynajankowska5566@gmail.com', 4600.00);

INSERT INTO Orders (ID, CustomerID, EmployeeID, OrderDate, DeliveryAddress, Status)
VALUES
(1, 5, 3, '2024-11-01', 'Ulica Dębowa 15, Rzeszów', 'Completed'),
(2, 6, 1, '2024-11-05', 'Rejtana 10, Rzeszów', 'Completed'),
(3, 2, 4, '2024-11-10', 'Jasnogórska 22, Krosno', 'Completed'),
(4, 4, 6, '2024-11-12', 'Zielona 7, Kielnarowa', 'Cancelled'),
(5, 3, 5, '2024-11-15', 'Wiosenna 8, Stalowa Wola', 'Completed'),
(6, 1, 2, '2024-11-18', 'Polna 2, Sanok', 'Completed'),
(7, 2, 5, '2024-11-22', 'Morska 14, Krosno', 'Completed'),
(8, 6, 3, '2024-11-25', 'Złota 18, Tarnobrzeg', 'Cancelled'),
(9, 4, 1, '2024-11-27', 'Lwowska 25, Tyczyn', 'In progress'),
(10, 5, 2, '2024-11-27', 'Bławatna 11, Rzeszów', 'In progress');

INSERT INTO Deliveries (ID, EmployeeID, SupplierID, OrderDate, DeliveryDate, Status)
VALUES
(1, 3, 2, '2024-11-01', '2024-11-04', 'Completed'),
(2, 3, 4, '2024-11-05', '2024-11-07', 'Completed'),
(3, 4, 5, '2024-11-07', '2024-11-09', 'Completed'),
(4, 4, 6, '2024-11-10', '2024-11-14', 'Cancelled'),
(5, 3, 3, '2024-11-12', '2024-11-17', 'Completed'),
(6, 4, 2, '2024-11-15', '2024-11-18', 'Completed'),
(7, 3, 4, '2024-11-18', '2024-11-20', 'In progress'),
(8, 4, 6, '2024-11-20', '2024-11-25', 'In progress');

INSERT INTO FlowersOrders (FlowerID, OrderID, Quantity)
VALUES
(1, 1, 5),
(2, 1, 4),
(3, 2, 9),
(4, 2, 6),
(5, 3, 11),
(6, 3, 4),
(7, 4, 7),
(8, 4, 6),
(9, 5, 3),
(1, 5, 8),
(10, 6, 5),
(2, 6, 6),
(3, 7, 7),
(4, 7, 8),
(5, 8, 9),
(6, 8, 4);

INSERT INTO FlowersDeliveries (FlowerID, DeliveryID, Quantity)
VALUES
(1, 1, 51),
(2, 1, 45),
(3, 2, 37),
(4, 2, 41),
(5, 3, 33),
(6, 3, 35),
(7, 4, 53),
(8, 4, 47),
(9, 5, 29),
(10, 5, 49),
(11, 6, 41),
(12, 6, 39),
(13, 7, 31),
(14, 7, 45),
(15, 8, 43),
(1, 8, 37);