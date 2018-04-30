# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# let isLoading = false;
# const yHandler = () => {
#   const wrap = document.getElementById('wrap');
#   // const contentHeight = wrap.offsetHeight;//1000
#   // const yOffset = window.pageYOffset;//882
#   // const y = yOffset + window.innerHeight;//882+803=1685

#   const innerHeight = window.innerHeight;
#   const scrollHeight = document.scrollingElement.scrollHeight;
#   const scrollTop = document.scrollingElement.scrollTop;
#   const limit = scrollHeight - innerHeight - 1;

#   if (scrollTop > limit && !isLoading) {
#     isLoading = true;
    
#     const xhttp = new XMLHttpRequest();
#     xhttp.onreadystatechange = function() {
#       console.log(`RESPONSE 1 ============================`)
#       if (this.readyState == 4 && this.status == 200) {     
#         console.log(`RESPONSE 2 ============================`)
#         console.log(this.responseText);  
#         wrap.innerHTML += `<div class=\"new-data\">${this.responseText}</div>`;
#       }
#     }
#     xhttp.open("GET", "/top_stories/show", true);
#     xhttp.send();
#     isLoading = false;
#   }
#   // const wrap = document.getElementById('wrap');
#   // const contentHeight = wrap.offsetHeight;//1000
#   // const yOffset = window.pageYOffset;//882
#   // const y = yOffset + window.innerHeight;//882+803=1685
#   // if (y >= contentHeight) {
#   //   const xhttp = new XMLHttpRequest();
#   //   xhttp.onreadystatechange = () => {
#   //     if (this.readyState === 4 && this.status === 200) {
        
#   //       wrap.innerHTML += `<div class=\"new-data\">${this.responseText}</div>`;
#   //     }
#   //   }
#   //   xhttp.open("GET", "/top_stories/index", true);
#   //   xhttp.send();

#   // }
# }

# window.onscroll = yHandler;