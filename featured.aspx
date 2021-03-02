<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="featured.aspx.cs" Inherits="School_Site_Grade_10.featured" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Featured Movie</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <svg id="stars" style="display: none;" version="1.1">
      <symbol id="stars-full-star" viewBox="0 0 102 18">
        <path
          d="M9.5 14.25l-5.584 2.936 1.066-6.218L.465 6.564l6.243-.907L9.5 0l2.792 5.657 6.243.907-4.517 4.404 1.066 6.218"
        />
      </symbol>

      <symbol id="stars-half-star" viewBox="0 0 102 18">
        <path
          d="M9.5 14.25l-5.584 2.936 1.066-6.218L.465 6.564l6.243-.907L9.5 0l2.792"
          fill="#e9ba26"
        />
      </symbol>

      <symbol id="stars-all-star" viewBox="0 0 102 18">
        <use xlink:href="#stars-full-star" />
        <use xlink:href="#stars-full-star" transform="translate(21)" />
        <use xlink:href="#stars-full-star" transform="translate(42)" />
        <use xlink:href="#stars-full-star" transform="translate(63)" />
        <use xlink:href="#stars-full-star" transform="translate(84)" />
      </symbol>

      <symbol id="stars-0-0-star" viewBox="0 0 102 18">
        <use xlink:href="#stars-all-star" fill="#9b9b9b" />
      </symbol>

      <symbol id="stars-0-5-star" viewBox="0 0 102 18">
        <use xlink:href="#stars-0-0-star" />
        <use xlink:href="#stars-half-star" />
      </symbol>

      <symbol id="stars-1-0-star" viewBox="0 0 102 18">
        <use xlink:href="#stars-0-0-star" />
        <use xlink:href="#stars-full-star" fill="#e9ba26" />
      </symbol>

      <symbol id="stars-1-5-star" viewBox="0 0 102 18">
        <use xlink:href="#stars-1-0-star" />
        <use xlink:href="#stars-half-star" transform="translate(21)" />
      </symbol>

      <symbol id="stars-2-0-star" viewBox="0 0 102 18">
        <use xlink:href="#stars-1-0-star" />
        <use
          xlink:href="#stars-full-star"
          fill="#e9ba26"
          transform="translate(21)"
        />
      </symbol>

      <symbol id="stars-2-5-star" viewBox="0 0 102 18">
        <use xlink:href="#stars-2-0-star" />
        <use xlink:href="#stars-half-star" transform="translate(42)" />
      </symbol>

      <symbol id="stars-3-0-star" viewBox="0 0 102 18">
        <use xlink:href="#stars-2-0-star" />
        <use
          xlink:href="#stars-full-star"
          fill="#e9ba26"
          transform="translate(42)"
        />
      </symbol>

      <symbol id="stars-3-5-star" viewBox="0 0 102 18">
        <use xlink:href="#stars-3-0-star" />
        <use xlink:href="#stars-half-star" transform="translate(63)" />
      </symbol>

      <symbol id="stars-4-0-star" viewBox="0 0 102 18">
        <use xlink:href="#stars-3-0-star" />
        <use
          xlink:href="#stars-full-star"
          fill="#e9ba26"
          transform="translate(63)"
        />
      </symbol>

      <symbol id="stars-4-5-star" viewBox="0 0 102 18">
        <use xlink:href="#stars-4-0-star" />
        <use xlink:href="#stars-half-star" transform="translate(84)" />
      </symbol>

      <symbol id="stars-5-0-star" viewBox="0 0 102 18">
        <use xlink:href="#stars-all-star" fill="#e9ba26" />
      </symbol>
    </svg>

    <div id="animation-div"></div>
    <div id="cover-div"></div>

    <div class="curved">
      <h1>Featured Movie</h1>
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 160">
        <path
          fill="#1f2833"
          fill-opacity="1"
          d="M0,64L48,85.3C96,107,192,149,288,144C384,139,480,85,576,64C672,43,768,53,864,80C960,107,1056,149,1152,154.7C1248,160,1344,128,1392,112L1440,96L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"
        ></path>
      </svg>
    </div>

    <div class="featured-left">
      <iframe
        width="560"
        height="315"
        src="https://www.youtube-nocookie.com/embed/TcMBFSGVi1c"
        frameborder="1"
        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen
      ></iframe>

      <h2 style="margin-top: 5%;">Where to Watch</h2>
      <p class="featured-text">
        <a
          href="https://www.disneyplus.com/video/aa2c93d5-6e09-4e2b-84ae-9f0773cc0238"
          target="_blank"
          >Disney+</a
        >
        | Subscription
      </p>
      <p class="featured-text">
        <a
          href="https://play.google.com/store/movies/details?id=ePpJDKfRAyM"
          target="_blank"
          >Google Play+</a
        >
        | $2.99
      </p>
      <p class="featured-text">
        <a href="https://www.youtube.com/watch?v=ePpJDKfRAyM" target="_blank"
          >Youtube</a
        >
        | $2.99
      </p>
      <p class="featured-text">
        <a
          href="https://www.vudu.com/content/movies/details/Avengers-Endgame/1100922"
          target="_blank"
          >Vudu</a
        >
        | $3.99
      </p>
    </div>

    <div class="featured-right">
      <h1><i>Avengers Endgame</i></h1>
      <p class="featured-text" style="margin-top: 1rem; text-align: center;">
        Adrift in space with no food or water, Tony Stark sends a message to
        Pepper Potts as his oxygen supply starts to dwindle. Meanwhile, the
        remaining Avengers -- Thor, Black Widow, Captain America and Bruce
        Banner -- must figure out a way to bring back their vanquished allies
        for an epic showdown with Thanos -- the evil demigod who decimated the
        planet and the universe.
      </p>

      <div class="reviews">
        <h1><i>Reviews</i></h1>

        <table class="reviews-table">
          <tr>
            <th>
              <h2>Critic Reviews</h2>
              <svg class="icon">
                <use xlink:href="#stars-4-0-star" />
              </svg>
            </th>

            <th>
              <h2>Audience Reviews</h2>
              <svg class="icon">
                <use xlink:href="#stars-4-5-star" />
              </svg>
            </th>
          </tr>

          <tr>
            <td>
              <p>
                The only complaint about Avengers: Endgame is that it raises the
                bar so high that there may well never be a superhero movie to
                match it. It represents a staggering achievement on several
                fronts, none perhaps quite as startling as its absolute mastery
                of narrative. The job for Kevin Feige, the presiding genius at
                Marvel, fraternal directors Anthony and Joe Russo, and writers
                Christopher Markus and Stephen McFeely, was simple.
              </p>
              <svg class="icon">
                <use xlink:href="#stars-5-0-star" />
              </svg>
            </td>

            <td>
              <p>
                There isn't too much in the way of suspense or surprises when it
                comes to the story, but there are some shocking moments and
                funny lines in this epic finale. Again, like many of the best
                Marvel films, the holes and flaws are covered up with humor and
                fan service, making everything okay. That being said, I did
                prefer Infinity War to this film, which really misses the leads
                of the other Marvel franchises that were "snapped" out. Overall,
                however, there are only a few ways you can wrap up the main
                story of the MCU, and this was a solid direction.
              </p>
              <svg class="icon">
                <use xlink:href="#stars-4-0-star" />
              </svg>
            </td>
          </tr>

          <tr>
            <td>
              <p>
                As expected, the film is carried by the original six Avengers,
                but it does a remarkable job of bringing virtually every
                memorable character from all 22 movies back onto the screen. It
                is a staggering reminder of past and present pleasures.
              </p>
              <svg class="icon">
                <use xlink:href="#stars-4-0-star" />
              </svg>
            </td>

            <td>
              <p>
                It all comes to an end in the epic superhero film Avengers:
                Endgame. In the wake of Thanos' mass genocide the Avengers come
                up with a plan to get everyone back. Once again the writers have
                done an extraordinary job at integrating and interweaving the
                various Marvel properties. And the special effects are just
                amazing; especially during the final battle sequence, capturing
                the massive scope of the battle and the multiple fights going on
                between the characters. Each superhero gets their moment to
                shine, and a number of greatest hits moments from the MCU are
                revisited, Back to the Future Part II style. Still, there are
                some pacing issues and more than a few plot contrivances. Yet
                despite whatever problems it has, Avengers: Endgames is an
                incredible achievement.
              </p>
              <svg class="icon">
                <use xlink:href="#stars-4-0-star" />
              </svg>
            </td>
          </tr>

          <tr>
            <td>
              <p>
                The MCU will go on and on, but this chapter - and the American
                pragmatism vs. American ideals bromance that drove it - have
                well and truly come to their "Excelsior! Nuff said!" moment.
              </p>
              <svg class="icon">
                <use xlink:href="#stars-2-0-star" />
              </svg>
            </td>

            <td>
              <p>
                Hey, so, just some really quick thoughts I wanna get down,
                'cause it's after 1 o'clock in the morning, and I wanna get some
                sleep so I can wake up well rested to see Endgame again. Putting
                it out there right from the get-go, Avengers: Endgame is my
                favourite MCU movie. It's my favourite movie of the year too,
                but I've only seen like ten or so 2019 releases, and this is the
                22nd Marvel Cinematic Universe film, so that seems far and away
                the bigger deal. I can't say it's perfect, there's some
                conflicting stuff within its own runtime that really doesn't
                seem to gel (though a re-watch may prove me wrong on that), and
                it's not like every moment was the
                no-holds-barred-zero-exception best version of that moment from
                start to end. But God I loved this thing. I will say this
                though, the reason that I loved it, is this thing is fan service
                galore. If you do not care for the franchise's 21 movies
                preceding this point, then Endgame is not the movie to turn you
                around on that. That may come in a future installment, but this
                one is a culmination. It's the end of Infinity War but also
                Phase 3, but also a wrap-up and genuine ode to/send off for
                everything that Marvel has done over the past 11 years. That to
                me was incredible, and I am eternally greatful, but I cannot
                imagine it working for people who have no vested interest in
                these characters. To me though? My first 9 out of 10 rating in
                three years.
              </p>
              <svg class="icon">
                <use xlink:href="#stars-4-5-star" />
              </svg>
            </td>
          </tr>
        </table>

      </div>
    </div>
</asp:Content>
