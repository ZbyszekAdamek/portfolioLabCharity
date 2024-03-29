<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<section class="form--steps">
  <div class="form--steps-instructions">
    <div class="form--steps-container">
      <h3>Ważne!</h3>
      <p data-step="1" class="active">
        Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
        wiedzieć komu najlepiej je przekazać.
      </p>
      <p data-step="2">
        Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
        wiedzieć komu najlepiej je przekazać.
      </p>
      <p data-step="3">
        Wybierz jedną, do
        której trafi Twoja przesyłka.
      </p>
      <p data-step="4">Podaj adres oraz termin odbioru rzeczy.</p>
    </div>
  </div>

  <div class="form--steps-container">
    <div class="form--steps-counter">Krok <span>1</span>/4</div>

    <form method="post" modelattribute="donation">
      <!-- STEP 1: class .active is switching steps -->
      <div data-step="1" class="active">
        <h3>Zaznacz co chcesz oddać:</h3>
        <c:forEach items="${categories}" var="category">
          <div class="form-group form-group--checkbox">
            <label>
              <input id="categoriesTypes" type="checkbox" name="categories" value="${category.id}"/>
              <span class="checkbox"></span>
              <span class="description">${category.name}</span>
            </label>
          </div>
        </c:forEach>

        <div class="form-group form-group--buttons">
          <button type="button" class="btn next-step">Dalej</button>
        </div>
      </div>

      <!-- STEP 2 -->
      <div data-step="2">
        <h3>Podaj liczbę 60l worków, w które spakowałeś/aś rzeczy:</h3>

        <div class="form-group form-group--inline">
          <label>
            Liczba 60l worków:
            <input id="quantityOfBags" type="number" name="quantity" step="1" min="1"/>
          </label>
        </div>

        <div class="form-group form-group--buttons">
          <button type="button" class="btn prev-step">Wstecz</button>
          <button type="button" class="btn next-step">Dalej</button>
        </div>
      </div>


      <!-- STEP 4 -->
      <div data-step="3">
        <h3>Wybierz organizacje, której chcesz pomóc:</h3>

        <c:forEach items="${institutions}" var="institution">
          <div class="form-group form-group--checkbox">
            <label>
              <input id="institutionNames" type="radio" name="institution" value="${institution.id}"/>
              <span class="checkbox radio"></span>
              <span class="description">
                  <div id="selected${institution.id}" class="title">Fundacja ${institution.name}</div>
                  <div class="subtitle">
                    Cel i misja: ${institution.description}
                  </div>
                </span>
            </label>
          </div>
        </c:forEach>

        <div class="form-group form-group--buttons">
          <button type="button" class="btn prev-step">Wstecz</button>
          <button type="button" class="btn next-step">Dalej</button>
        </div>
      </div>

      <!-- STEP 5 -->
      <div data-step="4">
        <h3>Podaj adres oraz termin odbioru rzecz przez kuriera:</h3>

        <div class="form-section form-section--columns">
          <div class="form-section--column">
            <h4>Adres odbioru</h4>
            <div class="form-group form-group--inline">
              <label> Ulica <input id="formStreet" type="text" name="street"/> </label>
            </div>

            <div class="form-group form-group--inline">
              <label> Miasto <input id="formCity" type="text" name="city"/> </label>
            </div>

            <div class="form-group form-group--inline">
              <label>
                Kod pocztowy <input id="formPostCode" type="text" name="zipCode"/>
              </label>
            </div>

            <div class="form-group form-group--inline">
              <label>
                Numer telefonu <input id="formPhone" type="phone" name="phone"/>
              </label>
            </div>
          </div>

          <div class="form-section--column">
            <h4>Termin odbioru</h4>
            <div class="form-group form-group--inline">
              <label> Data <input id="formDate" type="date" name="pickUpDate"/> </label>
            </div>

            <div class="form-group form-group--inline">
              <label> Godzina <input id="formTime" type="time" name="pickUpTime"/> </label>
            </div>

            <div class="form-group form-group--inline">
              <label>
                Uwagi dla kuriera
                <textarea id="formPickUpComment" name="pickUpComment" rows="5"></textarea>
              </label>
            </div>
          </div>
        </div>
        <div class="form-group form-group--buttons">
          <div class="form-group form-group--buttons">
            <button type="button" class="btn prev-step">Wstecz</button>
            <button type="submit" class="btn">Potwierdzam</button>
          </div>
        </div>
      </div>
    </form>
  </div>
</section>

<a href="/#start" class="btn btn--without-border">Start</a>
<a href="/form" class="btn btn--without-border">Oddaj dar</a>
<a href="/#zaloz" class="btn btn--without-border">O co chodzi?</a>
<a href="/#o-nas" class="btn btn--without-border">O nas</a><
<a href="/#fundations" class="btn btn--without-border">Fundacje i organizacje</a>
<a href="/contact#contact" class="btn btn--without-border">Kontakt</a>

<%@include file="footer.jsp" %>

<script src="../../resources/js/app.js"></script>
<script src="../../resources/js/form.js" type="text/javascript"></script>
</body>