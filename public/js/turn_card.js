document.addEventListener('DOMContentLoaded', function() {
    document.getElementById("concept").addEventListener("click", turn_card);

    function turn_card() {
        document.getElementById("concept_front").classList.toggle("hide");
        document.getElementById("concept_back").classList.toggle("hide");
    }
})

