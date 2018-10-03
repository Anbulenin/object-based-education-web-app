<!DOCTYPE html>
<html>
<head></head>
<body>

<form action="array_save.php" method="post" id="form">

<div id="orderwrap">
<div id="orderheather">
<select id="platform" name="platform">
<option selected="selected" disabled="disabled">Select the platform</option>
<option value="Intel">Intel</option>
<option value="AMD">AMD</option>
</select>
</div>

<div id="orderbody">

<p>name<select id="name" name="name[]">
<option selected="selected" disabled="disabled">Choose hard drive</option>
<?php// query() ?>
<option value="HARD-01">HARD-01</option>
<option value="HARD-02">HARD-02</option>
</select>
quantity1: <input type="text" id="quantity" name="quantity[]"/> price1: <input id="name-data" type="text" name="price[]"/></p>

<p>name<select id="name" name="name[]">
<option selected="selected" disabled="disabled">Choose memory</option>
<?php //query2() ?>
<option value="MEM-01">MEMORY-01</option>
<option value="MEM-02">MEMORY-02</option>
</select>
quantity: <input type="text" id="quantity" name="quantity[]"/> price1: <input id="name-data" type="text" name="price[]"/></p>

<p>name<select id="name" name="name[]">
<option selected="selected" disabled="disabled">Choose monitor</option>
<?php //query3() ?>
<option value="MON-01">MONITOR-01</option>
<option value="MON-02">MONITOR-02</option>
</select>
quantity: <input type="text" id="quantity" name="quantity[]"/> price1: <input id="name-data" type="text" name="price[]"/></p>

<p>name<select id="name" name="name[]">
<option selected="selected" disabled="disabled">Choose mouse</option>
<?php //query4() ?>
<option value="MOU-01">MOUSE-01</option>
<option value="MOU-02">MOUSE-02</option>
</select>
quantity: <input type="text" id="quantity" name="quantity[]"/> price1: <input id="name-data" type="text" name="price[]"/></p>

<input id="submit" type="submit" value="Submit Order" name="submission"/>
</div>
</div>
</form>