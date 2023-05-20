import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import os
import japanize_matplotlib

target_path = os.path.join(os.path.dirname(__file__), 'report2_1_1.csv')
print(target_path)
df=pd.read_csv(target_path, names=('dx', 'error'))
print(df)

x=df.dx
y=df.error


title=os.path.splitext(os.path.basename(__file__))[0]
plt.title(title)

plt.plot(x,y,"o")

plt.xscale('log')
plt.yscale('log')

plt.xlabel("dx")
plt.ylabel("error")
plt.savefig(title+'result.jpg')
plt.show()

