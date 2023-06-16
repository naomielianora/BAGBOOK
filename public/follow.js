function followUser(userId) {
    const followButton = document.getElementById(`followButton-${userId}`);
  
    // Create an XMLHttpRequest object
    const xhr = new XMLHttpRequest();
  
    // Configure the request
    xhr.open('POST', '/follow/' + userId, true);
  
    // Set the callback function to handle the response
    xhr.onload = function () {
      if (xhr.status === 200) {
        const response = JSON.parse(xhr.responseText);
  
        // Check the response data
        if (response.success) {
          // Toggle the button appearance and text
          const isFollowed = followButton.classList.contains('followed_button');
          followButton.classList.toggle('not_followed_button', isFollowed);
          followButton.classList.toggle('followed_button', !isFollowed);
          followButton.textContent = isFollowed ? 'Follow' : 'Following';
        } else {
          console.error('Failed to follow/unfollow user:', response.error);
        }
      } else {
        console.error('Failed to follow/unfollow user:', xhr.status);
      }
    };
  
    // Send the request
    xhr.send();
  }
  
  // Set the initial class and text based on whether the user is followed or not
  function setInitialButtonState(userId, isFollowed) {
    const followButton = document.getElementById(`followButton-${userId}`);
    if (isFollowed) {
      followButton.classList.add('followed_button');
      followButton.textContent = 'Following';
    } else {
      followButton.classList.add('not_followed_button');
      followButton.textContent = 'Follow';
    }
  }

// Function to redirect to the user's profile page
function redirectToProfile(other_userId) {
  window.location.href = `/other_user/${other_userId}`;
}



  