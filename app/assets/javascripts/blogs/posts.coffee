$(document).ready ->
  $('#new_blogs_comment').on("ajax:success", (e, data, status, xhr) ->
    comment_json = JSON.parse(xhr.responseText)
    hm = "<div class='col-lg-10 col-lg-offset-1 blog-comment'>
    <h5 class='email'><strong>#{comment_json[1].email}  </strong></h5>

    <h6>#{comment_json[0].created_at}</h6>
    <h5 class='louceng'>＃#{comment_json[0].id}</h5>

    <div>#{comment_json[0].comment_content}</div>
        </div>
        "
    $('.blog-comments').append hm
    $('#blogs_comment_comment_content').val('')
  ).on("ajax:error", (e, data, status, xhr) ->
    $('#new_blogs_comment').append "<p>评论内容提交失败！</p>"
  )