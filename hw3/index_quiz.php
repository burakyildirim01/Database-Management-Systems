<!--
    COMP306-

-->
<html>
<head></head>
<body>

    <!--Insert operation -->
    <form action='result_quiz.php' method='post'>
        <label>CID:         </label><input type='number' name='cid_insert' /><br/>
        <label>Name:        </label><input type='text' name='name_insert' /><br/>
        <label>CountryCode: </label><input type='text' name='country_code_insert' /><br/>
        <label>District:    </label><input type='text' name='district_insert' /><br/>
        <label>Population:  </label><input type='text' name='population_insert' /><br/>
        <input name="insert", value='Insert' type='submit'/></p>
    </form>
    <hr>

    <!--Remove operation -->
    <form action='result_quiz.php' method='post'>
        <label>CID:</label><input type='number' name='cid_remove' /><input name="remove", value='Remove' type='submit'/></p>
    </form>
    <hr>

    <!-- Manipulation operation -->
    <form action='result_quiz.php' method='post'>
        <label>Name: </label><input type='text' name='name_insert' /><br/>
        <label>CID:</label><input type='number' name='cid_manipulate' /><input name="manipulate", value='Manipulate' type='submit'/></p>
    </form>
    <hr>

    <!-- No GUI necessary for Question 1 -->

    <!-- Please write Question 2 GUI Here -->
    <form action='result_quiz.php' method='post'>
        <label>First Country: </label><input type='text' name='first_country' /><br/>
        <label>Second Country:</label><input type='text' name='second_country' />
        <input name="diff_lang", value='Get Differences' type='submit'/></p>
    </form>
    <hr>

    <!-- Please write Question 3 GUI Here -->
    <form action='result_quiz.php' method='post'>
        <label>First Country: </label><input type='text' name='first_country' /><br/>
        <label>Second Country:</label><input type='text' name='second_country' />
        <input name="diff_lang_join", value='Get Differences' type='submit'/></p>
    </form>
    <hr>

    <!-- Please write Question 4 GUI Here -->
    <form action='result_quiz.php' method='post'>
        <label>Choose an operation type: </label>
        <select name="operations" id="operations">
        <option value="MIN">MIN</option>
        <option value="AVG">AVG</option>
        </select><br/>
        <label>Country Name:</label><input type='text' name='country_life' /><br>
        <input name="get_life", value='Get Life Expectancy' type='submit'/></p>
    </form>
    <hr>

    <!-- No GUI necessary for Question 5 -->
    <form action='result_quiz.php' method='post'>
        <input name="get_min_max_continent", value='Find Min Max Continent' type='submit'/></p>
    </form>
    <hr>

    <form action='result_quiz.php' method='post'>
        <label>Percentage: </label><input type='text' name='ct_percentage' /><br/>
        <label>Language:</label><input type='text' name='ct_language' />
        <input name="get_country_language", value='Find Country Language' type='submit'/></p>
    </form>
    <hr>

    <form action='result_quiz.php' method='post'>
        <label>Amount: </label><input type='text' name='ct_amount' /><br/>
        <input name="get_country_count", value='Find Country Count' type='submit'/></p>
    </form>
    <hr>






</body>
</html>
