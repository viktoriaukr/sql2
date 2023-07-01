-- write your queries here

--Join the two tables so that every column and record appears, regardless of if there is not an owner_id.
SELECT * FROM owners
     FULL JOIN vehicles
     ON vehicles.owner_id = owners.id;



--Count the number of cars for each owner. Display the owners first_name, last_name and count of vehicles. The first_name should be ordered in ascending order. 

SELECT first_name, last_name, COUNT(*) AS count
      FROM owners
      JOIN vehicles
      ON vehicles.owner_id = owners.id
      GROUP BY first_name, last_name
      ORDER BY count ASC;





--Count the number of cars for each owner and display the average price for each of the cars as integers. Display the owners first_name, last_name, average price and count of vehicles. The first_name should be ordered in descending order. Only display results with more than one vehicle and an average price greater than 10000. 

SELECT first_name, last_name, AVG(price) AS average_price, COUNT(*) AS count
      FROM owners
      JOIN vehicles
      ON vehicles.owner_id = owners.id
      GROUP BY first_name, last_name
      HAVING AVG(price) > 10000 AND COUNT(*) > 1
      ORDER BY first_name DESC;
