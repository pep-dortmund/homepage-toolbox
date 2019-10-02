window.addEventListener("load", () => {
    let headers = document.getElementsByTagName("h3");
    for (let header of headers) {
        header.style.background = "black";
        header.toggleAttribute("active");
        toggle_deflation_till_next(header);
        header.addEventListener("click", () => {
            toggle_deflation_till_next(header);
        });
    }
});
function toggle_deflation_till_next(header) {
    let elem = header.nextElementSibling;
    if (header.hasAttribute("active")) {
        while (elem != null && elem.tagName != header.tagName) {
            elem.style.display = "none";
            elem = elem.nextElementSibling;
        }
        header.toggleAttribute("active");
    }
    else {
        while (elem != null && elem.tagName != header.tagName) {
            elem.style.display = "block";
            elem = elem.nextElementSibling;
        }
        header.toggleAttribute("active");
    }
}
