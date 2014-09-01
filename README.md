Etude1 - Automobile Price Calculator
====================================

An service provides total price calculation for automobile purchase.

Calculation
-----------

### Total price

Total price = MSRP + Purchase Tax + Vehicel Tax + Compulsory Liability Insurance + Commercial Insurance

* **MSRP** (Manufacturer's suggested retail price)
* **Purchase Tax** (Vehicle purchase tax)

        Purchase Tax = MSRP / (1 + 17%) * 10%

* **Vehicle Tax** (Vehicle and vessel tax)

        x <=1.0L     ￥300
        1.0L < x <= 1.6L    ￥420
        1.6L < x <= 2.0L    ￥480
        2.0L < x <= 2.5L    ￥900
        2.5L < x <= 3.0L    ￥1920
        3.0L < x <= 4.0L    ￥3480
        4.0L < x    ￥5280
        
* **Compulsory Liability Insurance**

        Number of seats < 6    ￥950
        Number of seats >= 6   ￥1100 
        
* **Commercial Insurance** (All items are optional)

    - Third Party Liability Insurance
            
            Up to 50,000    ￥516
            Up to 100,0000  ￥746
            Up to 200,0000  ￥924
            Up to 500,0000  ￥1252
            Up to 1,000,000 ￥1630
            
    - Vehicle Damage Insurance
    
            ￥458 + MSRP * 1.088%
    
    - Glass Insurance
    
            MSRP * 0.2%
            
    - Passanger Insurance
    
            ￥50 * Number of seats
