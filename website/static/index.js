

function deleteNote(noteId) {
  fetch(`/delete-note/${noteId}`, {
    method: "DELETE",
  })
    .then((_res) => {
      window.location.href = "/";
    })
    .catch((error) => {
      console.log(error);
    });
}