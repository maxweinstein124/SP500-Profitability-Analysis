import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import yfinance as yf

firstDayOpen = (sp500['Open'].iloc[0]).item()
lastDayClose = sp500['Close'].iloc[-1].item()
overallProfitPercent = round(((lastDayClose-firstDayOpen)/firstDayOpen)*100,2)

sectorPerformance = pd.read_csv('Stock_Profitability_Data_Raw.csv')
sectorPerformance = sectorPerformance.head(11)
sectorPerformance['Growth_Relative_to_S&P'] = sectorPerformance['Average of Overall_Profit_2013_2018'] - (overallProfitPercent)

growth = sectorPerformance["Growth_Relative_to_S&P"]

# Green for positive, red for negative
colors = ["green" if value >= 0 else "red" for value in growth]

plt.figure(figsize=(10,6))
plt.bar(
    sectorPerformance["Sector"],
    growth,
    color=colors
)

plt.title("Sector Growth % Relative to S&P500 (2013-2018)")
plt.xlabel("Sector")
plt.ylabel("Growth % Relative to S&P500 (2013-2018)")
plt.xticks(rotation=45, ha="right")
plt.axhline(0, color="black", linewidth=1)  
plt.tight_layout()
plt.savefig("sector_growth.png", dpi=300, bbox_inches="tight")
plt.show()