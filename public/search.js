function followUser(userId) {
    const followButton = document.getElementById(`followButton-${userId}`);
  
    const xhr = new XMLHttpRequest();
    xhr.open('POST', '/follow/' + userId, true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhr.onload = function () {
      if (xhr.status === 200) {
        const response = JSON.parse(xhr.responseText);
        if (response.success) {
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
    xhr.send(`userId=${userId}`);
  }
  