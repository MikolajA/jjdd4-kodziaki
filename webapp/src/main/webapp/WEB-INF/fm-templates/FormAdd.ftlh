<div class="container">
    <form method="post" action="/add" enctype="multipart/form-data">

        <div class="form-row">
            <div class="form-group col-md-12">
                <label>Tytuł ogłoszenia</label>
                <input type="text" name="title" placeholder="Tytuł" class="form-control form-control-sm" required="" oninvalid="this.setCustomValidity('Pole nie może być puste')" oninput="setCustomValidity('')">
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Lokalizacja</label>
                <select name="localization" class="form-control form-control-sm" required="" oninvalid="this.setCustomValidity('Wybierz element z listy')" oninput="setCustomValidity('')">
                <option value="" disabled selected hidden>Wybierz</option>
                <#list locations as key,values>
                <optgroup label="${key}">
                    <#list values as value>
                        <option value="${key},${value.district}">${value.district}</option>
                    </#list>
                </optgroup>
            </#list>
                </select>
            </div>

            <div class="form-group col-md-6">
                <label>Typ wynajmu</label>
                <select name="placeType" class="form-control form-control-sm" required oninvalid="this.setCustomValidity('Wybierz element z listy')" oninput="setCustomValidity('')">
                    <option value="" disabled selected hidden>Wybierz</option>
                    <option value="APARTMENT">Mieszkanie</option>
                    <option value="ROOM">Pokój</option>
                    <option value="BED">Miejsce w pokoju</option>
                </select>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-4">
                <label>Powierzchnia</label>
                <div class="input-group input-group-sm mb-2">
                    <input type="number" name="area" class="form-control form-control-sm"
                           placeholder="Powierzchnia" min="0" step="0.01" required oninvalid="this.setCustomValidity('Pole nie może być puste (wartość większa od 0)')" oninput="setCustomValidity('')">
                    <div class="input-group-prepend input-group-sm">
                        <div class="input-group-text">m<sup>2</sup></div>
                    </div>
                </div>
            </div>


            <div class="form-group col-md-4">
                <label>Liczba pokoi</label>
                <select name="rooms" class="form-control form-control-sm" required oninvalid="this.setCustomValidity('Pole nie może być puste')" oninput="setCustomValidity('')">
                    <option value="" disabled selected hidden>Wybierz</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                </select>
            </div>


            <div class="form-group col-md-4">
                <label>Piętro</label>
                <select name="floor" class="form-control form-control-sm" required oninvalid="this.setCustomValidity('Pole nie może być puste')" oninput="setCustomValidity('')">
                    <option value="" disabled selected hidden>Wybierz</option>
                    <option value="0">Parter</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                    <option value="13">13</option>
                    <option value="14">14</option>
                    <option value="15">15</option>
                    <option value="16">16</option>
                    <option value="17">17</option>
                    <option value="18">18</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                </select>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-6 mb-3">
                <div class="custom-control custom-radio">
                    <input type="radio" id="customRadio1" name="hasElevator" value="True" class="custom-control-input"
                           checked>
                    <label class="custom-control-label" for="customRadio1">W budynku jest winda</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" id="customRadio2" name="hasElevator" value="False" class="custom-control-input">
                    <label class="custom-control-label" for="customRadio2">W budynku nie ma windy</label>
                </div>
                <br/>
                <div class="custom-control custom-radio">
                    <input type="radio" id="customRadio3" name="smokingAllowed" value="True"
                           class="custom-control-input" checked>
                    <label class="custom-control-label" for="customRadio3">Palenie dozwolone</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" id="customRadio4" name="smokingAllowed" value="False"
                           class="custom-control-input">
                    <label class="custom-control-label" for="customRadio4">Palenie niedozwolone</label>
                </div>
                <br/>
                <div class="custom-control custom-radio">
                    <input type="radio" id="customRadio5" name="animalAllowed" value="True" class="custom-control-input"
                           checked>
                    <label class="custom-control-label" for="customRadio5">Zwierzęta dozwolone</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" id="customRadio6" name="animalAllowed" value="False"
                           class="custom-control-input">
                    <label class="custom-control-label" for="customRadio6">Zwierzęta nie dozwolone</label>
                </div>
                <br/>
                <div class="custom-control custom-radio">
                    <input type="radio" id="customRadio7" name="onlyLongTerm" value="True" class="custom-control-input"
                           checked>
                    <label class="custom-control-label" for="customRadio7">Tylko wynajem długoterminowy</label>
                </div>
                <div class="custom-control custom-radio">
                    <input type="radio" id="customRadio8" name="onlyLongTerm" value="False"
                           class="custom-control-input">
                    <label class="custom-control-label" for="customRadio8">Możliwy wynajem krótkoterminowy</label>
                </div>
            </div>
        </div>


        <div class="form-row">
            <div class="col-md-4">
                <label>Cena</label>
                <div class="input-group input-group-sm mb-2">
                    <input type="number" name="price" placeholder="Cena" min="0" step="0.01"
                           class="form-control form-control-sm" required oninvalid="this.setCustomValidity('Pole nie może być puste')" oninput="setCustomValidity('')">
                    <div class="input-group-prepend input-group-sm">
                        <div class="input-group-text">zł</div>
                    </div>
                </div>
            </div>
            <div class="form-group col-md-4">
                <label>Imię i Nazwisko</label>
                <input type="text" name="author" placeholder="Imię i Nazwisko" class="form-control form-control-sm" required oninvalid="this.setCustomValidity('Pole nie może być puste')" oninput="setCustomValidity('')">
            </div>
            <div class="form-group col-md-4">
                <label>Numer telefonu</label>
                <input type="number" name="phoneNumber" placeholder="Numer telefonu" class="form-control form-control-sm" min="0" required oninvalid="this.setCustomValidity('Pole nie może być puste')" oninput="setCustomValidity('')">
            </div>
            <div class="col-md-12">
                <textarea name="description" placeholder="Opis" cols="50" rows="10" class="form-control" required oninvalid="this.setCustomValidity('Pole nie może być puste')" oninput="setCustomValidity('')"></textarea>
            </div>
        </div>
        <br>

        <input type="file" name="image" id="file" multiple="" style=" width: 0.1px;weight: 0.1px;opacity: 0;overflow: hidden;position: absolute;z-index: -1;" required/>
        <label class="btn btn-primary" for="file">Dodaj zdjęcia</label><br><br>


        <button class="btn btn-primary" type="submit" name="save">Dodaj ogłoszenie</button>
        <button class="btn btn-primary" type="reset" name="reset">Wyczyść dane</button>
        <br>
        <br>

    </form>
</div>





















