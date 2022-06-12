
<html>
<head></head>
<body>

    <form action='result.php' method='post'>
        <label>Table ID:         </label><input type='number' name='tid_insert' /><br/>
        <label>Customer ID:        </label><input type='text' name='cid_insert' /><br/>
        <label>Receipt ID: </label><input type='text' name='rid_insert' /><br/>
        <label>Product ID:    </label><input type='text' name='pid_insert' /><br/>
        <input name="insert", value='Insert Table' type='submit'/></p>
    </form>
    <hr>

    <form action='result.php' method='post'>
        <label>Receipt ID:         </label><input type='number' name='id' /><br/>
        <label>Subtotal:        </label><input type='text' name='sub' /><br/>
        <label>Tax: </label><input type='text' name='taxx' /><br/>
        <label>Total:    </label><input type='text' name='tot' /><br/>
        <label>Method:    </label><input type='text' name='method' /><br/>
        <input name="insert2", value='Insert Receipt' type='submit'/></p>
    </form>

    <hr>
    <form action='result.php' method='post'>
        <input name="avg", value='Average Alcohol Spending Per Customer' type='submit'/></p>
    </form>
    <hr>


    <form action='result.php' method='post'>
        <input name="most", value='Most Expensive Food & No. of Orders' type='submit'/></p>
    </form>
    <hr>
    
    <form action='result.php' method='post'>
        <input name="tax", value='Total Taxed Amount Per Method' type='submit'/></p>
    </form>
    <hr>

    <form action='result.php' method='post'>
        <input name="high", value='List High Spenders' type='submit'/></p>
    </form>
    <hr>

    <form action='result.php' method='post'>
        <input name="money", value='Show Possible Price Increases' type='submit'/></p>
    </form>
    <hr>
</body>
</html>
