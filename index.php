<?php
include_once("templates/header.php");
?>

<!-- banner -->
<div class="flex flex-col items-center justify-center h-[500px] bg-[url('assets/img/pizza.jpg')] bg-center bg-cover">
    <div class="flex flex-col justify-center space-y-26 bg-black text-center text-white p-6 w-full md:w-1/2 text-4xl">
        <div class="flex flex-col space-y-2 font-bold">
            <p>FAÇA SEU</p>
            <p>PEDIDO</p>
        </div>
    </div>
</div>
<section id="Pizza">
    <div class="flex flex-col items-center justify-center font-bold p-6">
        <h1 class="text-4xl">Monte a pizza como desejar:</h1>
    </div>

    <form action="">
        <div class="form-group flex flex-col m-6">
            <label for="borda">Borda:</label>
            <select name="borda" id="borda">
                <option value="1">1</option>
                <option value="1">2</option>
                <option value="1">3</option>
            </select>
        </div>
        <div class="form-group flex flex-col m-6">
            <label for="borda">Massa:</label>
            <select name="borda" id="borda">
                <option value="1">1</option>
                <option value="1">2</option>
                <option value="1">3</option>
            </select>
        </div>
        <div class="form-group flex flex-col m-6">
            <label for="borda">Sabores: (Máximo 3)</label>
            <select name="borda" id="borda">
                <option value="1">1</option>
                <option value="1">2</option>
                <option value="1">3</option>
            </select>
        </div>
        <button class="m-6 bg-black text-white py-4 px-6" type="submit">Fazer Pedido!</button>
    </form>
</section>



<?php
include_once("templates/footer.php");
?>