let isLoading = false;
const yHandler = () => {
  const wrap = document.getElementById('wrap');
  const innerHeight = window.innerHeight;
  const scrollHeight = document.scrollingElement.scrollHeight;
  const scrollTop = document.scrollingElement.scrollTop;
  const limit = scrollHeight - innerHeight - 1;
  const attr_data = wrap.getAttribute("data");
  let url = null;

  if (attr_data === "/top_stories/show") {
    url = "/top_stories/show";
  } else if (attr_data === "/newest/show") {
    url = "/newest/show";
  }

  if (scrollTop > limit && !isLoading) {
    isLoading = true;

    const xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
      if (this.readyState == 4 && this.status == 200) {
        const newStories = JSON.parse(this.responseText);
        newStories.map((story, index) => {
          wrap.innerHTML +=
            `<div class="story">
              <div class="index">
                ${story.index}.
                <a href="https://news.ycombinator.com/item?id=<%= id %>"><img id="gray-arrow" src="/gray_triangle.png" /></a>
              </div>
              <div class="text">
                <p class="title">
                  <a href=${story.url}>${story.title}</a>&nbsp;</a>
                  <span class="domain">${story.domain}</span
                ></p>
                <ul>
                  <li>
                    ${story.score} points by 
                    <a href="https://news.ycombinator.com/user?id=${story.by}">${story.by}</a> 
                    <a href="https://news.ycombinator.com/item?id=${story.id}">${story.get_time_string}</a>
                  </li>
                  <li>
                    hide
                  </li>
                  <li>
                    ${story.get_total_comments}
                  </li>
                </ul>
              </div>
            </div>`
        });
      }
    }
    xhttp.open("GET", url, true);
    xhttp.send();
    isLoading = false;
  }
}

window.onscroll = yHandler;