import pyodbc

con_str = r"DRIVER={SQL SERVER};SERVER=Rustambek\SQLEXPRESS; DATABASE=master; Trusted_Connection=yes;"
con = pyodbc.connect(con_str)
cursor = con.cursor()

cursor.execute(

    """
    select * from for_image;
"""
)

row = cursor.fetchone()
img_id, name, image_data = row

with open(f"{name}.png", "wb") as file:
    file.write(image_data)


