
----------------------------
--12------------------------- 
CREATE TABLE PARTO (
                    n_crotal          varchar(32),
                    fecha_prev_parto  date,
                    fecha_min_parto   date,
                    fecha_max_parto   date,
          PRIMARY KEY (n_crotal)
);
------13-------------------- 

DELIMITER //

CREATE TRIGGER insert_parto AFTER INSERT ON monta
  FOR EACH ROW BEGIN
    REPLACE INTO PARTO SET n_crotal = NEW.VACA_n_crotal,
                          fecha_prev_parto = DATE_ADD(NEW.Fecha,INTERVAL 280 DAY),
                          fecha_min_parto =  DATE_ADD(NEW.Fecha,INTERVAL 290 DAY),
                          fecha_max_parto = NEW.Fecha;
  END //
CREATE TRIGGER insert_inseminacion AFTER INSERT ON insemina 
  FOR EACH ROW BEGIN
    REPLACE INTO PARTO SET n_crotal = NEW.n_crotal,
                          fecha_prev_parto = DATE_ADD(NEW.Fecha,INTERVAL 280 DAY),
                          fecha_min_parto =  DATE_ADD(NEW.Fecha,INTERVAL 276 DAY),
                          fecha_max_parto =  DATE_ADD(NEW.Fecha, INTERVAL 290 DAY);
END //



DELIMITER ;



