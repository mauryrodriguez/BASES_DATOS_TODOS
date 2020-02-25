import pandas as pd

from sqlalchemy import create_engine

#read CSV file
columns_names = ['AREA','CIUDAD','ZONA','SECTOR','VIVIENDA','HOGAR','PERSONA','P02','P05A','P06','P09','P10','P11','P12B','P16','P18','P20C','P21','P23','P24','P25','P26','Partpropi','Partconvi','Partmedio','Partafijue','Partespen','Partdepor','Partdomin','Partdomex','Partcuida','PartiVolunComuni','Partdomto','Partrabajo','Partbusco','PartiAutoconsum','Partremuto','PartiTTT','ocupado','desocup','Etnia','id_upm','id_hogar','id_per','ciudades','provin','rn','dominio','fexp']

#with headers
df = pd.read_csv('C:/Users/PC/Desktop/convertJsonFile/Base_EUT_2012.csv', header=0, encoding='latin-1')
print(df)

#connect to DB and create new table with csv data

engine = create_engine('mysql://root:a-ha14091982@localhost/hobbies')
with engine.connect() as conn, conn.begin():
    df.to_sql('csv', conn, if_exists='append', index=False)
