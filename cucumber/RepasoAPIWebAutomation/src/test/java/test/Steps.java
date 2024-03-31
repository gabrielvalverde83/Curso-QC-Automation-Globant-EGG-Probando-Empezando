package test;

import io.cucumber.java.After;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import pages.EditPage;
import pages.HistoryPage;
import pages.SearchResultPage;
import pages.WikipediaPage;
import utils.TestDriver;

public class Steps {

    private final String URLSWAPI = "https://swapi.dev/api";
    private Response response;
    private String value;
    private WikipediaPage wikipediaPage;
    private SearchResultPage searchResultPage;
    private EditPage editPage;
    private HistoryPage historyPage;

    @Given("a random data movie from swapi")
    public void a_random_data_movie_from_swapi() {
        int randomFilm = (int)(Math.random() * 6) + 1;
        this.response = RestAssured.given().get(this.URLSWAPI + "/films/" + randomFilm);
    }

    @When("get the name of the movie")
    public void get_the_name_of_the_movie() {
        this.value = this.response.jsonPath().getString("title");
    }


    @When("search for the movie in wikipedia page")
    public void search_for_the_movie_in_wikipedia_page() {
        this.wikipediaPage = new WikipediaPage(new TestDriver().getDriver());
        this.wikipediaPage.clickSearchLanguageButton();
        this.wikipediaPage.clickOptionEn();
        this.wikipediaPage.searchValueWikipediaPage(this.value);
        this.searchResultPage = this.wikipediaPage.clickSearchButton();
    }

    @When("search for the character in wikipedia page")
    public void search_for_the_character_in_wikipedia_page() {
        this.wikipediaPage = new WikipediaPage(new TestDriver().getDriver());
        this.wikipediaPage.clickSearchLanguageButton();
        this.wikipediaPage.clickOptionEn();
        this.wikipediaPage.searchValueWikipediaPage(this.value);
        this.searchResultPage = this.wikipediaPage.clickSearchButton();
    }

    @When("click en edit link")
    public void click_en_edit_link() {
        this.editPage = this.searchResultPage.clickEditLink();
    }

    @When("click en history link")
    public void click_en_history_link() {
        this.historyPage = this.searchResultPage.clickHistoryLink();
    }

    @Then("the edit movie page is displayed correctly")
    public void the_edit_movie_page_is_displayed_correctly() {
        String title = this.editPage.getTextPageTitle();
        if (this.value.equals("A New Hope")) {
            if (title.contains("Star Wars (film)")) {
                System.out.println("Test pass - title article page contains title of movie");
            } else {
                System.out.println("Test fail - title article page doesn't contain the title of movie");
            }
        } else {
            if (title.contains(this.value)) {
                System.out.println("Test pass - title article page contains title of movie");
            } else {
                System.out.println("Test fail - title article page doesn't contain the title of movie");
            }
        }
        if (title.contains("Edit")) {
            System.out.println("Test pass - title article page contains 'edit' word");
        } else {
            System.out.println("Test fail - title article page doesn't contain 'edit' word");
        }
    }

    @Then("the history movie page is displayed correctly")
    public void the_history_movie_page_is_displayed_correctly() {
        String title = this.historyPage.getTextPageTitle();

        if (this.value.equals("A New Hope")) {
            if (title.contains("Star Wars (film)")) {
                System.out.println("Test pass - title article page contains title of movie");
            } else {
                System.out.println("Test fail - title article page doesn't contain the title of movie");
            }
        } else {
            if (title.contains(this.value)) {
                System.out.println("Test pass - title article page contains title of movie");
            } else {
                System.out.println("Test fail - title article page doesn't contain the title of movie");
            }
        }
        if (title.contains("history")) {
            System.out.println("Test pass - title article page contains 'history' word");
        } else {
            System.out.println("Test fail - title article page doesn't contain 'history' word");
        }
    }

    @After
    public void close() {
        this.wikipediaPage.close();
    }

    @Given("a data character from swapi with value {int}")
    public void a_data_character_from_swapi_with_value(Integer idCharacter) {
        this.response = RestAssured.given().get(this.URLSWAPI + "/people/" + idCharacter);
    }

    @When("get the name of the character")
    public void get_the_name_of_the_character() {
        this.value = this.response.jsonPath().getString("name");
    }


    @Then("the character page is displayed correctly")
    public void the_character_page_is_displayed_correctly() {
        String title = this.searchResultPage.getTextPageTitle();
        if (title.contains(this.value)) {
            System.out.println("Test pass - title article page contains the name of the character");
        } else {
            System.out.println("Test fail - title article page doesn't contain the name of the character");
        }
    }
}
