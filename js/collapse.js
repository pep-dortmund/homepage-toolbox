const elem = "h3";
const until_add = "h2";
$(document).ready(() => {
    // Insert the overall accordion
    // Don't insert it on the second thought, this would result in jumping with large sections....
    // $(elem).nextAll().addBack().wrapAll('<div class="accordion" id="accordion"></div>');
    $(elem).each(function (index) {
        // add the whole card diff
        $(this).nextUntil(elem + "," + until_add).add(this).wrapAll("<div class='card'></div>");
        // mark what should be collapsed
        $(this).filter(".collapses").nextUntil(elem + "," + until_add).wrapAll("<div id='collapse" + index.toString() + "' class='collapse' aria-labelledby='heading" + index.toString() + "' data-parent='#accordion'></div>");
    });
    // add the header, which than can be clicked to collapse
    $(elem).wrap(function (index) {
        return "<div class='card-header' id='" + index.toString() + "' class='btn' type='button' data-toggle='collapse' data-target='#collapse" + index.toString() + "' aria-expanded='true' aria-controls='collapse" + index.toString() + "' ></div>";
    });
    $(elem).prepend(function (index) {
        return (index + 1).toString() + ". ";
    });
    // make the right cursor
    $(".card-header").css("cursor", "pointer");
    // some spacing needed...
    $(until_add).css("padding-top", "1em");
});
